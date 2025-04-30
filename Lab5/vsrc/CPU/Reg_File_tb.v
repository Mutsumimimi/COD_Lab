module RegFile_tb ();
    reg                 clk;
    reg     [ 4 : 0]    ra0, ra1, wa, dbg_ra;
    reg     [ 0 : 0]    we;
    reg     [31 : 0]    wd;
    wire    [31 : 0]    rd0;
    wire    [31 : 0]    rd1;
    wire    [31 : 0]    dbg_rd;

    REG_FILE regfile (
        .clk    (clk),
        .rf_ra0    (ra0),
        .rf_ra1    (ra1),
        .dbg_reg_ra(dbg_ra),
        .rf_wa     (wa),
        .rf_we     (we),
        .rf_wd     (wd),
        .rf_rd0    (rd0),
        .rf_rd1    (rd1),
        .dbg_reg_rd(dbg_rd)
    );

    initial begin
        clk = 0;
        ra0 = 5'H0; ra1 = 5'H0; wa = 5'H0; we = 1'H0; wd = 32'H0; dbg_ra = ra1;

        #12
        ra0 = 5'H0; ra1 = 5'H0; wa = 5'H3; we = 1'H1; wd = 32'H12345678;dbg_ra = ra0;

        #5
        ra0 = 5'H0; ra1 = 5'H0; wa = 5'H0; we = 1'H0; wd = 32'H0;dbg_ra = ra1;

        #5
        ra0 = 5'H3; ra1 = 5'H2; wa = 5'H2; we = 1'H1; wd = 32'H87654321;dbg_ra = ra0;

        #5
        ra0 = 5'H0; ra1 = 5'H0; wa = 5'H0; we = 1'H0; wd = 32'H0;dbg_ra = ra1;

        #5
        ra0 = 5'H3; ra1 = 5'H0; wa = 5'H0; we = 1'H1; wd = 32'H87654321;dbg_ra = ra0;

        #10
        $finish;
    end
    always #5 clk = ~clk;
endmodule