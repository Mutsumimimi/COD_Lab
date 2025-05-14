module SEGCTRL (
    input                   [ 0 : 0 ]           rf_we_ex,   // 写使能
    input                   [ 1 : 0 ]           rf_wd_sel_ex,   // 寄存器堆写数据的选择    
    input                   [ 4 : 0 ]           rf_wa_ex,   // 地址

    input                   [ 4 : 0 ]           rf_ra0_id,
    input                   [ 4 : 0 ]           rf_ra1_id,
    input                   [ 1 : 0 ]           npc_sel_ex,

    output     reg          [ 0 : 0 ]           stall_pc,
    output     reg          [ 0 : 0 ]           stall_if_id,
    output     reg          [ 0 : 0 ]           flush_if_id,
    output     reg          [ 0 : 0 ]           flush_id_ex
);
    /*
    为检测何时发生了此冒险，我们采用如下的判断流程：
        EX 段的指令为读取内存的指令；
        EX 段指令写入寄存器地址非零；
        ID 段某读寄存器地址等于 EX 段的写地址。

    若 Load-Use 冒险发生，我们就必须插入一个气泡，也即假装两条指令间有一个 nop 指令。

    为了达到插入气泡的效果，原本的下一条指令，ID 阶段的指令将被忽略，也即在下一时钟上升沿
    清空 ID/EX 段间寄存器；而还未执行的 IF 前（PC）、IF/ID 段间寄存器需要停驻一个周期，
    让气泡在它们之前通过。

    IF   |   ID  |    EX     |   MEM     WB
    。   |   .   |    ld指令 |
    。   |   .   |    ×      |  ld指令

    */
    wire [0:0]  Loaduse =  (rf_wd_sel_ex == 2'b10) && rf_we_ex && (rf_wa_ex != 5'b0) &&
                          (rf_ra0_id == rf_wa_ex || rf_ra1_id == rf_wa_ex);

    wire [0:0]  Bruse = npc_sel_ex == 2'b01 || npc_sel_ex == 2'b10;

    always @(*) begin
        if(Loaduse) begin
            stall_pc = 1'b1;
        end else
            stall_pc = 1'b0;    // 包括BranchUse
    end

    always @(*) begin
        if(Loaduse) begin
            stall_if_id = 1'b1;
        end else
            stall_if_id = 1'b0;
    end

    always @(*) begin
        if(Bruse) begin
            flush_if_id = 1'b1;
        end else
            flush_if_id = 1'b0;
    end
    /*
    在 EX 阶段检测出跳转后，按照加 4 的错误地址读取到的
     IF/ID 段间寄存器与 ID/EX 段间寄存器都应清空。
    */
    
    always @(*) begin
        if(Loaduse | Bruse) begin
            flush_id_ex = 1'b1;
        end else 
            flush_id_ex = 1'b0;
    end
endmodule