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

module DECODE (
    input                   [31 : 0]            inst,

    output                  [ 4 : 0]            alu_op,
    output                  [31 : 0]            imm,

    output                  [ 4 : 0]            rf_ra0,
    output                  [ 4 : 0]            rf_ra1,
    output                  [ 4 : 0]            rf_wa,
    output                  [ 0 : 0]            rf_we,

    output                  [ 0 : 0]            alu_src0_sel,
    output                  [ 0 : 0]            alu_src1_sel
);
/*--------------alu_op-------------*/
    
    wire [0:0]  opsel_0, opsel_1, opsel_2, opsel_3,
                add_sel,    sub_sel,    slt_sel,    sltu_sel,
                and_sel,    or_sel,     xor_sel,    sll_sel,
                srl_sel,    sra_sel,    addi_sel,   slli_sel,
                srli_sel,   srai_sel,   slti_sel,   sltiu_sel,
                andi_sel,   ori_sel,    xori_sel,   lui_sel,
                auipc_sel;
    
    wire [2:0]  funct3;
    wire [6:0]  funct7;
    wire [0:0]  funct7_sel;
    assign opsel_0 = (inst[6:0]==7'b0110011);
    assign opsel_1 = (inst[6:0]==7'b0010011);
    assign opsel_2 = (inst[6:0]==7'b0110111);
    assign opsel_3 = (inst[6:0]==7'b0010111);
    assign funct3 = inst[14:12];
    assign funct7 = inst[31:25];
    assign funct7_sel = (funct7 == 7'b0000000);

    assign add_sel  = opsel_0 & (funct3 == 3'b000) & funct7_sel;
    assign sub_sel  = opsel_0 & (funct3 == 3'b000) & (!funct7_sel);
    assign slt_sel  = opsel_0 & (funct3 == 3'b010) & funct7_sel;
    assign sltu_sel = opsel_0 & (funct3 == 3'b011) & funct7_sel;
    assign and_sel  = opsel_0 & (funct3 == 3'b111) & funct7_sel;
    assign or_sel   = opsel_0 & (funct3 == 3'b110) & funct7_sel;
    assign xor_sel  = opsel_0 & (funct3 == 3'b100) & funct7_sel;
    assign sll_sel  = opsel_0 & (funct3 == 3'b001) & funct7_sel;
    assign srl_sel  = opsel_0 & (funct3 == 3'b101) & funct7_sel;
    assign sra_sel  = opsel_0 & (funct3 == 3'b101) & (!funct7_sel);

    assign addi_sel = opsel_1 & (funct3 == 3'b000);
    assign slli_sel = opsel_1 & (funct3 == 3'b001);
    assign srli_sel = opsel_1 & (funct3 == 3'b101) & funct7_sel;
    assign srai_sel = opsel_1 & (funct3 == 3'b101) & (!funct7_sel);
    assign slti_sel = opsel_1 & (funct3 == 3'b010);
    assign sltiu_sel = opsel_1 & (funct3 == 3'b011);
    assign andi_sel = opsel_1 & (funct3 == 3'b111);
    assign ori_sel  = opsel_1 & (funct3 == 3'b110);
    assign xori_sel = opsel_1 & (funct3 == 3'b100);
    
    assign lui_sel   = opsel_2;
    assign auipc_sel = opsel_3;

    assign alu_op = {5{add_sel}} & `ADD     | {5{sub_sel}} & `SUB   | {5{slt_sel}} & `SLT   |
                    {5{sltu_sel}} & `SLTU   | {5{and_sel}} & `AND   | {5{or_sel}} & `OR     |
                    {5{xor_sel}} & `XOR     | {5{sll_sel}} & `SLL   | {5{srl_sel}} & `SRL   |
                    {5{sra_sel}} & `SRA     | {5{addi_sel}} & `ADDi | {5{slli_sel}} & `SLLi |
                    {5{srli_sel}} & `SRLi   | {5{srai_sel}} & `SRAi | {5{slti_sel}} & `SLTi |
                    {5{sltiu_sel}} & `SLTiu | {5{andi_sel}} & `ANDi | {5{ori_sel}} & `ORi   |
                    {5{xori_sel}} & `XORi   | {5{lui_sel}} & `LUI   | {5{auipc_sel}} & `AUIPC;

/*--------------imm-------------*/
    wire [ 0 : 0 ]  imm_func3_sel;
    wire [ 0 : 0 ]  imm_sel_0, imm_sel_1, imm_sel_2;
    wire [ 1 : 0 ]  imm_sel;
    wire [31 : 0 ]  imm_s, imm_l, imm_n;
    assign imm_func3_sel = (funct3 == 3'b000) | (funct3 == 3'b010) | (funct3 == 3'b001) | (funct3 == 3'b101) |
      (funct3 == 3'b011) | (funct3 == 3'b111) | (funct3 == 3'b110) | (funct3 == 3'b100); 
    assign imm_sel_0 = opsel_1 & imm_func3_sel; // 短立即数 12位
    assign imm_sel_1 = opsel_2 | opsel_3;    // 长立即数 20位
    assign imm_sel_2 = !(imm_sel_0 | imm_sel_1);    // 没有立即数的情况
    assign imm_s = {{20{inst[31:31]}}, inst[31:20]} & {32{imm_sel_0}};  // imm_short
    assign imm_l = {{12{inst[31:31]}}, inst[31:12]} & {32{imm_sel_1}};  // imm_long
    assign imm_n = 32'b0 & {32{imm_sel_2}};                             // imm_none
    assign imm = imm_s | imm_l | imm_n;
/*--------------rf_ra0, rf_ra1, rf_wa-------------*/
    assign rf_ra0 = inst[19:15];    // 一定有
    assign rf_ra1 = inst[24:20];    // 不一定有
    assign rf_wa  = inst[11: 7];    // 一定有
/*--------------rf_we-------------*/
    assign rf_we = add_sel | sub_sel |  slt_sel |   sltu_sel  |
                and_sel    | or_sel  |  xor_sel |   sll_sel   |
                srl_sel    |sra_sel  |  addi_sel|   slli_sel  |
                srli_sel   |srai_sel |  slti_sel|   sltiu_sel |
                andi_sel   |ori_sel  |  xori_sel|   lui_sel   |
                auipc_sel;
/*--------------alu_src0_sel-------------*/   
    assign alu_src0_sel = (opsel_0 | opsel_1) & 1'b1;   
    // 当 src0 来自寄存器时，该信号等于1'b1；当 src0 来自 pc 时，该信号等于1'b0.
/*--------------alu_src1_sel-------------*/      
    assign alu_src1_sel = opsel_0 & 1'b1;
    // 当 src1 来自寄存器时，该信号等于1'b1；当 src1 来自 imm 时，该信号等于1'b0.
endmodule