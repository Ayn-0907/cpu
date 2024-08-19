`timescale 1ns / 1ps

module PC(
    input  wire        rst,
    input  wire        clk,
    input  wire [31:0] din,
    output reg  [31:0] pc
);

    // inner logic of PC

    always @(posedge clk)begin
        if(rst)begin
            pc <= -4;
        end
        else begin
            pc <= din;
        end
    end

endmodule
