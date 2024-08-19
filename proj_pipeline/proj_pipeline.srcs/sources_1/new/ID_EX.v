`timescale 1ns / 1ps

module ID_EX(                           //ID与EX流水线之间的寄存器
    input  wire        clk,   
    input  wire        rst,
    input  wire [ 1:0] npc_op,        
    input  wire        rf_we,
    input  wire [ 2:0] rf_wsel,
    input  wire [ 3:0] alu_op,
    input  wire        alu_sel1,
    input  wire        alu_sel2,
    input  wire        dram_we,
    input  wire [ 1:0] store_op,
    input  wire [31:0] SEXT_ext,
    input  wire [31:0] RF_rD1,
    input  wire [31:0] RF_rD2,
    input  wire [31:0] ID_pc4,
    input  wire [31:0] ID_inst,
    input  wire [31:0] ID_pc,
    input  wire        have_inst_ID,
    input  wire        stop,
    input  wire        flush,
    input  wire [31:0] rD1_forward,
    input  wire [31:0] rD2_forward,
    input  wire        forward_op1,
    input  wire        forward_op2,
    output reg  [ 1:0] EX_npc_op,        
    output reg         EX_rf_we,
    output reg  [ 2:0] EX_rf_wsel,
    output reg  [ 3:0] EX_alu_op,
    output reg         EX_alu_sel1,
    output reg         EX_alu_sel2,
    output reg         EX_dram_we,
    output reg  [ 1:0] EX_store_op,
    output reg  [31:0] EX_SEXT_ext,
    output reg  [31:0] EX_RF_rD1,
    output reg  [31:0] EX_RF_rD2,
    output reg  [31:0] EX_pc4,
    output reg  [31:0] EX_inst,
    output reg  [31:0] EX_pc,
    output reg         have_inst_EX
);

    always @(posedge clk or posedge rst) begin
        if(rst)                 EX_RF_rD1 <= 0;
        else if(forward_op1)    EX_RF_rD1 <= rD1_forward;     //前递
        else                    EX_RF_rD1 <= RF_rD1;
    end

    always @(posedge clk or posedge rst) begin
        if(rst)                 EX_RF_rD2 <= 0;
        else if(forward_op2)    EX_RF_rD2 <= rD2_forward;     //前递
        else                    EX_RF_rD2 <= RF_rD2;
    end


    always @(posedge clk)begin
        if(rst)begin
            EX_npc_op <= 0;          
            EX_rf_we <= 0;
            EX_rf_wsel <= 0;
            EX_alu_op <= 0;
            EX_alu_sel1 <= 0;
            EX_alu_sel2 <= 0;
            EX_dram_we <= 0;
            EX_store_op <= 0;
            EX_SEXT_ext <= 0;
            EX_pc4 <= 0;
            EX_inst <= 0;
            EX_pc <= 0;
            have_inst_EX <= 0;
        end
        else if(stop)begin
            EX_npc_op <= EX_npc_op;            
            EX_rf_we <= EX_rf_we;
            EX_rf_wsel <= EX_rf_wsel;
            EX_alu_op <= EX_alu_op;
            EX_alu_sel1 <= EX_alu_sel1;
            EX_alu_sel2 <= EX_alu_sel2;
            EX_dram_we <= EX_dram_we;
            EX_store_op <= EX_store_op;
            EX_SEXT_ext <= EX_SEXT_ext;
            EX_pc4 <= EX_pc4;
            EX_inst <= EX_inst;
            EX_pc <= EX_pc;
            have_inst_EX <= 0;
        end
        else if(flush)begin
            EX_npc_op <= npc_op;          
            EX_rf_we <= 0;
            EX_rf_wsel <= 0;
            EX_alu_op <= 0;
            EX_alu_sel1 <= 0;
            EX_alu_sel2 <= 0;
            EX_dram_we <= 0;
            EX_store_op <= 0;
            EX_SEXT_ext <= 0;
            EX_pc4 <= 0;
            EX_inst <= 0;
            EX_pc <= 0;
            have_inst_EX <= 0;
        end
        else begin
            EX_npc_op <= npc_op;            
            EX_rf_we <= rf_we;
            EX_rf_wsel <= rf_wsel;
            EX_alu_op <= alu_op;
            EX_alu_sel1 <= alu_sel1;
            EX_alu_sel2 <= alu_sel2;
            EX_dram_we <= dram_we;
            EX_store_op <= store_op;
            EX_SEXT_ext <= SEXT_ext;
            EX_pc4 <= ID_pc4;
            EX_inst <= ID_inst;
            EX_pc <= ID_pc;
            have_inst_EX <= have_inst_ID;
        end
    end

endmodule