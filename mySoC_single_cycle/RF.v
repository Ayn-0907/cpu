`timescale 1ns / 1ps

module RF(
    input  wire        clk,

    input  wire [ 4:0] rR1,
    output wire [31:0] rD1,
    
    input  wire [ 4:0] rR2,
    output wire [31:0] rD2,
    
    input  wire        we,
    input  wire [ 4:0] wR,
    input  wire [31:0] wD
);

    // inner logic of RF
    reg [31:0] regs[31:0];

    assign rD1 = regs[rR1];
    assign rD2 = regs[rR2];

    always @(posedge clk)begin
        if(we == 1'b1)begin
            if(wR != 0) regs[wR] <= wD;
            else regs[wR] <= 0;
        end
        else regs[wR] <= regs[wR];
    end
endmodule
