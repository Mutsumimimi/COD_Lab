`define     BEQ         4'B1000
`define     BNE         4'B1001
`define     BLT         4'B1010
`define     BGE         4'B1011
`define     BLTU        4'B1100
`define     BGEU        4'B1101
`define     JALR        4'B1110
`define     JAL         4'B1111
module BRANCH(
    input                   [ 3 : 0]            br_type,

    input                   [31 : 0]            br_src0,
    input                   [31 : 0]            br_src1,

    output      reg         [ 1 : 0]            npc_sel
);
    always @(*) begin
        case(br_type)
            `BEQ : if(br_src0 == br_src1) npc_sel = 2'B01; else npc_sel = 2'B00;

            `BNE : if(br_src0 != br_src1) npc_sel = 2'B01; else npc_sel = 2'B00;

            `BLT : if($signed(br_src0) < $signed(br_src1)) npc_sel = 2'B01; else npc_sel = 2'B00;

            `BGE : if($signed(br_src0) >= $signed(br_src1)) npc_sel = 2'B01; else npc_sel = 2'B00;

            `BLTU: if(br_src0 < br_src1) npc_sel = 2'B01; else npc_sel = 2'B00;

            `BGEU: if(br_src0 >= br_src1) npc_sel = 2'B01; else npc_sel = 2'B00;

            `JALR: npc_sel = 2'B10;

            `JAL : npc_sel = 2'B01;
        
            default: npc_sel = 2'B00;   //其他指令默认都是pc_add4
        endcase
    end
endmodule