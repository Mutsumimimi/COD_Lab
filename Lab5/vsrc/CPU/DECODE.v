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

`define     LW      4'B0000
`define     LH      4'B0001
`define     LB      4'B0010
`define     LHU     4'B0011
`define     LBU     4'B0100
`define     SW      4'B0101
`define     SH      4'B0110
`define     SB      4'B0111

`define     BEQ         4'B1000
`define     BNE         4'B1001
`define     BLT         4'B1010
`define     BGE         4'B1011
`define     BLTU        4'B1100
`define     BGEU        4'B1101
`define     JALR        4'B1110
`define     JAL         4'B1111

module DECODE (
    input                   [31 : 0]            inst,

    output                  [ 4 : 0]            alu_op,

    output                  [ 3 : 0]            dmem_access,
    output                  [ 0 : 0]            dmem_we,

    output                  [31 : 0]            imm,

    output                  [ 4 : 0]            rf_ra0,
    output                  [ 4 : 0]            rf_ra1,
    output                  [ 4 : 0]            rf_wa,
    output                  [ 0 : 0]            rf_we,
    output      reg         [ 1 : 0]            rf_wd_sel,

    output                  [ 0 : 0]            alu_src0_sel,
    output                  [ 0 : 0]            alu_src1_sel,

    output                  [ 3 : 0]            br_type
);
/*----------------------alu_op----------------------*/
    
    wire [0:0]  opsel_0, opsel_1, opsel_2, opsel_3,
                add_sel,    sub_sel,    slt_sel,    sltu_sel,
                and_sel,    or_sel,     xor_sel,    sll_sel,
                srl_sel,    sra_sel,    addi_sel,   slli_sel,
                srli_sel,   srai_sel,   slti_sel,   sltiu_sel,
                andi_sel,   ori_sel,    xori_sel,   lui_sel,
                auipc_sel;
    
    /* lab4 part begin*/     
    wire [0:0]  opsel_4,    opsel_5,    opsel_6;       
    wire [0:0]  lw_sel,     lh_sel,     lb_sel,     lhu_sel,
                lbu_sel,    sw_sel,     sh_sel,     sb_sel,
                jalr_sel,   jal_sel,    beq_sel,    bne_sel,
                blt_sel,    bge_sel,    bltu_sel,   bgeu_sel;
    /* lab4 part end*/

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

    /* lab4 part begin*/
    assign opsel_4 = (inst[6:0] == 7'b0000011); // lw, lh, lb, lhu, lbu
    assign opsel_5 = (inst[6:0] == 7'b0100011); // sw, sh, sb
    assign opsel_6 = (inst[6:0] == 7'b1100011); // beq,bne,blt,bge,bltu,bgeu

    /* lab4 part end*/


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

    /* lab4 part begin*/
    assign lw_sel   = opsel_4 & (funct3 == 3'b010);
    assign lh_sel   = opsel_4 & (funct3 == 3'b001);
    assign lb_sel   = opsel_4 & (funct3 == 3'b000);
    assign lhu_sel  = opsel_4 & (funct3 == 3'b101);
    assign lbu_sel  = opsel_4 & (funct3 == 3'b100);

    assign sw_sel   = opsel_5 & (funct3 == 3'b010);
    assign sh_sel   = opsel_5 & (funct3 == 3'b001);
    assign sb_sel   = opsel_5 & (funct3 == 3'b000);

    assign jalr_sel = (inst[6:0] == 7'b1100111);    // & (funct3 == 3'b010);
    assign jal_sel  = (inst[6:0] == 7'b1101111);

    assign beq_sel  = opsel_6 & (funct3 == 3'b000);
    assign bne_sel  = opsel_6 & (funct3 == 3'b001);
    assign blt_sel  = opsel_6 & (funct3 == 3'b100);
    assign bge_sel  = opsel_6 & (funct3 == 3'b101);
    assign bltu_sel = opsel_6 & (funct3 == 3'b110);
    assign bgeu_sel = opsel_6 & (funct3 == 3'b111);

    wire [0:0]  alu_add_extend; //这些指令都需要用到alu的add方法
    assign alu_add_extend = lw_sel | lh_sel | lb_sel | lhu_sel | lbu_sel |
                            sw_sel | sh_sel | sb_sel | jalr_sel| jal_sel |
                            beq_sel| bne_sel| blt_sel| bge_sel | bltu_sel|
                            bge_sel;
    /* lab4 part end*/

    assign alu_op = {5{add_sel}} & `ADD     | {5{sub_sel}} & `SUB   | {5{slt_sel}} & `SLT   |
                    {5{sltu_sel}} & `SLTU   | {5{and_sel}} & `AND   | {5{or_sel}} & `OR     |
                    {5{xor_sel}} & `XOR     | {5{sll_sel}} & `SLL   | {5{srl_sel}} & `SRL   |
                    {5{sra_sel}} & `SRA     | {5{addi_sel}} & `ADDi | {5{slli_sel}} & `SLLi |
                    {5{srli_sel}} & `SRLi   | {5{srai_sel}} & `SRAi | {5{slti_sel}} & `SLTi |
                    {5{sltiu_sel}} & `SLTiu | {5{andi_sel}} & `ANDi | {5{ori_sel}} & `ORi   |
                    {5{xori_sel}} & `XORi   | {5{lui_sel}} & `LUI   | {5{auipc_sel}} & `AUIPC |
                    {5{alu_add_extend}} & `ADD;

/*----------------------dmem_access--------------------*/

    assign  dmem_access =   {4{lw_sel}} & `LW   | {4{lh_sel}} & `LH     | {4{lb_sel}} & `LB |
                            {4{lhu_sel}} & `LHU | {4{lbu_sel}} & `LBU   | {4{sw_sel}} & `SW |
                            {4{sh_sel}} & `SH   | {4{sb_sel}} & `SB;

/*----------------------dmem_we---------------------*/
    // 数据内存的写使能    
    assign dmem_we = sw_sel | sh_sel | sb_sel;                            
/*-----------------------imm----------------------*/
    wire [ 0 : 0 ]  imm_func3_sel;
    wire [ 0 : 0 ]  imm_sel_0, imm_sel_1, imm_sel_2;
    wire [31 : 0 ]  imm_short, imm_long;
    // wire [31 : 0 ]  imm_n;

    assign imm_func3_sel = (funct3 == 3'b000) | (funct3 == 3'b010) | (funct3 == 3'b001) | (funct3 == 3'b101) |
      (funct3 == 3'b011) | (funct3 == 3'b111) | (funct3 == 3'b110) | (funct3 == 3'b100); 
    
    assign imm_sel_0 = opsel_1 & imm_func3_sel; // 短立即数 12位
    assign imm_sel_1 = opsel_2 | opsel_3;    // 长立即数 20位
    assign imm_sel_2 = !(imm_sel_0 | imm_sel_1);    // 没有立即数的情况

    assign imm_short = {{20{inst[31:31]}}, inst[31:20]} & {32{imm_sel_0}};  // imm_short
    assign imm_long  = {{12{inst[31:31]}}, inst[31:12]} & {32{imm_sel_1}};  // imm_long
    // assign imm_n = 32'b0 & {32{imm_sel_2}};                             // imm_none

    /* lab4 part begin*/
    //按指令名称分类
    wire [31 : 0 ]  imm_load, imm_store;
    wire [31 : 0 ]  imm_jal;
    wire [31 : 0 ]  imm_jalr;
    wire [31 : 0 ]  imm_branch;

    assign imm_load = opsel_4 ? {{20{inst[31:31]}}, inst[31:20]} : 32'b0;
    assign imm_store = opsel_5 ? {{20{inst[31:31]}}, inst[31:25], inst[11:7]} : 32'b0;

    assign imm_jal = jal_sel ? {{11{inst[31:31]}}, inst[31:31], inst[19:12], inst[20:20], inst[30:21], 1'b0} : 32'b0;
    assign imm_jalr = jalr_sel ? {{20{inst[31:31]}}, inst[31:20]} : 32'b0;

    assign imm_branch = opsel_6 ? {{20{inst[31:31]}}, inst[7:7], inst[30:25], inst[11:8], 1'b0} : 32'b0;
     
    /* lab4 part end*/

    assign imm  =   imm_short | imm_long |
                    imm_load | imm_store | imm_jal | imm_jalr | imm_branch;


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
                auipc_sel  | opsel_4 | jalr_sel |   jal_sel;
    // lab4的load系列，和jalr,jal也需要写寄存器

/*--------------rf_wd_sel-------------*/
    /*
    pc_add4, alu_res, dmem_rdata, zero
    jalr,jal; lab3;     load;                
    */
    always @(*) begin
        if(jalr_sel | jal_sel) begin
            // pc_add4
            rf_wd_sel = 2'b00;
        end
        else if(opsel_0 | opsel_1 | opsel_2 | opsel_3) begin
            // lab3全部21条指令，alu_res
            rf_wd_sel = 2'b01;
        end
        else if(opsel_4) begin
            // load系列 dmem_rdata
            rf_wd_sel = 2'b10;
        end
        else begin
            // 赋为zero
            rf_wd_sel = 2'b11;
        end
    end

/*--------------alu_src0_sel-------------*/   
    assign alu_src0_sel = (opsel_0 | opsel_1 | opsel_4 | opsel_5 |
                            jalr_sel) & 1'b1;   
    // 当 src0 来自寄存器时，该信号等于1'b1；当 src0 来自 pc 时，该信号等于1'b0.
    // 来自寄存器的情况：(lab4)
    // 除了jal和所有branch指令

/*--------------alu_src1_sel-------------*/      
    assign alu_src1_sel = opsel_0 & 1'b1;
    // 当 src1 来自寄存器时，该信号等于1'b1；当 src1 来自 imm 时，该信号等于1'b0.
    // 来自寄存器：
    // 没有

/*--------------br_type-------------*/ 
    assign br_type = {4{beq_sel}} & `BEQ    | {4{bne_sel}} & `BNE   | {4{blt_sel}} & `BLT   |
                    {4{bge_sel}} & `BGE     | {4{bltu_sel}} & `BLTU | {4{bgeu_sel}} & `BGEU |
                    {4{jalr_sel}} & `JALR   | {4{jal_sel}} & `JAL;
endmodule