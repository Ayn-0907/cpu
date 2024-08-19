`timescale 1ns / 1ps

`include "defines.vh"

module myCPU (
    input  wire         cpu_rst,
    input  wire         cpu_clk,

    // Interface to IROM
`ifdef RUN_TRACE
    output wire [15:0]  inst_addr,
`else
    output wire [13:0]  inst_addr,
`endif
    input  wire [31:0]  inst,        //IROM输出的指�?
    
    // Interface to Bridge
    output wire [31:0]  Bus_addr,
    input  wire [31:0]  Bus_rdata,   //DROM读出的数�?
    output wire         Bus_we,
    output wire [31:0]  Bus_wdata    //DROM写入的数�?

`ifdef RUN_TRACE
    ,// Debug Interface
    output wire         debug_wb_have_inst,
    output wire [31:0]  debug_wb_pc,
    output              debug_wb_ena,
    output wire [ 4:0]  debug_wb_reg,
    output wire [31:0]  debug_wb_value
`endif
);

    // TODO: 完成你自己的单周期CPU设计
    assign inst_addr = PC_pc[15:2];
    assign Bus_we = MEM_dram_we & have_inst_MEM;
    assign Bus_addr =  MEM_C;
    assign Bus_wdata = STORE_outdata;

    wire [31:0]   PC_pc;
    wire [31:0]   SEXT_ext;
    wire [31:0]   ALU_C;
    wire          ALU_f;
    wire [1:0]    npc_op;
    wire [31:0]   NPC_npc;
    wire [31:0]   NPC_pc4;
    wire [2:0]    sext_op;
    wire [2:0]    rf_wsel;
    wire [3:0]    alu_op;
    wire          alu_sel1;
    wire          alu_sel2;
    wire          dram_we;
    wire [31:0]   RF_rD1;
    wire [31:0]   RF_rD2;
    wire          rf_we;
    wire [1:0]    store_op;
    wire [31:0]   STORE_outdata;

    //流水线输出信号部�?
    wire [31:0]   ID_inst;
    wire [31:0]   ID_pc;
    wire [31:0]   ID_pc4;
    wire [ 1:0]   EX_npc_op;
    wire          EX_rf_we;
    wire [ 2:0]   EX_rf_wsel;
    wire [ 3:0]   EX_alu_op;
    wire          EX_alu_sel1;
    wire          EX_alu_sel2;
    wire          EX_dram_we;
    wire [ 1:0]   EX_store_op;
    wire [31:0]   EX_SEXT_ext;
    wire [31:0]   EX_RF_rD1;
    wire [31:0]   EX_RF_rD2;
    wire [31:0]   EX_pc4;
    wire [31:0]   EX_inst;
    wire [31:0]   EX_pc;
    wire          MEM_f;
    wire [31:0]   MEM_C;
    wire          MEM_dram_we;
    wire [31:0]   MEM_rD2;
    wire [ 1:0]   MEM_op;
    wire [31:0]   MEM_pc4;
    wire [31:0]   MEM_ext;
    wire          MEM_rf_we;
    wire [ 2:0]   MEM_rf_wsel;
    wire [31:0]   MEM_inst;
    wire [31:0]   WB_pc4;
    wire [31:0]   WB_ext;
    wire [31:0]   WB_rdo;
    wire [31:0]   WB_C;
    wire          WB_we;
    wire [ 1:0]   WB_wsel;
    wire [ 4:0]   WB_wR;
    wire          stop;

    //前�?�信号部�?
    wire          forward_op1;
    wire          forward_op2;
    wire [31:0]   rD1_forward;
    wire [31:0]   rD2_forward;

    //用于判断当前部件是否有指�?
    // wire          have_inst_IF;
    wire          have_inst_ID;
    wire          have_inst_EX;
    wire          have_inst_MEM;
    wire          have_inst_WB;

    // assign  have_inst_IF = cpu_rst ? 1'b0 : 1'b1;

    NPC U_NPC (
        .PC         (PC_pc),                
        .br         ((ALU_f|EX_npc_op == `NPC_JAL|EX_npc_op == `NPC_JALR)  & have_inst_EX), 
        .EX_npc_op  (EX_npc_op),
        .EX_pc      (EX_pc),
        .EX_ext     (EX_SEXT_ext),
        .ALU_C      (ALU_C),
        .npc        (NPC_npc),               
        .pc4        (NPC_pc4)    
    );

    PC U_PC (
        .rst        (cpu_rst),             
        .clk        (cpu_clk),             
        .din        (NPC_npc),  
        .stop       (stop),          
        .pc         (PC_pc)                 
    );


    SEXT U_SEXT (
        .imm        (ID_inst),  
        .op         (sext_op), 
        .ext        (SEXT_ext)              
    );


    //关于RF的wD接口的多路�?�择�?
    reg  [31:0]    RF_wD;

    always @(*)begin
        case(WB_wsel)
            3'b000 : RF_wD = WB_pc4;
            3'b001 : RF_wD = WB_ext;
            3'b010 : RF_wD = WB_rdo;
            3'b011 : RF_wD = WB_C;
            3'b100 : begin
                case (WB_C[1:0])
                2'b00 : RF_wD = {{24{WB_rdo[7]}},WB_rdo[7:0]};          //lb指令
                2'b01 : RF_wD = {{24{WB_rdo[15]}},WB_rdo[15:8]};          //lb指令
                2'b10 : RF_wD = {{24{WB_rdo[23]}},WB_rdo[23:16]};          //lb指令
                2'b11 : RF_wD = {{24{WB_rdo[31]}},WB_rdo[31:24]};          //lb指令
                default : RF_wD = {{24{WB_rdo[7]}},WB_rdo[7:0]};          
                endcase 
            end
            3'b101 : begin
                case (WB_C[1:0])
                2'b00 : RF_wD = {24'b0,WB_rdo[7:0]};          //lbu指令
                2'b01 : RF_wD = {24'b0,WB_rdo[15:8]};          //lbu指令
                2'b10 : RF_wD = {24'b0,WB_rdo[23:16]};          //lbu指令
                2'b11 : RF_wD = {24'b0,WB_rdo[31:24]};          //lbu指令
                default : RF_wD = {24'b0,WB_rdo[7:0]};          
                endcase 
            end
            3'b110 : begin
                case (WB_C[1])
                1'b0 : RF_wD = {{16{WB_rdo[15]}},WB_rdo[15:0]};          //lh指令
                1'b1 : RF_wD = {{16{WB_rdo[31]}},WB_rdo[31:16]};          //lh指令
                default : RF_wD = {{16{WB_rdo[15]}},WB_rdo[15:0]};        
                endcase 
            end
            3'b111 : begin
                case (WB_C[1])
                1'b0 : RF_wD = {16'b0,WB_rdo[15:0]};          //lhu指令
                1'b1 : RF_wD = {16'b0,WB_rdo[31:16]};          //lhu指令
                default : RF_wD = {16'b0,WB_rdo[15:0]};        
                endcase 
            end
        endcase
    end


    RF U_RF (
        .clk        (cpu_clk),             
        .rR1        (ID_inst[19:15]),     
        .rD1        (RF_rD1),               
        .rR2        (ID_inst[24:20]),     
        .rD2        (RF_rD2),              
        .we         (WB_we & have_inst_WB),           
        .wR         (WB_wR),      
        .wD         (RF_wD)                 
    );

    //关于ALU运算数A，B的多路�?�择�?
    wire [31:0]     num_A;
    wire [31:0]     num_B;
    assign num_A = EX_alu_sel1 ? EX_RF_rD1 : EX_pc;
    assign num_B = EX_alu_sel2 ? EX_SEXT_ext : EX_RF_rD2;


    ALU U_ALU (
        .op         (EX_alu_op),          
        .A          (num_A),               
        .B          (num_B),
        .C          (ALU_C),               
        .f          (ALU_f)
    );

    Ctrl U_Ctrl (
        .opcode     (ID_inst[6:0]),       // input  wire [6:0]
        .funct7     (ID_inst[31:25]),     // input  wire [6:0]
        .funct3     (ID_inst[14:12]),     // input  wire [2:0]
        .have_inst_ID(have_inst_ID),
        .rf_we      (rf_we),           
        .rf_wsel    (rf_wsel),
        .alu_op     (alu_op),          
        .alu_sel1   (alu_sel1),        
        .alu_sel2   (alu_sel2),        
        .dram_we    (dram_we),           
        .npc_op     (npc_op),
        .sext_op    (sext_op),
        .store_op   (store_op)
    );

    STORE U_STORE (
        .indata        (MEM_rD2),          
        .shift         (MEM_C[1:0]),               
        .op            (MEM_op),      
        .initial_data  (Bus_rdata),       
        .outdata       (STORE_outdata)
    );

    //流水线寄存器部分
    IF_ID U_IF_ID(
        .clk            (cpu_clk),
        .rst            (cpu_rst),
        .IROM_inst      (inst),
        .PC_pc          (PC_pc),
        .NPC_pc4        (NPC_pc4),
        .stop           (stop),
        .flush          ((ALU_f|EX_npc_op == `NPC_JAL|EX_npc_op == `NPC_JALR) & have_inst_EX),
        .ID_inst        (ID_inst),
        .ID_pc          (ID_pc),
        .ID_pc4         (ID_pc4)
    );

    ID_EX U_ID_EX(
        .clk            (cpu_clk),
        .rst            (cpu_rst),
        .npc_op         (npc_op),
        .rf_we          (rf_we),
        .rf_wsel        (rf_wsel),
        .alu_op         (alu_op),
        .alu_sel1       (alu_sel1),
        .alu_sel2       (alu_sel2),
        .dram_we        (dram_we),
        .store_op       (store_op),
        .SEXT_ext       (SEXT_ext),
        .RF_rD1         (RF_rD1),
        .RF_rD2         (RF_rD2),
        .ID_pc4         (ID_pc4),
        .ID_inst        (ID_inst),
        .ID_pc          (ID_pc),
        .have_inst_ID   (have_inst_ID),
        .stop           (stop),
        .flush          ((ALU_f|EX_npc_op == `NPC_JAL|EX_npc_op == `NPC_JALR) & have_inst_EX),
        .rD1_forward    (rD1_forward),
        .rD2_forward    (rD2_forward),
        .forward_op1    (forward_op1),
        .forward_op2    (forward_op2),
        .EX_npc_op      (EX_npc_op),
        .EX_rf_we       (EX_rf_we),
        .EX_rf_wsel     (EX_rf_wsel),
        .EX_alu_op      (EX_alu_op),
        .EX_alu_sel1    (EX_alu_sel1),
        .EX_alu_sel2    (EX_alu_sel2),
        .EX_dram_we     (EX_dram_we),
        .EX_store_op    (EX_store_op),
        .EX_SEXT_ext    (EX_SEXT_ext),
        .EX_RF_rD1      (EX_RF_rD1),
        .EX_RF_rD2      (EX_RF_rD2),
        .EX_pc4         (EX_pc4),
        .EX_inst        (EX_inst),
        .EX_pc          (EX_pc),
        .have_inst_EX   (have_inst_EX)
    );

    EX_MEM U_EX_MEM(
        .clk            (cpu_clk),
        .rst            (cpu_rst),
        .ALU_f          (ALU_f),
        .ALU_C          (ALU_C),
        .EX_reg_we      (EX_dram_we),
        .EX_reg_rD2     (EX_RF_rD2),
        .EX_reg_op      (EX_store_op),
        .EX_pc4         (EX_pc4),
        .EX_ext         (EX_SEXT_ext),
        .EX_rf_we       (EX_rf_we),
        .EX_rf_wsel     (EX_rf_wsel),
        .EX_inst        (EX_inst),
        .have_inst_EX   (have_inst_EX),
        .MEM_f          (MEM_f),
        .MEM_C          (MEM_C),
        .MEM_dram_we    (MEM_dram_we),
        .MEM_rD2        (MEM_rD2),
        .MEM_op         (MEM_op),
        .MEM_pc4        (MEM_pc4),
        .MEM_ext        (MEM_ext),
        .MEM_rf_we      (MEM_rf_we),
        .MEM_rf_wsel    (MEM_rf_wsel),
        .MEM_inst       (MEM_inst),
        .have_inst_MEM  (have_inst_MEM)
    );

    MEM_WB U_MEM_WB(
        .clk            (cpu_clk),
        .rst            (cpu_rst),
        .MEM_pc4        (MEM_pc4),
        .MEM_ext        (MEM_ext),
        .MEM_rdo        (Bus_rdata),
        .MEM_C          (MEM_C),
        .MEM_rf_we      (MEM_rf_we),
        .MEM_wsel       (MEM_rf_wsel),
        .MEM_wR         (MEM_inst[11:7]),
        .have_inst_MEM  (have_inst_MEM),
        .WB_pc4         (WB_pc4),
        .WB_ext         (WB_ext),
        .WB_rdo         (WB_rdo),
        .WB_C           (WB_C),
        .WB_we          (WB_we),
        .WB_wsel        (WB_wsel),
        .WB_wR          (WB_wR),
        .have_inst_WB   (have_inst_WB)
    );

    //数据冒险
    DATA_RISK U_DATA_RISK(
        .ID_RS1         (ID_inst[19:15]),
        .ID_RS2         (ID_inst[24:20]),
        .ID_EX_RD       (EX_inst[11:7]),
        .EX_MEM_RD      (MEM_inst[11:7]),
        .MEM_WB_RD      (WB_wR),
        .RS1_SEL        (alu_sel1),
        .RS2_SEL        (alu_sel2),
        .ALU_C          (ALU_C),
        .EX_SEXT_ext    (EX_SEXT_ext),
        .EX_pc4         (EX_pc4),
        .EX_rf_wsel     (EX_rf_wsel),
        .MEM_C          (MEM_C),
        .MEM_ext        (MEM_ext),
        .MEM_pc4        (MEM_pc4),
        .MEM_rdo        (Bus_rdata),
        .MEM_rf_wsel    (MEM_rf_wsel),
        .ID_dram_we     (dram_we),
        .RF_wD          (RF_wD),
        .rf_we_EX       (EX_rf_we & have_inst_EX),
        .rf_we_MEM      (MEM_rf_we & have_inst_MEM),
        .rf_we_WB       (WB_we & have_inst_WB),
        .forward_op1    (forward_op1),
        .forward_op2    (forward_op2),
        .rD1_forward    (rD1_forward),
        .rD2_forward    (rD2_forward),
        .stop           (stop)
    );



`ifdef RUN_TRACE
    // Debug Interface
    assign debug_wb_have_inst = have_inst_WB ? 1'b1 : 1'b0 ;                                              // 当前时钟周期是否有指令写�? (对单周期CPU，可在复位后恒置1)
    assign debug_wb_pc        = debug_wb_have_inst ? WB_pc4 - 4: 32'b0;                                  // 当前写回的指令的PC (若wb_have_inst=0，此项可为任意�??)
    assign debug_wb_ena       = debug_wb_have_inst ? WB_we : 1'b0;                                   // 指令写回时，寄存器堆的写使能 (若wb_have_inst=0，此项可为任意�??)
    assign debug_wb_reg       = (debug_wb_have_inst & debug_wb_ena) ? WB_wR : 5'b0 ;           // 指令写回时，写入的寄存器�? (若wb_ena或wb_have_inst=0，此项可为任意�??)
    assign debug_wb_value     = (debug_wb_have_inst & debug_wb_ena) ? RF_wD : 32'b0 ;                // 指令写回时，写入寄存器的�? (若wb_ena或wb_have_inst=0，此项可为任意�??)
`endif

endmodule
