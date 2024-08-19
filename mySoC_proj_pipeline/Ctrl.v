`timescale 1ns / 1ps
`include "defines.vh"

module Ctrl(
    input  wire [6:0] opcode,
    input  wire [6:0] funct7,
    input  wire [2:0] funct3,

    output wire       have_inst_ID,

    output wire       rf_we,
    output reg  [2:0] rf_wsel,

    output reg  [3:0] alu_op,
    output wire       alu_sel1,
    output wire       alu_sel2,
    
    output wire       dram_we,

    output reg  [2:0] sext_op,

    output reg  [1:0] npc_op,

    output reg  [1:0] store_op
);

    // inner logic of CTRL
    assign have_inst_ID = r_typ|s_typ|i_typ|u_typ|b_typ|l_typ|jr_typ|a_typ|j_typ;

    wire r_typ = (opcode == 7'b0110011) ? 1'b1 : 1'b0;
    wire s_typ = (opcode == 7'b0100011) ? 1'b1 : 1'b0;
    wire i_typ = (opcode == 7'b0010011) ? 1'b1 : 1'b0;
    wire u_typ = (opcode == 7'b0110111) ? 1'b1 : 1'b0;
    wire b_typ = (opcode == 7'b1100011) ? 1'b1 : 1'b0;
    wire l_typ = (opcode == 7'b0000011) ? 1'b1 : 1'b0;         //load
    wire jr_typ = (opcode == 7'b1100111) ? 1'b1 : 1'b0;         //jalr
    wire a_typ = (opcode == 7'b0010111) ? 1'b1 : 1'b0;         //auipc
    wire j_typ = (opcode == 7'b1101111) ? 1'b1 : 1'b0;         //jal

    wire inst_add = r_typ & (funct7 == 7'b0000000) & (funct3 == 3'b000);
    wire inst_sub = r_typ & (funct7 == 7'b0100000) & (funct3 == 3'b000);
    wire inst_and = r_typ & (funct7 == 7'b0000000) & (funct3 == 3'b111);
    wire inst_or  = r_typ & (funct7 == 7'b0000000) & (funct3 == 3'b110);
    wire inst_xor = r_typ & (funct7 == 7'b0000000) & (funct3 == 3'b100);
    wire inst_sll = r_typ & (funct7 == 7'b0000000) & (funct3 == 3'b001);
    wire inst_srl = r_typ & (funct7 == 7'b0000000) & (funct3 == 3'b101);
    wire inst_sra = r_typ & (funct7 == 7'b0100000) & (funct3 == 3'b101);
    wire inst_slt = r_typ & (funct7 == 7'b0000000) & (funct3 == 3'b010);
    wire inst_sltu = r_typ & (funct7 == 7'b0000000) & (funct3 == 3'b011);
    wire inst_addi = i_typ & (funct3 == 3'b000);
    wire inst_andi = i_typ & (funct3 == 3'b111);
    wire inst_ori = i_typ & (funct3 == 3'b110);
    wire inst_xori = i_typ & (funct3 == 3'b100);
    wire inst_slli = i_typ & (funct7 == 7'b0000000) & (funct3 == 3'b001);
    wire inst_srli = i_typ & (funct7 == 7'b0000000) & (funct3 == 3'b101);
    wire inst_srai = i_typ & (funct7 == 7'b0100000) & (funct3 == 3'b101);
    wire inst_slti = i_typ & (funct3 == 3'b010);
    wire inst_sltiu = i_typ & (funct3 == 3'b011);
    wire inst_lb = l_typ & (funct3 == 3'b000);
    wire inst_lbu = l_typ & (funct3 == 3'b100);
    wire inst_lh = l_typ & (funct3 == 3'b001);
    wire inst_lhu = l_typ & (funct3 == 3'b101);
    wire inst_lw = l_typ & (funct3 == 3'b010);
    wire inst_jalr = jr_typ & (funct3 == 3'b000);
    wire inst_sb = s_typ & (funct3 == 3'b000);
    wire inst_sh = s_typ & (funct3 == 3'b001);
    wire inst_sw = s_typ & (funct3 == 3'b010);
    wire inst_beq = b_typ & (funct3 == 3'b000);
    wire inst_bne = b_typ & (funct3 == 3'b001);
    wire inst_blt = b_typ & (funct3 == 3'b100);
    wire inst_bltu = b_typ & (funct3 == 3'b110);
    wire inst_bge = b_typ & (funct3 == 3'b101);
    wire inst_bgeu = b_typ & (funct3 == 3'b111);
    wire inst_lui = u_typ;
    wire inst_auipc = a_typ;
    wire inst_jal = j_typ;

    assign rf_we    = (inst_add  | inst_sub  | inst_and  |
                       inst_or   | inst_xor  | inst_sll  | 
                       inst_srl  | inst_sra  | inst_slt  |
                       inst_sltu | inst_addi | inst_andi | 
                       inst_ori  | inst_xori | inst_slli | 
                       inst_srli | inst_srai | inst_slti |
                       inst_sltiu| inst_lb   | inst_lbu  |
                       inst_lh   | inst_lhu  | inst_lw   | 
                       inst_jalr | inst_lui  | inst_auipc|
                       inst_jal)  ? 1'b1 : 1'b0;                 //寄存器堆写使能

    always @(*)begin                                            //选择写入寄存器堆的数据
        if(inst_jal | inst_jalr) rf_wsel = 3'b000;
        else if(inst_lui) rf_wsel = 3'b001;
        else if(inst_lw) rf_wsel = 3'b010;
        else if(inst_lb) rf_wsel = 3'b100;
        else if(inst_lbu) rf_wsel = 3'b101;
        else if(inst_lh) rf_wsel = 3'b110;
        else if(inst_lhu) rf_wsel = 3'b111;
        else rf_wsel = 3'b011;
    end

    always @(*)begin                                            //选择alu的运算方式
        if(inst_add | inst_addi | inst_lb | inst_lbu | inst_lh | inst_lhu |
            inst_lw | inst_jalr | inst_sb | inst_sh  | inst_sw | inst_lui |
            inst_auipc | inst_jal) alu_op = `ALU_ADD;
        else if(inst_sub) alu_op = `ALU_SUB;
        else if(inst_and | inst_andi) alu_op = `ALU_AND;
        else if(inst_or | inst_ori) alu_op = `ALU_OR;
        else if(inst_xor | inst_xori) alu_op = `ALU_XOR;
        else if(inst_sll | inst_slli) alu_op = `ALU_SLL;
        else if(inst_srl | inst_srli) alu_op = `ALU_SRL;
        else if(inst_sra | inst_srai) alu_op = `ALU_SRA;
        else if(inst_slt | inst_slti) alu_op = `ALU_SLT;
        else if(inst_beq) alu_op = `ALU_BEQ;
        else if(inst_bne) alu_op = `ALU_BNE;
        else if(inst_blt) alu_op = `ALU_BLT;
        else if(inst_sltu | inst_sltiu) alu_op = `ALU_SLTU;
        else if(inst_bltu) alu_op = `ALU_BLTU;
        else if(inst_bgeu) alu_op = `ALU_BGEU;
        else alu_op = `ALU_BGE;
    end

   
    assign alu_sel1 = (inst_auipc) ? 1'b0 : 1'b1;
    assign alu_sel2 = (inst_addi | inst_andi | inst_ori | inst_xori | inst_slli | inst_srli | inst_srai | inst_slti | 
                       inst_sltiu| inst_lb   | inst_lbu | inst_lh   | inst_lhu  | inst_lw   | inst_jalr | inst_sb   |
                       inst_sh   | inst_sw | inst_auipc) ? 1'b1 : 1'b0;

    assign dram_we   = (inst_sw | inst_sb | inst_sh) ? 1'b1 : 1'b0;

    always @(*)begin
        if(i_typ | l_typ | jr_typ) sext_op = `SEXT_I;
        else if(s_typ) sext_op = `SEXT_S;
        else if(b_typ) sext_op = `SEXT_B;
        else if(j_typ) sext_op = `SEXT_J;
        else sext_op = `SEXT_U;
    end

    always @(*)begin
        if (inst_jal) npc_op = `NPC_JAL;
        else if(inst_beq | inst_bne | inst_blt | inst_bltu | inst_bge | inst_bgeu) npc_op = `NPC_BR;
        else if(inst_jalr) npc_op = `NPC_JALR;
        else npc_op = `NPC_PC4;
    end

    always @(*)begin
        if(inst_sb) store_op = `STORE_SB;
        else if(inst_sh) store_op = `STORE_SH;
        else store_op = `STORE_SW;
    end

endmodule
