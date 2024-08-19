`timescale 1ns / 1ps
`include "defines.vh"

module SEXT(
    input  wire [2:0]  op,
    input  wire [31:0] imm,
    output reg  [31:0] ext
);

    // inner logic of SEXT

    always @(*)begin
        case (op)
            `SEXT_I:
                ext = {{20{imm[31]}}, imm[31:20]};
            `SEXT_S:
                ext = {{20{imm[31]}}, imm[31:25], imm[11:7]};
            `SEXT_B:
                ext = {{20{imm[31]}}, imm[7], imm[30:25], imm[11:8], 1'b0};
            `SEXT_U:
                ext = {imm[31:12], 12'b0};
            `SEXT_J:
                ext = {{12{imm[31]}}, imm[19:12], imm[20], imm[30:21], 1'b0};
            default:
                ext = 32'b0;
        endcase
    end

endmodule
