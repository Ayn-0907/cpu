`timescale 1ns / 1ps
`include "defines.vh"

module NPC(
    input  wire [31:0] PC,
    input  wire        br,         //是否跳转
    input  wire [ 1:0] EX_npc_op,           
    input  wire [31:0] EX_pc,
    input  wire [31:0] EX_ext,
    input  wire [31:0] ALU_C,
    output wire [31:0] npc,
    output wire [31:0] pc4
);

    // inner logic of NPC
    assign pc4 = PC+4;
    assign npc = br ? jump : PC+4;

    reg [31:0]  jump;

    always @(*) begin
        case(EX_npc_op)
            `NPC_BR : jump = EX_pc + EX_ext;  
            `NPC_JAL : jump = EX_pc + EX_ext;
            `NPC_JALR : jump = ALU_C;
            default : jump = PC + 4;
        endcase
    end


endmodule
