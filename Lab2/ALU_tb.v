module ALU_tb();
    //...
    reg     [31:0]      src0;   
    reg     [31:0]      src1;   
    reg     [4:0]       sel;
    wire    [31:0]      res;

    ALU alu (
        .alu_src0(src0),
        .alu_src1(src1),
        .alu_op(sel),
        .alu_res(res)
    );
    initial begin
        src0=32'hffffffff; src1=32'h7ffffffe; sel=5'H0;
        repeat(32) begin
            sel = sel + 1;
            #20;
        end
    end
    //...
endmodule