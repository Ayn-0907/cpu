`timescale 1ns / 1ps

module counter #(
    parameter END=24999,
    parameter WIDTH=32
)(
    input clk, 
    input rst, 
    input we, 
    output wire cnt_end
);

    reg cnt_inc;

    always @(posedge clk or posedge rst) begin
        if (rst) cnt_inc <= 1'b0;
        else if (we) cnt_inc <= 1'b1;
        else cnt_inc <= cnt_inc;
    end

    reg[WIDTH-1:0] cnt;

    assign cnt_end = cnt_inc & (cnt == END);

    always @(posedge clk) begin
        if (rst) cnt <= 0;
        else if (cnt_end) cnt <= 0;
        else if (cnt_inc) cnt <= cnt + 1;
        else cnt <= cnt;
    end
endmodule
