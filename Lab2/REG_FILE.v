module REG_FILE (
    input                   [ 0 : 0]        clk,

    input                   [ 4 : 0]        rf_ra0,
    input                   [ 4 : 0]        rf_ra1,   
    input                   [ 4 : 0]        rf_wa,
    input                   [ 0 : 0]        rf_we,
    input                   [31 : 0]        rf_wd,

    output                  [31 : 0]        rf_rd0,
    output                  [31 : 0]        rf_rd1
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
    assign rf_rd0 = {32{(rf_ra0 == 5'b0)}} & 32'b0 | {32{(rf_ra0 != 5'b0)}} & reg_file[rf_ra0];
    assign rf_rd1 = {32{(rf_ra1 == 5'b0)}} & 32'b0 | {32{(rf_ra1 != 5'b0)}} & reg_file[rf_ra1];
    
endmodule