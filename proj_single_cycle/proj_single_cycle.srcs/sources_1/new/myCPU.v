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
    // Debug Interface
    output wire         debug_wb_have_inst,
    output wire [31:0]  debug_wb_pc,
    output              debug_wb_ena,
    output wire [ 4:0]  debug_wb_reg,
    output wire [31:0]  debug_wb_value
`endif
);

    // TODO: 完成你自己的单周期CPU设计
    assign inst_addr = PC_pc[15:2];
    assign Bus_we = dram_we;
    assign Bus_addr =  ALU_C;
    assign Bus_wdata = RF_rD2;

    wire [31:0]   PC_pc;
    wire [31:0]   SEXT_ext;
    wire [31:0]   ALU_C;
    wire          ALU_f;
    (*mark_debug = "true"*)wire [1:0]    npc_op;
    wire [31:0]   NPC_npc;
    wire [31:0]   NPC_pc4;
    (*mark_debug = "true"*)wire [2:0]    sext_op;
    wire [1:0]    rf_wsel;
    wire          rf_we;
    (*mark_debug = "true"*)wire [3:0]    alu_op;
    (*mark_debug = "true"*)wire          alu_sel1;
    (*mark_debug = "true"*)wire          alu_sel2;
    wire          dram_we;
    wire [31:0]   RF_rD1;
    wire [31:0]   RF_rD2;

    NPC U_NPC (
        .PC         (PC_pc),                
        .offset     (SEXT_ext), 
        .br         (ALU_f), 
        .op         (npc_op),
        .rD1        (RF_rD1),
        .npc        (NPC_npc),               
        .pc4        (NPC_pc4)
    );

    PC U_PC (
        .rst        (cpu_rst),             
        .clk        (cpu_clk),             
        .din        (NPC_npc),            
        .pc         (PC_pc)                 
    );


    SEXT U_SEXT (
        .imm        (inst),  
        .op         (sext_op), 
        .ext        (SEXT_ext)              
    );


    //关于RF的wD接口的多路�?�择�?
    reg  [31:0]    RF_wD;
    always @(*)begin
        case(rf_wsel)
            2'b00 : RF_wD = NPC_pc4;
            2'b01 : RF_wD = SEXT_ext;
            2'b10 : RF_wD = Bus_rdata;
            2'b11 : RF_wD = ALU_C;
        endcase
    end


    RF U_RF (
        .clk        (cpu_clk),             
        .rR1        (inst[19:15]),     
        .rD1        (RF_rD1),               
        .rR2        (inst[24:20]),     
        .rD2        (RF_rD2),              
        .we         (rf_we),           
        .wR         (inst[11:7]),      
        .wD         (RF_wD)                 
    );

    //关于ALU运算数A，B的多路�?�择�?
    wire [31:0]     num_A;
    wire [31:0]     num_B;
    assign num_A = alu_sel1 ? RF_rD1 : PC_pc;
    assign num_B = alu_sel2 ? SEXT_ext : RF_rD2;


    ALU U_ALU (
        .op         (alu_op),          
        .A          (num_A),               
        .B          (num_B),
        .C          (ALU_C),               
        .f          (ALU_f)
    );

    Ctrl U_Ctrl (
        .opcode     (inst[6:0]),       // input  wire [6:0]
        .funct7     (inst[31:25]),     // input  wire [6:0]
        .funct3     (inst[14:12]),     // input  wire [2:0]
        .rf_we      (rf_we),           
        .rf_wsel    (rf_wsel),
        .alu_op     (alu_op),          
        .alu_sel1   (alu_sel1),        
        .alu_sel2   (alu_sel2),        
        .dram_we    (dram_we),           
        .npc_op     (npc_op),
        .sext_op    (sext_op)
    );

    

`ifdef RUN_TRACE
    // Debug Interface
    assign debug_wb_have_inst = cpu_rst ? 1'b0 : 1'b1 ;                                              // 当前时钟周期是否有指令写�? (对单周期CPU，可在复位后恒置1)
    assign debug_wb_pc        = debug_wb_have_inst ? PC_pc : 32'b0;                                  // 当前写回的指令的PC (若wb_have_inst=0，此项可为任意�??)
    assign debug_wb_ena       = debug_wb_have_inst ? rf_we : 1'b0;                                   // 指令写回时，寄存器堆的写使能 (若wb_have_inst=0，此项可为任意�??)
    assign debug_wb_reg       = (debug_wb_have_inst & debug_wb_ena) ? inst[11:7] : 5'b0 ;           // 指令写回时，写入的寄存器�? (若wb_ena或wb_have_inst=0，此项可为任意�??)
    assign debug_wb_value     = (debug_wb_have_inst & debug_wb_ena) ? RF_wD : 5'b0 ;                // 指令写回时，写入寄存器的�? (若wb_ena或wb_have_inst=0，此项可为任意�??)
`endif

endmodule
