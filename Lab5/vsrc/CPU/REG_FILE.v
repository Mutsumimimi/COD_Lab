module REG_FILE (
    input                   [ 0 : 0]        clk,

    input                   [ 4 : 0]        rf_ra0,
    input                   [ 4 : 0]        rf_ra1, 
    input                   [ 4 : 0]        dbg_reg_ra,  
    input                   [ 4 : 0]        rf_wa,
    input                   [ 0 : 0]        rf_we,
    input                   [31 : 0]        rf_wd,

    output                  [31 : 0]        rf_rd0,
    output                  [31 : 0]        rf_rd1,
    output                  [31 : 0]        dbg_reg_rd
);

    reg [31 : 0] reg_file [0 : 31];

    // 用于初始化寄存器
    integer i;
    initial begin
        for (i = 0; i < 32; i = i + 1)
            reg_file[i] = 0;
    end
    // 写寄存器
    always @(posedge clk) begin
        if(rf_we == 1'b1)  begin
            if(rf_wa == 5'b0)
                reg_file[rf_wa] <= 32'b0;
            else
                reg_file[rf_wa] <= rf_wd;
        end
    end
    // 读寄存器
    // 写优先
    assign rf_rd0 = (rf_we == 1'b1 && rf_wa == rf_ra0) ? ((rf_wa == 5'b0) ? 32'b0 : rf_wd) : ((rf_ra0 == 5'b0) ? 32'b0 : reg_file[rf_ra0]);
    
    assign rf_rd1 = (rf_we == 1'b1 && rf_wa == rf_ra1) ? ((rf_wa == 5'b0) ? 32'b0 : rf_wd) : ((rf_ra1 == 5'b0) ? 32'b0 : reg_file[rf_ra1]);
    
    // assign dbg_reg_rd = (rf_we == 1'b1 && rf_wa == dbg_reg_ra) ? ((rf_wa == 5'b0) ? 32'b0 : rf_wd) : ((dbg_reg_ra == 5'b0) ? 32'b0 : reg_file[dbg_reg_ra]);
    assign dbg_reg_rd = (dbg_reg_ra == 5'b0) ? 32'b0 : reg_file[dbg_reg_ra];
    //dbg端口不用写优先？？？

    
    /*
    if(rf_we == 1'b1 && rf_wa == rf_ra0)
        if(rf_wa == 5'b0)
            rf_rd0 = 32'b0;
        else
            rf_rd0 = rf_wd;
    else
        if(rf_ra0 == 5'b0)
            rf_rd0 = 32'b0;
        else
            rf_rd0 = reg_file[rf_ra0];
    */

endmodule