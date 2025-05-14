module FORWARD (
    input                   [ 0 : 0 ]           rf_we_mem,
    input                   [ 0 : 0 ]           rf_we_wb,
    
    input                   [ 4 : 0 ]           rf_wa_mem,
    input                   [ 4 : 0 ]           rf_wa_wb,

    input                   [31 : 0 ]           rf_wd_mem,
    input                   [31 : 0 ]           rf_wd_wb,
    
    input                   [ 4 : 0 ]           rf_ra0_ex,
    input                   [ 4 : 0 ]           rf_ra1_ex,

    output     reg          [ 0 : 0 ]           rf_rd0_fe,
    output     reg          [ 0 : 0 ]           rf_rd1_fe,

    output     reg          [31 : 0 ]           rf_rd0_fd,
    output     reg          [31 : 0 ]           rf_rd1_fd
    
);
    /*
    CPU前递模块
    */
    
    wire we_ok_mem = (rf_wa_mem != 5'b0) && rf_we_mem;
    wire we_ok_wb = (rf_wa_wb != 5'b0) && rf_we_wb;

    // wire [4:0]  wa = we_ok_mem ? rf_wa_mem : (we_ok_wb ? rf_wa_wb : 5'b0);

    /*
    addi x1, x0, 1      --wb        --mem
    addi x1, x1, 1      --mem       --ex
    addi x2, x1, 1      --ex        ----
    
    mem比wb优先级更高

    addi x1, x0, 1
    addi x2, x1, 1
    add  x3, x2, x1     

    x2: rf_ra0 == mem ; rf_ra1 == wb;

    */
    
    
    always @(*) begin
        if ((rf_ra0_ex == rf_wa_mem) && we_ok_mem) begin
            rf_rd0_fe = 1'b1;
            rf_rd0_fd = rf_wd_mem;
        end else if ((rf_ra0_ex == rf_wa_wb) && we_ok_wb) begin
            rf_rd0_fe = 1'b1;
            rf_rd0_fd = rf_wd_wb;
        end else begin
            rf_rd0_fe = 1'b0;
            rf_rd0_fd = 32'b0;
        end
    end

    always @(*) begin
        if ((rf_ra1_ex == rf_wa_mem) && we_ok_mem) begin
            rf_rd1_fe = 1'b1;
            rf_rd1_fd = rf_wd_mem;
        end else if ((rf_ra1_ex == rf_wa_wb) && we_ok_wb) begin
            rf_rd1_fe = 1'b1;
            rf_rd1_fd = rf_wd_wb;
        end else begin
            rf_rd1_fe = 1'b0;
            rf_rd1_fd = 32'b0;
        end
    end

endmodule