`define zero_address   32'h0040_0000
module PC (
    input                   [ 0 : 0]            clk,
    input                   [ 0 : 0]            rst,
    input                   [ 0 : 0]            en,
    input                   [31 : 0]            npc,
    input                   [ 0 : 0]            stall,
    input                   [ 0 : 0]            flush,

    output      reg         [31 : 0]            pc
);
    always @(posedge clk) begin
        if (rst)
            pc <= `zero_address; 
        else if(en == 1'b1) begin // 使能信号有效
            if(stall)   // Lab6
                pc <= pc;
            else
                pc <= npc;     
        end else
            pc <= pc;
    end
endmodule