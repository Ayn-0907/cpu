// Annotate this macro before synthesis
//`define RUN_TRACE

// TODO: 在此处定义你的宏
//NPC模块
`define NPC_PC4 2'b00
`define NPC_JAL 2'b01
`define NPC_BR 2'b10
`define NPC_JALR 2'b11

//SEXT模块
`define SEXT_I 3'b000
`define SEXT_S 3'b001
`define SEXT_B 3'b010
`define SEXT_U 3'b011
`define SEXT_J 3'b100

//ALU模块
`define ALU_ADD 4'b0000
`define ALU_SUB 4'b0001
`define ALU_AND 4'b0010
`define ALU_OR  4'b0011
`define ALU_XOR 4'b0100
`define ALU_SLL 4'b0101
`define ALU_SRL 4'b0110
`define ALU_SRA 4'b0111
`define ALU_SLT 4'b1000
`define ALU_BEQ 4'b1001
`define ALU_BNE 4'b1010
`define ALU_BLT 4'b1011
`define ALU_BGE 4'b1100
`define ALU_SLTU 4'b1101
`define ALU_BLTU 4'b1110
`define ALU_BGEU 4'b1111

//Store模块
`define STORE_SB 2'b00
`define STORE_SH 2'b01
`define STORE_SW 2'b10

// 

// 外设I/O接口电路的端口地�?
`define PERI_ADDR_DIG   32'hFFFF_F000
`define PERI_ADDR_LED   32'hFFFF_F060
`define PERI_ADDR_SW    32'hFFFF_F070
`define PERI_ADDR_BTN   32'hFFFF_F078
