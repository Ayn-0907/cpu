`timescale 1ns / 1ps
`include "defines.vh"

module STORE(
    input  wire [31:0] indata,
    input  wire [31:0] initial_data,
    input  wire [1:0]  shift,         //用于判断偏移量
    input  wire [1:0]  op,
    output reg  [31:0] outdata
);

    always @(*) begin
        case(op)
            `STORE_SB:begin
                case(shift)
                    2'b00:outdata = {initial_data[31:8],indata[7:0]};
                    2'b01:outdata = {initial_data[31:16],indata[7:0],initial_data[7:0]};
                    2'b10:outdata = {initial_data[31:24],indata[7:0],initial_data[15:0]};
                    2'b11:outdata = {indata[7:0],initial_data[23:0]};
                    default: outdata = 32'b0;
                endcase
            end
            `STORE_SH:
                case(shift)
                    2'b00:outdata = {initial_data[31:16],indata[15:0]};
                    2'b10:outdata = {indata[15:0],initial_data[15:0]};
                    default: outdata = 32'b0;
                endcase
            `STORE_SW:
                outdata = indata;
            default: outdata = 32'b0;
        endcase
    end
    

endmodule