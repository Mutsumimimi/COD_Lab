`define     HALT_INST   32'H00100073
module CPU (
    input                   [ 0 : 0]            clk,
    input                   [ 0 : 0]            rst,

    input                   [ 0 : 0]            global_en,

/* ------------------------------ Memory (inst) ----------------------------- */
    output                  [31 : 0]            imem_raddr,
    input                   [31 : 0]            imem_rdata,

/* ------------------------------ Memory (data) ----------------------------- */
    input                   [31 : 0]            dmem_rdata,
    output                  [ 0 : 0]            dmem_we,
    output                  [31 : 0]            dmem_addr,
    output                  [31 : 0]            dmem_wdata,

/* ---------------------------------- Debug --------------------------------- */
    output                  [ 0 : 0]            commit,
    output                  [31 : 0]            commit_pc,
    output                  [31 : 0]            commit_inst,
    output                  [ 0 : 0]            commit_halt,
    output                  [ 0 : 0]            commit_reg_we,
    output                  [ 4 : 0]            commit_reg_wa,
    output                  [31 : 0]            commit_reg_wd,
    output                  [ 0 : 0]            commit_dmem_we,
    output                  [31 : 0]            commit_dmem_wa,
    output                  [31 : 0]            commit_dmem_wd,

    input                   [ 4 : 0]            debug_reg_ra,
    output                  [31 : 0]            debug_reg_rd
);
// ......
wire    [31: 0]     cur_pc; 
wire    [31: 0]     cur_npc;
wire    [31: 0]     cur_inst;
wire    [ 0: 0]     rf_we;
wire    [ 4: 0]     rf_wa;
wire    [31: 0]     rf_wd;
wire    [ 4: 0]     rf_ra0;
wire    [ 4: 0]     rf_ra1;
wire    [31: 0]     rf_rd0;
wire    [31: 0]     rf_rd1;
wire    [ 4: 0]     alu_op;
wire    [31: 0]     imm;
wire    [ 0: 0]     alu_src0_sel;
wire    [ 0: 0]     alu_src1_sel;
wire    [31: 0]     alu_src0;
wire    [31: 0]     alu_src1;
wire    [31: 0]     alu_res;

// assign cur_npc = imem_rdata;    // input    ???

assign imem_raddr = cur_pc;     // output
assign cur_inst = imem_rdata;
assign cur_npc = cur_pc + 32'd4;

PC my_pc (
    .clk    (clk        ),
    .rst    (rst        ),
    .en     (global_en  ),    // 当 global_en 为高电平时，PC 才会更新，CPU 才会执行指令。
    .npc    (cur_npc    ),
    .pc     (cur_pc     )
);

DECODE decode(
    .inst   (cur_inst),
    .alu_op (alu_op),
    .imm    (imm),
    .rf_ra0 (rf_ra0),
    .rf_ra1 (rf_ra1),
    .rf_wa  (rf_wa),
    .rf_we  (rf_we),
    .alu_src0_sel   (alu_src0_sel),
    .alu_src1_sel   (alu_src1_sel)
);

/* dmem_rdata 端口怎么连接？*/
/*dbg_reg_ra, dbg_reg_rd怎么连*/

REG_FILE my_reg_file(
    .clk    (clk),
    .rf_ra0 (rf_ra0),
    .rf_ra1 (rf_ra1),
    .dbg_reg_ra (debug_reg_ra),
    .rf_wa  (rf_wa),
    .rf_we  (rf_we),
    .rf_wd  (rf_wd),
    .rf_rd0 (rf_rd0),
    .rf_rd1 (rf_rd1),
    .dbg_reg_rd (debug_reg_rd)
);

MUX  # (
    .WIDTH  (32)
) MUX_0 (
    .src0   (cur_pc),
    .src1   (rf_rd0),
    .sel    (alu_src0_sel),
    .res    (alu_src0)
);

MUX  # (
    .WIDTH  (32)
) MUX_1 (
    .src0   (imm),
    .src1   (rf_rd1),
    .sel    (alu_src1_sel),
    .res    (alu_src1)
);

ALU alu(
    .alu_src0   (alu_src0),
    .alu_src1   (alu_src1),
    .alu_op     (alu_op),
    .alu_res    (alu_res)
);
assign rf_wd = alu_res;     // 回写

/*------------------------------Debug Module------------------------------*/
reg  [ 0 : 0]   commit_reg          ;
reg  [31 : 0]   commit_pc_reg       ;
reg  [31 : 0]   commit_inst_reg     ;
reg  [ 0 : 0]   commit_halt_reg     ;
reg  [ 0 : 0]   commit_reg_we_reg   ;
reg  [ 4 : 0]   commit_reg_wa_reg   ;
reg  [31 : 0]   commit_reg_wd_reg   ;
reg  [ 0 : 0]   commit_dmem_we_reg  ;
reg  [31 : 0]   commit_dmem_wa_reg  ;
reg  [31 : 0]   commit_dmem_wd_reg  ;

always @(posedge clk) begin
    if (rst) begin
        commit_reg          <= 1'H0;
        commit_pc_reg       <= 32'H0;
        commit_inst_reg     <= 32'H0;
        commit_halt_reg     <= 1'H0;
        commit_reg_we_reg   <= 1'H0;
        commit_reg_wa_reg   <= 5'H0;
        commit_reg_wd_reg   <= 32'H0;
        commit_dmem_we_reg  <= 1'H0;
        commit_dmem_wa_reg  <= 32'H0;
        commit_dmem_wd_reg  <= 32'H0;
    end
    else if (global_en) begin
        // !!!! 请注意根据自己的具体实现替换 <= 右侧的信号 !!!!
        commit_reg          <= 1'H1;                        // 不需要改动
        commit_pc_reg       <= cur_pc;                      // 需要为当前的 PC
        commit_inst_reg     <= cur_inst;                    // 需要为当前的指令
        commit_halt_reg     <= cur_inst == `HALT_INST;      // 注意！请根据指令集设置 HALT_INST！
        commit_reg_we_reg   <= rf_we;                       // 需要为当前的寄存器堆写使能
        commit_reg_wa_reg   <= rf_wa;                       // 需要为当前的寄存器堆写地址
        commit_reg_wd_reg   <= rf_wd;                       // 需要为当前的寄存器堆写数据
        commit_dmem_we_reg  <= 0;                           // 不需要改动
        commit_dmem_wa_reg  <= 0;                           // 不需要改动
        commit_dmem_wd_reg  <= 0;                           // 不需要改动
    end
end

assign commit               = commit_reg;
assign commit_pc            = commit_pc_reg;
assign commit_inst          = commit_inst_reg;
assign commit_halt          = commit_halt_reg;
assign commit_reg_we        = commit_reg_we_reg;
assign commit_reg_wa        = commit_reg_wa_reg;
assign commit_reg_wd        = commit_reg_wd_reg;
assign commit_dmem_we       = commit_dmem_we_reg;
assign commit_dmem_wa       = commit_dmem_wa_reg;
assign commit_dmem_wd       = commit_dmem_wd_reg;

endmodule