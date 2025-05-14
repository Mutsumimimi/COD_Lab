module NPCMUX (
    input       [31 : 0 ]       pc_add4,
    input       [31 : 0 ]       pc_offset,
    input       [31 : 0 ]       pc_j,
    input       [ 1 : 0 ]       npc_sel,

    output      [31 : 0 ]       npc,
    output      [ 0 : 0 ]       flush       // Lab5自定义新信号
);

    wire [0:0]  sel_0, sel_1, sel_2;
    assign sel_0 = npc_sel == 2'b00;        // pc_add4
    assign sel_1 = npc_sel == 2'b01;        // B系列 + jal
    assign sel_2 = npc_sel == 2'b10;        // jalr
    
    assign npc = pc_add4 & {32{sel_0}} | pc_offset & {32{sel_1}} |
                pc_j & {32{sel_2}};

    assign flush = sel_1 | sel_2; 
endmodule