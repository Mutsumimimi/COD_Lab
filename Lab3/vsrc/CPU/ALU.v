`define ADD                 5'B00000    
`define SUB                 5'B00010   
`define SLT                 5'B00100
`define SLTU                5'B00101
`define AND                 5'B01001
`define OR                  5'B01010
`define XOR                 5'B01011
`define SLL                 5'B01110   
`define SRL                 5'B01111    
`define SRA                 5'B10000  
`define ADDi                5'B10001
`define SLLi                5'B10100
`define SRLi                5'B10101
`define SRAi                5'B10110
`define SLTi                5'B10111
`define SLTiu               5'B11000
`define ANDi                5'B11001
`define ORi                 5'B11010
`define XORi                5'B11011
`define LUI                 5'B11100
`define AUIPC               5'B11111

module ALU (
    input                   [31 : 0]            alu_src0,
    input                   [31 : 0]            alu_src1,
    input                   [ 4 : 0]            alu_op,

    output      reg         [31 : 0]            alu_res
);

    always @(*) begin
        case(alu_op)
            `ADD  :
                alu_res = alu_src0 + alu_src1;
            `SUB  :
                alu_res = alu_src0 - alu_src1;
            `SLT  :
                alu_res = {{31{1'b0}}, ($signed(alu_src0) < $signed(alu_src1))};
            `SLTU : 
                alu_res = {{31{1'b0}}, (alu_src0 < alu_src1)};
            `AND  :
                alu_res = alu_src0 & alu_src1;
            `OR   :
                alu_res = alu_src0 | alu_src1;
            `XOR  :
                alu_res = alu_src0 ^ alu_src1; 
            `SLL  :
                alu_res = alu_src0 << alu_src1[4:0];
            `SRL  :
                alu_res = alu_src0 >> alu_src1[4:0];
            `SRA  :
                alu_res = $signed($signed(alu_src0) >>> alu_src1[4:0]);
            `ADDi :
                alu_res = alu_src0 + alu_src1;
            `SLLi :
                alu_res = alu_src0 << alu_src1[4:0];
            `SRLi :
                alu_res = alu_src0 >> alu_src1[4:0];
            `SRAi :
                alu_res = $signed($signed(alu_src0) >>> alu_src1[4:0]);
            `SLTi :
                alu_res = {{31{1'b0}}, ($signed(alu_src0) < $signed(alu_src1))};
            `SLTiu :
                alu_res = {{31{1'b0}}, (alu_src0 < alu_src1)};
            `ANDi :
                alu_res = alu_src0 & alu_src1;
            `ORi :
                alu_res = alu_src0 | alu_src1;
            `XORi :
                alu_res = alu_src0 ^ alu_src1; 
            `LUI :
                alu_res = alu_src1 << 12; // {alu_src1[19:0], {12{1'b0}}};
            `AUIPC :
                alu_res = alu_src0 + (alu_src1 << 12);
            default :
                alu_res = 32'H0;
        endcase
    end
endmodule