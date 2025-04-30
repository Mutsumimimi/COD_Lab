module TOP (
    input                   [ 0 : 0]            clk,
    input                   [ 0 : 0]            rst,

    input                   [ 0 : 0]            enable,
    input                   [ 4 : 0]            in,
    input                   [ 1 : 0]            ctrl,

    output                  [ 3 : 0]            seg_data,
    output                  [ 2 : 0]            seg_an
);

reg [4:0]   src0;
reg [4:0]   src1;
reg [4:0]   op;

always @(*) begin
    if(ctrl == 2'B01 && enable)
        src0 = in[4:0];
    else
        src0 = src0;
end

always @(*) begin
    if(ctrl == 2'B10 && enable)
        src1 = in[4:0];
    else
        src1 = src1;
end

always @(*) begin
    if(ctrl == 2'B00 && enable)
        op = in[4:0];
end

wire [31:0] src0_str;
wire [31:0] src1_str;
wire [31:0] res_str;
assign src0_str = {{27{src0[4:4]}}, src0};
assign src1_str = {{27{src1[4:4]}}, src1};

ALU ALU (
    .alu_src0(src0_str),
    .alu_src1(src1_str),
    .alu_op(op),
    .alu_res(res_str)
);

reg [31:0]  output_data;
always @(*) begin
    if(ctrl == 2'B11 && enable)
        output_data = res_str;
end

Segment Segment (
    .clk(clk),
    .rst(rst),
    .output_data(output_data),
    .seg_data(seg_data),
    .seg_an(seg_an)    
);
endmodule