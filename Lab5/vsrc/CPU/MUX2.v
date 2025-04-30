module MUX2 # (
    parameter               WIDTH                   = 32
)(
    input                   [WIDTH-1 : 0]           src0, src1, src2, src3,
    input                   [      1 : 0]           sel,

    output                  [WIDTH-1 : 0]           res
);
    // 用于寄存器堆的 write back
    assign res = sel[1] ? (sel[0] ? src3 : src2) : (sel[0] ? src1 : src0);

endmodule