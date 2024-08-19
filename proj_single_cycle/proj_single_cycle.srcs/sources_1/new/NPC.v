`timescale 1ns / 1ps

module NPC(
    input  wire [ 1:0] op,
    input  wire [31:0] PC,
    input  wire [31:0] offset,
    input  wire        br,
    input  wire [31:0] rD1,        //寄存器值，用于jalr跳转
    output reg  [31:0] npc,
    output wire [31:0] pc4
);

    // inner logic of NPC
    assign pc4 = PC+4;

    always @(*)begin
        case (op)
            `NPC_PC4 : 
                npc = PC + 4;
            `NPC_JAL : 
                npc = PC + offset;
            `NPC_BR :
                npc = br ? PC + offset:PC+4;
            `NPC_JALR : 
                npc = rD1 + offset;
        endcase
    end

endmodule
