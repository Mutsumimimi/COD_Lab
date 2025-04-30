module Mem_op (
    input       [ 5 : 0]        a,
    input       [15 : 0]        d,
    input       [ 0 : 0]        clk,
    input       [ 0 : 0]        we,
    output      [15 : 0]        spo
);
dist_mem_gen_0 instance_name(
    .a(a),      // input wire [5 : 0] a
    .d(d),      // input wire [15 : 0] d
    .clk(clk),  // input wire clk
    .we(we),    // input wire we
    .spo(spo)  // output wire [15 : 0] spo
);

endmodule