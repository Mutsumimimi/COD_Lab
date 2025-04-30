`define     LW      4'B0000
`define     LH      4'B0001
`define     LB      4'B0010
`define     LHU     4'B0011
`define     LBU     4'B0100
`define     SW      4'B0101
`define     SH      4'B0110
`define     SB      4'B0111

module SLU (
    input                   [31 : 0]                addr,
    input                   [ 3 : 0]                dmem_access,

    input                   [31 : 0]                rd_in,
    input                   [31 : 0]                wd_in,

    output      reg         [31 : 0]                rd_out,
    output      reg         [31 : 0]                wd_out
);
    // address呢？？已解决. 写内存的时候write_data始终从低位取吗？如[15:0], [7:0]

    always @(*) begin
        case(dmem_access)
            `LW :   rd_out = rd_in;
            `LH :   begin 
                // 半字访问时，地址必须是偶数才是合法访问
                    if(addr[0:0] == 1'b0) begin
                        rd_out = (addr[1:1] == 1'b0) ? 
                            {{16{rd_in[15:15]}}, rd_in[15:0]} :
                            {{16{rd_in[15:15]}}, rd_in[31:16]};
                    end
                    else rd_out = 32'b0;
                end
            `LB :   begin 
                    if(addr[1:0] == 2'b00)
                        rd_out = {{24{rd_in[ 7: 7]}}, rd_in[7:0]};
                    else if(addr[1:0] == 2'b01)
                        rd_out = {{24{rd_in[15:15]}}, rd_in[15:8]};
                    else if(addr[1:0] == 2'b10)
                        rd_out = {{24{rd_in[23:23]}}, rd_in[23:16]};
                    else
                        rd_out = {{24{rd_in[31:31]}}, rd_in[31:24]};
                end
            `LHU :  begin 
                // 半字访问时，地址必须是偶数才是合法访问
                    if(addr[0:0] == 1'b0) begin
                        rd_out = (addr[1:1] == 1'b0) ? 
                            {{16'b0}, rd_in[15:0]} :
                            {{16'b0}, rd_in[31:16]};
                    end
                    else rd_out = 32'b0;
                end
            `LBU :  begin 
                if(addr[1:0] == 2'b00)
                    rd_out = {{24'b0}, rd_in[7:0]};
                else if(addr[1:0] == 2'b01)
                    rd_out = {{24'b0}, rd_in[15:8]};
                else if(addr[1:0] == 2'b10)
                    rd_out = {{24'b0}, rd_in[23:16]};
                else
                    rd_out = {{24'b0}, rd_in[31:24]};
            end
            default:rd_out = 32'b0;
        endcase
    end
    always @(*) begin
        case(dmem_access)
            `SW :   wd_out = wd_in;
            `SH :   begin 
                // 半字访问时，地址必须是偶数才是合法访问
                if(addr[0:0] == 1'b0) begin
                    wd_out = (addr[1:1] == 1'b0) ? 
                        {rd_in[31:16], wd_in[15:0]} :
                        {wd_in[15: 0], rd_in[15:0]};
                end
                else wd_out = 32'b0;
            end
            `SB :   begin 
                if(addr[1:0] == 2'b00)
                    wd_out = {rd_in[31:8], wd_in[7: 0]};
                else if(addr[1:0] == 2'b01)
                    wd_out = {rd_in[31:16], wd_in[7: 0], rd_in[7:0]};
                else if(addr[1:0] == 2'b10)
                    wd_out = {rd_in[31:24], wd_in[7: 0], rd_in[15:0]};
                else
                    wd_out = {wd_in[7: 0], rd_in[23: 0]};
            end
            default:wd_out = 32'b0;
        endcase
    end  

endmodule