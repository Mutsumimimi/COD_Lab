`define     HALT_INST   32'H00100073
module CPU (
    input                   [ 0 : 0]            clk,
    input                   [ 0 : 0]            rst,

    input                   [ 0 : 0]            global_en,

/* ------------------------------ Memory (inst) ----------------------------- */
    output                  [31 : 0]            imem_raddr,
    input                   [31 : 0]            imem_rdata,

/* ------------------------------ Memory (data) ----------------------------- */
    input                   [31 : 0]            dmem_rdata,
    output                  [ 0 : 0]            dmem_we,
    output                  [31 : 0]            dmem_addr,
    output                  [31 : 0]            dmem_wdata,

/* ---------------------------------- Debug --------------------------------- */
    output                  [ 0 : 0]            commit,
    output                  [31 : 0]            commit_pc,
    output                  [31 : 0]            commit_inst,
    output                  [ 0 : 0]            commit_halt,
    output                  [ 0 : 0]            commit_reg_we,
    output                  [ 4 : 0]            commit_reg_wa,
    output                  [31 : 0]            commit_reg_wd,
    output                  [ 0 : 0]            commit_dmem_we,
    output                  [31 : 0]            commit_dmem_wa,
    output                  [31 : 0]            commit_dmem_wd,

    input                   [ 4 : 0]            debug_reg_ra,
    output                  [31 : 0]            debug_reg_rd
);
// ......
wire    [31: 0]     cur_pc; 
wire    [31: 0]     cur_npc;
wire    [31: 0]     cur_inst;
wire    [ 0: 0]     rf_we;
wire    [ 4: 0]     rf_wa;
wire    [31: 0]     rf_wd;
wire    [ 4: 0]     rf_ra0;
wire    [ 4: 0]     rf_ra1;
wire    [31: 0]     rf_rd0;
wire    [31: 0]     rf_rd1;
wire    [ 4: 0]     alu_op;
wire    [ 3: 0]     dmem_access;    // lab4
wire    [ 3: 0]     br_type;        // lab4
wire    [ 1: 0]     rf_wd_sel;      // lab4
wire    [31: 0]     imm;
wire    [ 0: 0]     alu_src0_sel;
wire    [ 0: 0]     alu_src1_sel;
wire    [31: 0]     alu_src0_ex;
wire    [31: 0]     alu_src1_ex;
wire    [31: 0]     alu_res;
wire    [31: 0]     dmem_rd_out;


/*------Instruction Memory------*/
assign imem_raddr = cur_pc;     // output
assign cur_inst = imem_rdata;


wire [31: 0]    pc_add4, pc_offset, pc_j;
wire [ 1: 0]    npc_sel;
wire [ 0: 0]    flush;          // Lab5

assign pc_add4 = cur_pc + 32'd4;
assign pc_offset = alu_res;     // EX阶段
assign pc_j = pc_offset &~ 1;

NPCMUX npcmux (
    .pc_add4(pc_add4),        // ??? pc_add4_if
    .pc_offset(pc_offset),
    .pc_j(pc_j),
    .npc_sel(npc_sel),
    .npc(cur_npc),
    .flush(flush)
);

PC my_pc (
    .clk    (clk        ),
    .rst    (rst        ),
    .en     (global_en  ),    // 当 global_en 为高电平时，PC 才会更新，CPU 才会执行指令。
    .npc    (cur_npc    ),
    .pc     (cur_pc     )
);

/*-------------------------Debug Module (NEW Lab5)--------------------------*/
wire [ 0:0] commit_if;
wire [ 0:0] commit_id;
wire [ 0:0] commit_ex;
wire [ 0:0] commit_mem;
wire [ 0:0] commit_wb;
assign commit_if = 1'H1;


wire [31:0] pc_id;
wire [31:0] pcadd4_id;
wire [31:0] inst_id;

PIPE_REG IF_ID_PR (
    .clk(clk),
    .rst(rst),
    .en(global_en),
    .stall(1'b0),
    .flush(flush),               // ???
    .commit(commit_if),  //
    .pc(cur_pc),
    .pcadd4(pc_add4),
    .inst(cur_inst),
    .alu_op(5'b0),
    .dmem_access(4'b1111),
    .dmem_we(1'b0),              //
    .dmem_wdata(32'b0),
    .rf_rd0(32'b0),
    .rf_rd1(32'b0),
    .imm(32'b0),
    .rf_wa(5'b0),
    .rf_we(1'b1),               //
    .alu_src0_sel(1'b1),
    .alu_src1_sel(1'b0),
    .br_type(4'b0),
    .alu_res(32'b0),
    .rf_wd_sel(2'b01),
    .dmem_rd_out(32'b0),
    .commit_o(commit_id),    //
    .pc_o(pc_id),
    .pcadd4_o(pcadd4_id),
    .inst_o(inst_id),
    .alu_op_o(),
    .dmem_access_o(),
    .dmem_we_o(),       //
    .dmem_wdata_o(),
    .rf_rd0_o(),
    .rf_rd1_o(),
    .imm_o(),
    .rf_wa_o(),
    .rf_we_o(),         //
    .alu_src0_sel_o(),
    .alu_src1_sel_o(),
    .br_type_o(),
    .alu_res_o(),
    .rf_wd_sel_o(),
    .dmem_rd_out_o()
);

wire [ 0:0] dmem_we_id;
wire [ 4:0] rf_wa_id;
wire [ 0:0] rf_we_id;

DECODE decode(
    .inst   (inst_id),
    .alu_op (alu_op),
    .dmem_access(dmem_access),
    .dmem_we(dmem_we_id),  //
    .imm    (imm),
    .rf_ra0 (rf_ra0),
    .rf_ra1 (rf_ra1),
    .rf_wa  (rf_wa_id),    //
    .rf_we  (rf_we_id),    //
    .rf_wd_sel(rf_wd_sel),
    .alu_src0_sel   (alu_src0_sel),
    .alu_src1_sel   (alu_src1_sel),
    .br_type(br_type)
);


REG_FILE my_reg_file(
    .clk    (clk),
    .rf_ra0 (rf_ra0),
    .rf_ra1 (rf_ra1),
    .dbg_reg_ra (debug_reg_ra),     
    .rf_wa  (rf_wa_wb),    // PIPE_PR
    .rf_we  (rf_we_wb),    // PIPE_PR
    .rf_wd  (rf_wd),    // PIPE_PR
    .rf_rd0 (rf_rd0),
    .rf_rd1 (rf_rd1),
    .dbg_reg_rd (debug_reg_rd)      
);

wire [31:0] pc_ex;
wire [31:0] pcadd4_ex;
wire [31:0] inst_ex;
wire [ 4:0] alu_op_ex;
wire [ 3:0] dmem_access_ex; 
wire [ 0:0] dmem_we_ex;        //
wire [31:0] rf_rd0_ex;
wire [31:0] rf_rd1_ex;
wire [31:0] imm_ex;
wire [ 4:0] rf_wa_ex;
wire [ 0:0] rf_we_ex;
wire [ 0:0] alu_src0_sel_ex;
wire [ 0:0] alu_src1_sel_ex;
wire [ 3:0] br_type_ex;
wire [ 1:0] rf_wd_sel_ex;

PIPE_REG ID_EX_PR (
    .clk(clk),
    .rst(rst),
    .en(global_en),
    .stall(1'b0),
    .flush(flush),           // ???
    .commit(commit_id),
    .pc(pc_id),
    .pcadd4(pcadd4_id),
    .inst(inst_id),
    .alu_op(alu_op),
    .dmem_access(dmem_access),
    .dmem_we(dmem_we_id),      //
    .dmem_wdata(32'b0),
    .rf_rd0(rf_rd0),
    .rf_rd1(rf_rd1),
    .imm(imm),
    .rf_wa(rf_wa_id),   //
    .rf_we(rf_we_id),   //
    .alu_src0_sel(alu_src0_sel),
    .alu_src1_sel(alu_src1_sel),
    .br_type(br_type),
    .alu_res(32'b0),
    .rf_wd_sel(rf_wd_sel),
    .dmem_rd_out(32'b0),
    .commit_o(commit_ex),
    .pc_o(pc_ex),
    .pcadd4_o(pcadd4_ex),
    .inst_o(inst_ex),
    .alu_op_o(alu_op_ex),
    .dmem_access_o(dmem_access_ex),
    .dmem_we_o(dmem_we_ex),   //
    .dmem_wdata_o(),
    .rf_rd0_o(rf_rd0_ex),
    .rf_rd1_o(rf_rd1_ex),
    .imm_o(imm_ex),
    .rf_wa_o(rf_wa_ex),     
    .rf_we_o(rf_we_ex),
    .alu_src0_sel_o(alu_src0_sel_ex),
    .alu_src1_sel_o(alu_src1_sel_ex),
    .br_type_o(br_type_ex),
    .alu_res_o(),
    .rf_wd_sel_o(rf_wd_sel_ex),
    .dmem_rd_out_o()
);

BRANCH branch (
    .br_type(br_type_ex),
    .br_src0(rf_rd0_ex),
    .br_src1(rf_rd1_ex),
    .npc_sel(npc_sel)       // ??? BRANCH和NPCMUX同在一个阶段
);

MUX  # (
    .WIDTH  (32)
) MUX_0 (
    .src0   (pc_ex),
    .src1   (rf_rd0_ex),
    .sel    (alu_src0_sel_ex),
    .res    (alu_src0_ex)
);

MUX  # (
    .WIDTH  (32)
) MUX_1 (
    .src0   (imm_ex),
    .src1   (rf_rd1_ex),
    .sel    (alu_src1_sel_ex),
    .res    (alu_src1_ex)
);

ALU alu(
    .alu_src0   (alu_src0_ex),
    .alu_src1   (alu_src1_ex),
    .alu_op     (alu_op_ex),
    .alu_res    (alu_res)
);

wire [31:0] pc_mem;
wire [31:0] pcadd4_mem;
wire [31:0] inst_mem;
wire [ 4:0] alu_op_mem;
wire [ 3:0] dmem_access_mem;
wire [ 0:0] dmem_we_mem;
wire [31:0] rf_rd0_mem;
wire [31:0] rf_rd1_mem;
wire [31:0] imm_mem;
wire [ 4:0] rf_wa_mem;
wire [ 0:0] rf_we_mem;
wire [ 0:0] alu_src0_sel_mem;
wire [ 0:0] alu_src1_sel_mem;
wire [ 3:0] br_type_mem;
wire [31:0] alu_res_mem;
wire [ 1:0] rf_wd_sel_mem;

PIPE_REG EX_MEM_PR (
    .clk(clk),
    .rst(rst),
    .en(global_en),
    .stall(1'b0),
    .flush(1'b0),           // ???
    .commit(commit_ex),
    .pc(pc_ex),
    .pcadd4(pcadd4_ex),
    .inst(inst_ex),
    .alu_op(alu_op_ex),
    .dmem_access(dmem_access_ex),
    .dmem_we(dmem_we_ex),   //
    .dmem_wdata(32'b0),
    .rf_rd0(rf_rd0_ex),
    .rf_rd1(rf_rd1_ex),
    .imm(imm_ex),
    .rf_wa(rf_wa_ex),   //
    .rf_we(rf_we_ex),   //
    .alu_src0_sel(alu_src0_sel_ex),
    .alu_src1_sel(alu_src1_sel_ex),
    .br_type(br_type_ex),
    .alu_res(alu_res),    
    .rf_wd_sel(rf_wd_sel_ex),
    .dmem_rd_out(32'b0),
    .commit_o(commit_mem),
    .pc_o(pc_mem),
    .pcadd4_o(pcadd4_mem),
    .inst_o(inst_mem),
    .alu_op_o(alu_op_mem),
    .dmem_access_o(dmem_access_mem),
    .dmem_we_o(dmem_we_mem),    //
    .dmem_wdata_o(),
    .rf_rd0_o(rf_rd0_mem),
    .rf_rd1_o(rf_rd1_mem),
    .imm_o(imm_mem),
    .rf_wa_o(rf_wa_mem),    //
    .rf_we_o(rf_we_mem),        //
    .alu_src0_sel_o(alu_src0_sel_mem),
    .alu_src1_sel_o(alu_src1_sel_mem),
    .br_type_o(br_type_mem),
    .alu_res_o(alu_res_mem),
    .rf_wd_sel_o(rf_wd_sel_mem),
    .dmem_rd_out_o()
);

SLU slu (
    .addr(alu_res_mem),
    .dmem_access(dmem_access_mem),  // PIPE_REG
    .rd_in(dmem_rdata),
    .wd_in(rf_rd1_mem),     // PIPE_REG
    .rd_out(dmem_rd_out),   // PIPE_REG
    .wd_out(dmem_wdata)     // PIEP_REG
);

wire [31:0] pc_wb;
wire [31:0] pcadd4_wb;
wire [31:0] inst_wb;
wire [ 4:0] alu_op_wb;
wire [ 3:0] dmem_access_wb;
wire [ 0:0] dmem_we_wb;
wire [31:0] dmem_wdata_wb;
wire [31:0] rf_rd0_wb;
wire [31:0] rf_rd1_wb;
wire [31:0] imm_wb;
wire [ 4:0] rf_wa_wb;
wire [ 0:0] rf_we_wb;
wire [ 0:0] alu_src0_sel_wb;
wire [ 0:0] alu_src1_sel_wb;
wire [ 3:0] br_type_wb;
wire [31:0] alu_res_wb;
wire [ 1:0] rf_wd_sel_wb;
wire [31:0] dmem_rd_out_wb;

PIPE_REG MEM_WB_PR (
    .clk(clk),
    .rst(rst),
    .en(global_en),
    .stall(1'b0),
    .flush(1'b0),           // ???
    .commit(commit_mem),
    .pc(pc_mem),
    .pcadd4(pcadd4_mem),
    .inst(inst_mem),
    .alu_op(alu_op_mem),
    .dmem_access(dmem_access_mem),
    .dmem_we(dmem_we_mem),         //
    .dmem_wdata(dmem_wdata),
    .rf_rd0(rf_rd0_mem),
    .rf_rd1(rf_rd1_mem),
    .imm(imm_mem),
    .rf_wa(rf_wa_mem),
    .rf_we(rf_we_mem),   //
    .alu_src0_sel(alu_src0_sel_mem),
    .alu_src1_sel(alu_src1_sel_mem),
    .br_type(br_type_mem),
    .alu_res(alu_res_mem),    
    .rf_wd_sel(rf_wd_sel_mem),
    .dmem_rd_out(dmem_rd_out),
    .commit_o(commit_wb), 
    .pc_o(pc_wb),
    .pcadd4_o(pcadd4_wb),
    .inst_o(inst_wb),
    .alu_op_o(alu_op_wb),
    .dmem_access_o(dmem_access_wb),
    .dmem_we_o(dmem_we_wb),   //
    .dmem_wdata_o(dmem_wdata_wb),
    .rf_rd0_o(rf_rd0_wb),
    .rf_rd1_o(rf_rd1_wb),
    .imm_o(imm_wb),
    .rf_wa_o(rf_wa_wb),
    .rf_we_o(rf_we_wb),     //
    .alu_src0_sel_o(alu_src0_sel_wb),
    .alu_src1_sel_o(alu_src1_sel_wb),
    .br_type_o(br_type_wb),
    .alu_res_o(alu_res_wb),
    .rf_wd_sel_o(rf_wd_sel_wb),
    .dmem_rd_out_o(dmem_rd_out_wb)
);

MUX2 # (
    .WIDTH  (32)
) rf_wb_mux (
    .src0(pcadd4_wb),
    .src1(alu_res_wb),
    .src2(dmem_rd_out_wb),
    .src3(32'b0),
    .sel(rf_wd_sel_wb),        // PIPE_REG
    .res(rf_wd)                 // PIPE_REG
);

assign dmem_addr = alu_res_mem; // PIPE_REG
assign dmem_we = dmem_we_mem;   // PIPE_REG
//dmem_we ??? 
wire [31:0] dmem_wa, dmem_wd;
assign dmem_wa = alu_res_wb;    // PIPE_REG ??
assign dmem_wd = dmem_wdata_wb;    //

/*------------------------------Debug Module------------------------------*/
reg  [ 0 : 0]   commit_reg          ;
reg  [31 : 0]   commit_pc_reg       ;
reg  [31 : 0]   commit_inst_reg     ;
reg  [ 0 : 0]   commit_halt_reg     ;
reg  [ 0 : 0]   commit_reg_we_reg   ;
reg  [ 4 : 0]   commit_reg_wa_reg   ;
reg  [31 : 0]   commit_reg_wd_reg   ;
reg  [ 0 : 0]   commit_dmem_we_reg  ;
reg  [31 : 0]   commit_dmem_wa_reg  ;
reg  [31 : 0]   commit_dmem_wd_reg  ;

always @(posedge clk) begin
    if (rst) begin
        commit_reg          <= 1'H0;
        commit_pc_reg       <= 32'H0;
        commit_inst_reg     <= 32'H0;
        commit_halt_reg     <= 1'H0;
        commit_reg_we_reg   <= 1'H0;
        commit_reg_wa_reg   <= 5'H0;
        commit_reg_wd_reg   <= 32'H0;
        commit_dmem_we_reg  <= 1'H0;
        commit_dmem_wa_reg  <= 32'H0;
        commit_dmem_wd_reg  <= 32'H0;
    end
    else if (global_en) begin
        // 这里右侧的信号都是 MEM/WB 段间寄存器的输出   LAB 5
        commit_reg          <= commit_wb;                        
        commit_pc_reg       <= pc_wb;                      
        commit_inst_reg     <= inst_wb;                    
        commit_halt_reg     <= inst_wb == `HALT_INST;      
        commit_reg_we_reg   <= rf_we_wb;                       
        commit_reg_wa_reg   <= rf_wa_wb;                       
        commit_reg_wd_reg   <= rf_wd;                             // 相当于rf_wd_wb 
        commit_dmem_we_reg  <= dmem_we_wb;                           
        commit_dmem_wa_reg  <= dmem_wa;                           // 
        commit_dmem_wd_reg  <= dmem_wd;                           //
    end
end

assign commit               = commit_reg;
assign commit_pc            = commit_pc_reg;
assign commit_inst          = commit_inst_reg;
assign commit_halt          = commit_halt_reg;
assign commit_reg_we        = commit_reg_we_reg;
assign commit_reg_wa        = commit_reg_wa_reg;
assign commit_reg_wd        = commit_reg_wd_reg;
assign commit_dmem_we       = commit_dmem_we_reg;
assign commit_dmem_wa       = commit_dmem_wa_reg;
assign commit_dmem_wd       = commit_dmem_wd_reg;

endmodule