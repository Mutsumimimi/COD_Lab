`define     zero_address    32'h0040_0000
`define     NOP             32'h0000_0013
`define     ADDi_aluop      5'b10001

module PIPE_REG (
    input                   [ 0 : 0]        clk,

    input                   [ 0 : 0]        rst,
    input                   [ 0 : 0]        en,
    input                   [ 0 : 0]        stall,
    input                   [ 0 : 0]        flush,

    input                   [ 0 : 0]        commit,     //
    input                   [31 : 0]        pc,
    input                   [31 : 0]        pcadd4,
    input                   [31 : 0]        inst,
    input                   [ 4 : 0]        alu_op,
    input                   [ 3 : 0]        dmem_access,
    input                   [ 0 : 0]        dmem_we,
    input                   [31 : 0]        dmem_wdata,     //
    input                   [31 : 0]        rf_rd0,
    input                   [31 : 0]        rf_rd1,
    input                   [31 : 0]        imm,
    input                   [ 4 : 0]        rf_wa,
    input                   [ 0 : 0]        rf_we,
    input                   [ 0 : 0]        alu_src0_sel,
    input                   [ 0 : 0]        alu_src1_sel,
    input                   [ 3 : 0]        br_type,
    input                   [31 : 0]        alu_res,
    input                   [ 1 : 0]        rf_wd_sel,      //
    input                   [31 : 0]        dmem_rd_out,
    

    output      reg         [ 0 : 0]        commit_o,   //
    output      reg         [31 : 0]        pc_o,
    output      reg         [31 : 0]        pcadd4_o,
    output      reg         [31 : 0]        inst_o,
    output      reg         [ 4 : 0]        alu_op_o,
    output      reg         [ 3 : 0]        dmem_access_o,
    output      reg         [ 0 : 0]        dmem_we_o,
    output      reg         [31 : 0]        dmem_wdata_o,   //
    output      reg         [31 : 0]        rf_rd0_o,
    output      reg         [31 : 0]        rf_rd1_o,
    output      reg         [31 : 0]        imm_o,
    output      reg         [ 4 : 0]        rf_wa_o,
    output      reg         [ 0 : 0]        rf_we_o,
    output      reg         [ 0 : 0]        alu_src0_sel_o,
    output      reg         [ 0 : 0]        alu_src1_sel_o,
    output      reg         [ 3 : 0]        br_type_o,
    output      reg         [31 : 0]        alu_res_o,
    output      reg         [ 1 : 0]        rf_wd_sel_o,
    output      reg         [31 : 0]        dmem_rd_out_o
);

    always @(posedge clk) begin
        if (rst) begin
            // rst 操作的逻辑
            commit_o <= 1'H0;
        end
        else if (en) begin
            // flush 和 stall 操作的逻辑, flush 的优先级更高
            if(flush) begin
                commit_o <= 1'H0;
            end
            else if(stall) begin
                commit_o <= commit_o;
            end
            else begin
                commit_o <= commit;
            end
        end
        else
            commit_o <= 1'H0;
    end

    always @(posedge clk) begin
        if (rst) begin
            // rst 操作的逻辑
            pc_o <= pc;
        end
        else if (en) begin
            // flush 和 stall 操作的逻辑, flush 的优先级更高
            if(flush) begin
                pc_o <= pc;
            end
            else if(stall) begin
                pc_o <= pc_o;
            end
            else begin
                pc_o <= pc;
            end
        end
        else
            pc_o <= pc;
    end

    always @(posedge clk) begin
        if (rst) begin
            // rst 操作的逻辑
            pcadd4_o <= pcadd4;
        end
        else if (en) begin
            // flush 和 stall 操作的逻辑, flush 的优先级更高
            if(flush) begin
                pcadd4_o <= pcadd4;
            end
            else if(stall) begin
                pcadd4_o <= pcadd4_o;
            end
            else begin
                pcadd4_o <= pcadd4;
            end
        end
        else
            pcadd4_o <= pcadd4;
    end

    always @(posedge clk) begin
        if (rst) begin
            // rst 操作的逻辑
            inst_o <= `NOP;
        end
        else if (en) begin
            // flush 和 stall 操作的逻辑, flush 的优先级更高
            if(flush) begin
                inst_o <= `NOP;
            end
            else if(stall) begin
                inst_o <= inst_o;
            end
            else begin
                inst_o <= inst;
            end
        end
        else
            inst_o <= `NOP;
    end

    always @(posedge clk) begin
        if (rst) begin
            // rst 操作的逻辑
            alu_op_o <= `ADDi_aluop;
        end
        else if (en) begin
            // flush 和 stall 操作的逻辑, flush 的优先级更高
            if(flush) begin
                alu_op_o <= `ADDi_aluop;
            end
            else if(stall) begin
                alu_op_o <= alu_op_o;
            end
            else begin
                alu_op_o <= alu_op;
            end
        end
        else
            alu_op_o <= `ADDi_aluop;
    end

    always @(posedge clk) begin
        if (rst) begin
            // rst 操作的逻辑
            dmem_access_o <= 4'b1111;   // 参见SLU
        end
        else if (en) begin
            // flush 和 stall 操作的逻辑, flush 的优先级更高
            if(flush) begin
                dmem_access_o <= 4'b1111; 
            end
            else if(stall) begin
                dmem_access_o <= dmem_access_o; 
            end
            else begin
                dmem_access_o <= dmem_access;
            end
        end
        else
            dmem_access_o <= 4'b1111; 
    end

    always @(posedge clk) begin
        if (rst) begin
            // rst 操作的逻辑
            dmem_we_o <= 1'b0;
        end
        else if (en) begin
            // flush 和 stall 操作的逻辑, flush 的优先级更高
            if(flush) begin
                dmem_we_o <= 1'b0;
            end
            else if(stall) begin
                dmem_we_o <= dmem_we_o;
            end
            else begin
                dmem_we_o <= dmem_we;
            end
        end
        else
            dmem_we_o <= 1'b0;
    end

    always @(posedge clk) begin
        if (rst) begin
            // rst 操作的逻辑
            dmem_wdata_o <= 32'b0;
        end
        else if (en) begin
            // flush 和 stall 操作的逻辑, flush 的优先级更高
            if(flush) begin
                dmem_wdata_o <= 32'b0;
            end
            else if(stall) begin
                dmem_wdata_o <= dmem_wdata_o;
            end
            else begin
                dmem_wdata_o <= dmem_wdata;
            end
        end
        else
            dmem_wdata_o <= 32'b0;
    end

    always @(posedge clk) begin
        if (rst) begin
            // rst 操作的逻辑
            rf_rd0_o <= 32'b0;
        end
        else if (en) begin
            // flush 和 stall 操作的逻辑, flush 的优先级更高
            if(flush) begin
                rf_rd0_o <= 32'b0;
            end
            else if(stall) begin
                rf_rd0_o <= rf_rd0_o;
            end
            else begin
                rf_rd0_o <= rf_rd0;
            end
        end
        else
            rf_rd0_o <= 32'b0;
    end

    always @(posedge clk) begin
        if (rst) begin
            // rst 操作的逻辑
            rf_rd1_o <= 32'b0;
        end
        else if (en) begin
            // flush 和 stall 操作的逻辑, flush 的优先级更高
            if(flush) begin
                rf_rd1_o <= 32'b0;
            end
            else if(stall) begin
                rf_rd1_o <= rf_rd1_o;
            end
            else begin
                rf_rd1_o <= rf_rd1;
            end
        end
        else
            rf_rd1_o <= 32'b0;
    end

    always @(posedge clk) begin
        if (rst) begin
            // rst 操作的逻辑
            imm_o <= 32'b0;
        end
        else if (en) begin
            // flush 和 stall 操作的逻辑, flush 的优先级更高
            if(flush) begin
                imm_o <= 32'b0;
            end
            else if(stall) begin
                imm_o <= imm_o;
            end
            else begin
                imm_o <= imm;
            end
        end
        else
            imm_o <= 32'b0;
    end

    always @(posedge clk) begin
        if (rst) begin
            // rst 操作的逻辑
            rf_wa_o <= 5'b00000;
        end
        else if (en) begin
            // flush 和 stall 操作的逻辑, flush 的优先级更高
            if(flush) begin
                rf_wa_o <= 5'b00000;
            end
            else if(stall) begin
                rf_wa_o <= rf_wa_o;
            end
            else begin
                rf_wa_o <= rf_wa;
            end
        end
        else
            rf_wa_o <= 5'b00000;
    end

    always @(posedge clk) begin
        if (rst) begin
            // rst 操作的逻辑
            rf_we_o <= 1'b1;
        end
        else if (en) begin
            // flush 和 stall 操作的逻辑, flush 的优先级更高
            if(flush) begin
                rf_we_o <= 1'b1;
            end
            else if(stall) begin
                rf_we_o <= rf_we_o;
            end
            else begin
                rf_we_o <= rf_we;
            end
        end
        else
            rf_we_o <= 1'b1;
    end

    always @(posedge clk) begin
        // 当 src0 来自寄存器时，该信号等于1'b1；当 src0 来自 pc 时，该信号等于1'b0.
        if (rst) begin
            // rst 操作的逻辑
            alu_src0_sel_o <= 1'b1;
        end
        else if (en) begin
            // flush 和 stall 操作的逻辑, flush 的优先级更高
            if(flush) begin
                alu_src0_sel_o <= 1'b1;
            end
            else if(stall) begin
                alu_src0_sel_o <= alu_src0_sel_o;
            end
            else begin
                alu_src0_sel_o <= alu_src0_sel;
            end
        end
        else
            alu_src0_sel_o <= 1'b1;
    end

    always @(posedge clk) begin
        // 当 src1 来自寄存器时，该信号等于1'b1；当 src1 来自 imm 时，该信号等于1'b0.
        if (rst) begin
            // rst 操作的逻辑
            alu_src1_sel_o <= 1'b0;
        end
        else if (en) begin
            // flush 和 stall 操作的逻辑, flush 的优先级更高
            if(flush) begin
                alu_src1_sel_o <= 1'b0;
            end
            else if(stall) begin
                alu_src1_sel_o <= alu_src1_sel_o;
            end
            else begin
                alu_src1_sel_o <= alu_src1_sel;
            end
        end
        else
            alu_src1_sel_o <= 1'b0;
    end


    always @(posedge clk) begin
        if (rst) begin
            // rst 操作的逻辑
            br_type_o <= 4'b0000;
        end
        else if (en) begin
            // flush 和 stall 操作的逻辑, flush 的优先级更高
            if(flush) begin
                br_type_o <= 4'b0000;
            end
            else if(stall) begin
                br_type_o <= br_type_o;
            end
            else begin
                br_type_o <= br_type;
            end
        end
        else
            br_type_o <= 4'b0000;
    end

    always @(posedge clk) begin
        if (rst) begin
            // rst 操作的逻辑
            alu_res_o <= 32'b0;
        end
        else if (en) begin
            // flush 和 stall 操作的逻辑, flush 的优先级更高
            if(flush) begin
                alu_res_o <= 32'b0;
            end
            else if(stall) begin
                alu_res_o <= alu_res_o;
            end
            else begin
                alu_res_o <= alu_res;
            end
        end
        else
            alu_res_o <= 32'b0;
    end

    always @(posedge clk) begin
        if (rst) begin
            // rst 操作的逻辑
            rf_wd_sel_o <= 2'b01;       // DECODE addi
        end
        else if (en) begin
            // flush 和 stall 操作的逻辑, flush 的优先级更高
            if(flush) begin
                rf_wd_sel_o <= 2'b01;  
            end
            else if(stall) begin
                rf_wd_sel_o <= rf_wd_sel_o;  
            end
            else begin
                rf_wd_sel_o <= rf_wd_sel;
            end
        end
        else
            rf_wd_sel_o <= 2'b01;  
    end

    always @(posedge clk) begin
        if (rst) begin
            // rst 操作的逻辑
            dmem_rd_out_o <= 32'b0;
        end
        else if (en) begin
            // flush 和 stall 操作的逻辑, flush 的优先级更高
            if(flush) begin
                dmem_rd_out_o <= 32'b0;
            end
            else if(stall) begin
                dmem_rd_out_o <= dmem_rd_out_o;
            end
            else begin
                dmem_rd_out_o <= dmem_rd_out;
            end
        end
        else
            dmem_rd_out_o <= 32'b0;
    end

endmodule