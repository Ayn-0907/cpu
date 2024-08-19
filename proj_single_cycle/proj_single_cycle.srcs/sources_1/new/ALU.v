`timescale 1ns / 1ps
`include "defines.vh"

module ALU(
    input  wire [ 3:0] op,      // 实际位宽与运算种类有关
    input  wire [31:0] A,
    input  wire [31:0] B,
    output reg  [31:0] C,
    output reg         f
);

    // inner logic of ALU
    reg  [31:0]  swap;

    always @(*)begin
        case (op)
            `ALU_ADD:begin
                C = A + B;
                f = 1'b0;
            end
            `ALU_SUB:begin
                C = A - B;
                f = 1'b0;
            end
            `ALU_AND:begin
                C = A & B;
                f = 1'b0;
            end
            `ALU_OR:begin
                C = A | B;
                f = 1'b0;
            end
            `ALU_XOR:begin
                C = A ^ B;
                f = 1'b0;
            end
            `ALU_SLL:begin
                C = A << B[4: 0];
                f = 1'b0;
            end
            `ALU_SRL:begin
                C = A >> B[4: 0];
                f = 1'b0;
            end
            `ALU_SRA:begin
                C = $signed(A) >>> B[4: 0];
                f = 1'b0;
            end
            `ALU_SLT:begin
                swap = A - B;
                if(swap[31]) C = 1;
                else C = 0;
                f = 1'b0; 
            end
            `ALU_BEQ:begin
                if(A == B) f = 1'b1;
                else f = 1'b0;
                C = A + B;
            end
            `ALU_BNE:begin
                if(A == B) f = 1'b0;
                else f = 1'b1;
                C = A + B;
            end
            `ALU_BLT:begin
                C = A - B;
                f = C[31];
            end
            `ALU_BGE:begin
                C = A - B;
                f = C[31]-1;
            end
            default:begin
                C = C;
                f = 1'b0;
            end
        endcase
    end


endmodule
