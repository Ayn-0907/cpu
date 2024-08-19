// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Fri Jul 19 15:05:00 2024
// Host        : PA03 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ IROM_sim_netlist.v
// Design      : IROM
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tfgg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "IROM,dist_mem_gen_v8_0_12,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "dist_mem_gen_v8_0_12,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (a,
    spo);
  input [13:0]a;
  output [31:0]spo;

  wire [13:0]a;
  wire [31:0]spo;
  wire [31:0]NLW_U0_dpo_UNCONNECTED;
  wire [31:0]NLW_U0_qdpo_UNCONNECTED;
  wire [31:0]NLW_U0_qspo_UNCONNECTED;

  (* C_FAMILY = "artix7" *) 
  (* C_HAS_D = "0" *) 
  (* C_HAS_DPO = "0" *) 
  (* C_HAS_DPRA = "0" *) 
  (* C_HAS_I_CE = "0" *) 
  (* C_HAS_QDPO = "0" *) 
  (* C_HAS_QDPO_CE = "0" *) 
  (* C_HAS_QDPO_CLK = "0" *) 
  (* C_HAS_QDPO_RST = "0" *) 
  (* C_HAS_QDPO_SRST = "0" *) 
  (* C_HAS_WE = "0" *) 
  (* C_MEM_TYPE = "0" *) 
  (* C_PIPELINE_STAGES = "0" *) 
  (* C_QCE_JOINED = "0" *) 
  (* C_QUALIFY_WE = "0" *) 
  (* C_REG_DPRA_INPUT = "0" *) 
  (* c_addr_width = "14" *) 
  (* c_default_data = "0" *) 
  (* c_depth = "16384" *) 
  (* c_elaboration_dir = "./" *) 
  (* c_has_clk = "0" *) 
  (* c_has_qspo = "0" *) 
  (* c_has_qspo_ce = "0" *) 
  (* c_has_qspo_rst = "0" *) 
  (* c_has_qspo_srst = "0" *) 
  (* c_has_spo = "1" *) 
  (* c_mem_init_file = "IROM.mif" *) 
  (* c_parser_type = "1" *) 
  (* c_read_mif = "1" *) 
  (* c_reg_a_d_inputs = "0" *) 
  (* c_sync_enable = "1" *) 
  (* c_width = "32" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dist_mem_gen_v8_0_12 U0
       (.a(a),
        .clk(1'b0),
        .d({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .dpo(NLW_U0_dpo_UNCONNECTED[31:0]),
        .dpra({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .i_ce(1'b1),
        .qdpo(NLW_U0_qdpo_UNCONNECTED[31:0]),
        .qdpo_ce(1'b1),
        .qdpo_clk(1'b0),
        .qdpo_rst(1'b0),
        .qdpo_srst(1'b0),
        .qspo(NLW_U0_qspo_UNCONNECTED[31:0]),
        .qspo_ce(1'b1),
        .qspo_rst(1'b0),
        .qspo_srst(1'b0),
        .spo(spo),
        .we(1'b0));
endmodule

(* C_ADDR_WIDTH = "14" *) (* C_DEFAULT_DATA = "0" *) (* C_DEPTH = "16384" *) 
(* C_ELABORATION_DIR = "./" *) (* C_FAMILY = "artix7" *) (* C_HAS_CLK = "0" *) 
(* C_HAS_D = "0" *) (* C_HAS_DPO = "0" *) (* C_HAS_DPRA = "0" *) 
(* C_HAS_I_CE = "0" *) (* C_HAS_QDPO = "0" *) (* C_HAS_QDPO_CE = "0" *) 
(* C_HAS_QDPO_CLK = "0" *) (* C_HAS_QDPO_RST = "0" *) (* C_HAS_QDPO_SRST = "0" *) 
(* C_HAS_QSPO = "0" *) (* C_HAS_QSPO_CE = "0" *) (* C_HAS_QSPO_RST = "0" *) 
(* C_HAS_QSPO_SRST = "0" *) (* C_HAS_SPO = "1" *) (* C_HAS_WE = "0" *) 
(* C_MEM_INIT_FILE = "IROM.mif" *) (* C_MEM_TYPE = "0" *) (* C_PARSER_TYPE = "1" *) 
(* C_PIPELINE_STAGES = "0" *) (* C_QCE_JOINED = "0" *) (* C_QUALIFY_WE = "0" *) 
(* C_READ_MIF = "1" *) (* C_REG_A_D_INPUTS = "0" *) (* C_REG_DPRA_INPUT = "0" *) 
(* C_SYNC_ENABLE = "1" *) (* C_WIDTH = "32" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dist_mem_gen_v8_0_12
   (a,
    d,
    dpra,
    clk,
    we,
    i_ce,
    qspo_ce,
    qdpo_ce,
    qdpo_clk,
    qspo_rst,
    qdpo_rst,
    qspo_srst,
    qdpo_srst,
    spo,
    dpo,
    qspo,
    qdpo);
  input [13:0]a;
  input [31:0]d;
  input [13:0]dpra;
  input clk;
  input we;
  input i_ce;
  input qspo_ce;
  input qdpo_ce;
  input qdpo_clk;
  input qspo_rst;
  input qdpo_rst;
  input qspo_srst;
  input qdpo_srst;
  output [31:0]spo;
  output [31:0]dpo;
  output [31:0]qspo;
  output [31:0]qdpo;

  wire \<const0> ;
  wire [13:0]a;
  wire [31:1]\^spo ;

  assign dpo[31] = \<const0> ;
  assign dpo[30] = \<const0> ;
  assign dpo[29] = \<const0> ;
  assign dpo[28] = \<const0> ;
  assign dpo[27] = \<const0> ;
  assign dpo[26] = \<const0> ;
  assign dpo[25] = \<const0> ;
  assign dpo[24] = \<const0> ;
  assign dpo[23] = \<const0> ;
  assign dpo[22] = \<const0> ;
  assign dpo[21] = \<const0> ;
  assign dpo[20] = \<const0> ;
  assign dpo[19] = \<const0> ;
  assign dpo[18] = \<const0> ;
  assign dpo[17] = \<const0> ;
  assign dpo[16] = \<const0> ;
  assign dpo[15] = \<const0> ;
  assign dpo[14] = \<const0> ;
  assign dpo[13] = \<const0> ;
  assign dpo[12] = \<const0> ;
  assign dpo[11] = \<const0> ;
  assign dpo[10] = \<const0> ;
  assign dpo[9] = \<const0> ;
  assign dpo[8] = \<const0> ;
  assign dpo[7] = \<const0> ;
  assign dpo[6] = \<const0> ;
  assign dpo[5] = \<const0> ;
  assign dpo[4] = \<const0> ;
  assign dpo[3] = \<const0> ;
  assign dpo[2] = \<const0> ;
  assign dpo[1] = \<const0> ;
  assign dpo[0] = \<const0> ;
  assign qdpo[31] = \<const0> ;
  assign qdpo[30] = \<const0> ;
  assign qdpo[29] = \<const0> ;
  assign qdpo[28] = \<const0> ;
  assign qdpo[27] = \<const0> ;
  assign qdpo[26] = \<const0> ;
  assign qdpo[25] = \<const0> ;
  assign qdpo[24] = \<const0> ;
  assign qdpo[23] = \<const0> ;
  assign qdpo[22] = \<const0> ;
  assign qdpo[21] = \<const0> ;
  assign qdpo[20] = \<const0> ;
  assign qdpo[19] = \<const0> ;
  assign qdpo[18] = \<const0> ;
  assign qdpo[17] = \<const0> ;
  assign qdpo[16] = \<const0> ;
  assign qdpo[15] = \<const0> ;
  assign qdpo[14] = \<const0> ;
  assign qdpo[13] = \<const0> ;
  assign qdpo[12] = \<const0> ;
  assign qdpo[11] = \<const0> ;
  assign qdpo[10] = \<const0> ;
  assign qdpo[9] = \<const0> ;
  assign qdpo[8] = \<const0> ;
  assign qdpo[7] = \<const0> ;
  assign qdpo[6] = \<const0> ;
  assign qdpo[5] = \<const0> ;
  assign qdpo[4] = \<const0> ;
  assign qdpo[3] = \<const0> ;
  assign qdpo[2] = \<const0> ;
  assign qdpo[1] = \<const0> ;
  assign qdpo[0] = \<const0> ;
  assign qspo[31] = \<const0> ;
  assign qspo[30] = \<const0> ;
  assign qspo[29] = \<const0> ;
  assign qspo[28] = \<const0> ;
  assign qspo[27] = \<const0> ;
  assign qspo[26] = \<const0> ;
  assign qspo[25] = \<const0> ;
  assign qspo[24] = \<const0> ;
  assign qspo[23] = \<const0> ;
  assign qspo[22] = \<const0> ;
  assign qspo[21] = \<const0> ;
  assign qspo[20] = \<const0> ;
  assign qspo[19] = \<const0> ;
  assign qspo[18] = \<const0> ;
  assign qspo[17] = \<const0> ;
  assign qspo[16] = \<const0> ;
  assign qspo[15] = \<const0> ;
  assign qspo[14] = \<const0> ;
  assign qspo[13] = \<const0> ;
  assign qspo[12] = \<const0> ;
  assign qspo[11] = \<const0> ;
  assign qspo[10] = \<const0> ;
  assign qspo[9] = \<const0> ;
  assign qspo[8] = \<const0> ;
  assign qspo[7] = \<const0> ;
  assign qspo[6] = \<const0> ;
  assign qspo[5] = \<const0> ;
  assign qspo[4] = \<const0> ;
  assign qspo[3] = \<const0> ;
  assign qspo[2] = \<const0> ;
  assign qspo[1] = \<const0> ;
  assign qspo[0] = \<const0> ;
  assign spo[31:1] = \^spo [31:1];
  assign spo[0] = \^spo [1];
  GND GND
       (.G(\<const0> ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dist_mem_gen_v8_0_12_synth \synth_options.dist_mem_inst 
       (.a(a),
        .spo(\^spo ));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dist_mem_gen_v8_0_12_synth
   (spo,
    a);
  output [30:0]spo;
  input [13:0]a;

  wire [13:0]a;
  wire [30:0]spo;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_rom \gen_rom.rom_inst 
       (.a(a),
        .spo(spo));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_rom
   (spo,
    a);
  output [30:0]spo;
  input [13:0]a;

  wire [13:0]a;
  wire [30:0]spo;
  wire \spo[0]_INST_0_i_1_n_0 ;
  wire \spo[0]_INST_0_i_2_n_0 ;
  wire \spo[10]_INST_0_i_1_n_0 ;
  wire \spo[10]_INST_0_i_2_n_0 ;
  wire \spo[10]_INST_0_i_3_n_0 ;
  wire \spo[10]_INST_0_i_4_n_0 ;
  wire \spo[10]_INST_0_i_5_n_0 ;
  wire \spo[10]_INST_0_i_6_n_0 ;
  wire \spo[11]_INST_0_i_1_n_0 ;
  wire \spo[11]_INST_0_i_2_n_0 ;
  wire \spo[11]_INST_0_i_3_n_0 ;
  wire \spo[11]_INST_0_i_4_n_0 ;
  wire \spo[11]_INST_0_i_5_n_0 ;
  wire \spo[11]_INST_0_i_6_n_0 ;
  wire \spo[12]_INST_0_i_1_n_0 ;
  wire \spo[12]_INST_0_i_2_n_0 ;
  wire \spo[12]_INST_0_i_3_n_0 ;
  wire \spo[12]_INST_0_i_4_n_0 ;
  wire \spo[12]_INST_0_i_5_n_0 ;
  wire \spo[12]_INST_0_i_6_n_0 ;
  wire \spo[13]_INST_0_i_1_n_0 ;
  wire \spo[13]_INST_0_i_2_n_0 ;
  wire \spo[13]_INST_0_i_3_n_0 ;
  wire \spo[13]_INST_0_i_4_n_0 ;
  wire \spo[13]_INST_0_i_5_n_0 ;
  wire \spo[13]_INST_0_i_6_n_0 ;
  wire \spo[14]_INST_0_i_1_n_0 ;
  wire \spo[14]_INST_0_i_2_n_0 ;
  wire \spo[14]_INST_0_i_3_n_0 ;
  wire \spo[14]_INST_0_i_4_n_0 ;
  wire \spo[14]_INST_0_i_5_n_0 ;
  wire \spo[14]_INST_0_i_6_n_0 ;
  wire \spo[15]_INST_0_i_1_n_0 ;
  wire \spo[15]_INST_0_i_2_n_0 ;
  wire \spo[15]_INST_0_i_3_n_0 ;
  wire \spo[15]_INST_0_i_4_n_0 ;
  wire \spo[15]_INST_0_i_5_n_0 ;
  wire \spo[15]_INST_0_i_6_n_0 ;
  wire \spo[16]_INST_0_i_1_n_0 ;
  wire \spo[16]_INST_0_i_2_n_0 ;
  wire \spo[16]_INST_0_i_3_n_0 ;
  wire \spo[16]_INST_0_i_4_n_0 ;
  wire \spo[16]_INST_0_i_5_n_0 ;
  wire \spo[16]_INST_0_i_6_n_0 ;
  wire \spo[17]_INST_0_i_1_n_0 ;
  wire \spo[17]_INST_0_i_2_n_0 ;
  wire \spo[17]_INST_0_i_3_n_0 ;
  wire \spo[17]_INST_0_i_4_n_0 ;
  wire \spo[17]_INST_0_i_5_n_0 ;
  wire \spo[17]_INST_0_i_6_n_0 ;
  wire \spo[18]_INST_0_i_1_n_0 ;
  wire \spo[18]_INST_0_i_2_n_0 ;
  wire \spo[18]_INST_0_i_3_n_0 ;
  wire \spo[18]_INST_0_i_4_n_0 ;
  wire \spo[18]_INST_0_i_5_n_0 ;
  wire \spo[18]_INST_0_i_6_n_0 ;
  wire \spo[19]_INST_0_i_1_n_0 ;
  wire \spo[19]_INST_0_i_2_n_0 ;
  wire \spo[19]_INST_0_i_3_n_0 ;
  wire \spo[19]_INST_0_i_4_n_0 ;
  wire \spo[19]_INST_0_i_5_n_0 ;
  wire \spo[19]_INST_0_i_6_n_0 ;
  wire \spo[20]_INST_0_i_1_n_0 ;
  wire \spo[20]_INST_0_i_2_n_0 ;
  wire \spo[20]_INST_0_i_3_n_0 ;
  wire \spo[20]_INST_0_i_4_n_0 ;
  wire \spo[20]_INST_0_i_5_n_0 ;
  wire \spo[20]_INST_0_i_6_n_0 ;
  wire \spo[21]_INST_0_i_1_n_0 ;
  wire \spo[21]_INST_0_i_2_n_0 ;
  wire \spo[21]_INST_0_i_3_n_0 ;
  wire \spo[21]_INST_0_i_4_n_0 ;
  wire \spo[21]_INST_0_i_5_n_0 ;
  wire \spo[21]_INST_0_i_6_n_0 ;
  wire \spo[22]_INST_0_i_1_n_0 ;
  wire \spo[22]_INST_0_i_2_n_0 ;
  wire \spo[22]_INST_0_i_3_n_0 ;
  wire \spo[22]_INST_0_i_4_n_0 ;
  wire \spo[22]_INST_0_i_5_n_0 ;
  wire \spo[22]_INST_0_i_6_n_0 ;
  wire \spo[23]_INST_0_i_1_n_0 ;
  wire \spo[23]_INST_0_i_2_n_0 ;
  wire \spo[23]_INST_0_i_3_n_0 ;
  wire \spo[23]_INST_0_i_4_n_0 ;
  wire \spo[23]_INST_0_i_5_n_0 ;
  wire \spo[23]_INST_0_i_6_n_0 ;
  wire \spo[24]_INST_0_i_1_n_0 ;
  wire \spo[24]_INST_0_i_2_n_0 ;
  wire \spo[24]_INST_0_i_3_n_0 ;
  wire \spo[24]_INST_0_i_4_n_0 ;
  wire \spo[24]_INST_0_i_5_n_0 ;
  wire \spo[24]_INST_0_i_6_n_0 ;
  wire \spo[25]_INST_0_i_1_n_0 ;
  wire \spo[25]_INST_0_i_2_n_0 ;
  wire \spo[25]_INST_0_i_3_n_0 ;
  wire \spo[25]_INST_0_i_4_n_0 ;
  wire \spo[25]_INST_0_i_5_n_0 ;
  wire \spo[25]_INST_0_i_6_n_0 ;
  wire \spo[26]_INST_0_i_1_n_0 ;
  wire \spo[26]_INST_0_i_2_n_0 ;
  wire \spo[26]_INST_0_i_3_n_0 ;
  wire \spo[26]_INST_0_i_4_n_0 ;
  wire \spo[26]_INST_0_i_5_n_0 ;
  wire \spo[26]_INST_0_i_6_n_0 ;
  wire \spo[27]_INST_0_i_1_n_0 ;
  wire \spo[27]_INST_0_i_2_n_0 ;
  wire \spo[27]_INST_0_i_3_n_0 ;
  wire \spo[27]_INST_0_i_4_n_0 ;
  wire \spo[27]_INST_0_i_5_n_0 ;
  wire \spo[28]_INST_0_i_1_n_0 ;
  wire \spo[28]_INST_0_i_2_n_0 ;
  wire \spo[28]_INST_0_i_3_n_0 ;
  wire \spo[28]_INST_0_i_4_n_0 ;
  wire \spo[28]_INST_0_i_5_n_0 ;
  wire \spo[28]_INST_0_i_6_n_0 ;
  wire \spo[29]_INST_0_i_1_n_0 ;
  wire \spo[29]_INST_0_i_2_n_0 ;
  wire \spo[29]_INST_0_i_3_n_0 ;
  wire \spo[29]_INST_0_i_4_n_0 ;
  wire \spo[2]_INST_0_i_1_n_0 ;
  wire \spo[2]_INST_0_i_2_n_0 ;
  wire \spo[2]_INST_0_i_3_n_0 ;
  wire \spo[2]_INST_0_i_4_n_0 ;
  wire \spo[30]_INST_0_i_1_n_0 ;
  wire \spo[30]_INST_0_i_2_n_0 ;
  wire \spo[30]_INST_0_i_3_n_0 ;
  wire \spo[30]_INST_0_i_4_n_0 ;
  wire \spo[30]_INST_0_i_5_n_0 ;
  wire \spo[30]_INST_0_i_6_n_0 ;
  wire \spo[31]_INST_0_i_1_n_0 ;
  wire \spo[31]_INST_0_i_2_n_0 ;
  wire \spo[31]_INST_0_i_3_n_0 ;
  wire \spo[31]_INST_0_i_4_n_0 ;
  wire \spo[31]_INST_0_i_5_n_0 ;
  wire \spo[31]_INST_0_i_6_n_0 ;
  wire \spo[3]_INST_0_i_1_n_0 ;
  wire \spo[3]_INST_0_i_2_n_0 ;
  wire \spo[3]_INST_0_i_3_n_0 ;
  wire \spo[3]_INST_0_i_4_n_0 ;
  wire \spo[3]_INST_0_i_5_n_0 ;
  wire \spo[3]_INST_0_i_6_n_0 ;
  wire \spo[4]_INST_0_i_1_n_0 ;
  wire \spo[4]_INST_0_i_2_n_0 ;
  wire \spo[4]_INST_0_i_3_n_0 ;
  wire \spo[4]_INST_0_i_4_n_0 ;
  wire \spo[4]_INST_0_i_5_n_0 ;
  wire \spo[5]_INST_0_i_1_n_0 ;
  wire \spo[5]_INST_0_i_2_n_0 ;
  wire \spo[5]_INST_0_i_3_n_0 ;
  wire \spo[5]_INST_0_i_4_n_0 ;
  wire \spo[5]_INST_0_i_5_n_0 ;
  wire \spo[5]_INST_0_i_6_n_0 ;
  wire \spo[6]_INST_0_i_1_n_0 ;
  wire \spo[6]_INST_0_i_2_n_0 ;
  wire \spo[6]_INST_0_i_3_n_0 ;
  wire \spo[6]_INST_0_i_4_n_0 ;
  wire \spo[6]_INST_0_i_5_n_0 ;
  wire \spo[6]_INST_0_i_6_n_0 ;
  wire \spo[7]_INST_0_i_1_n_0 ;
  wire \spo[7]_INST_0_i_2_n_0 ;
  wire \spo[7]_INST_0_i_3_n_0 ;
  wire \spo[7]_INST_0_i_4_n_0 ;
  wire \spo[7]_INST_0_i_5_n_0 ;
  wire \spo[7]_INST_0_i_6_n_0 ;
  wire \spo[8]_INST_0_i_1_n_0 ;
  wire \spo[8]_INST_0_i_2_n_0 ;
  wire \spo[8]_INST_0_i_3_n_0 ;
  wire \spo[8]_INST_0_i_4_n_0 ;
  wire \spo[8]_INST_0_i_5_n_0 ;
  wire \spo[8]_INST_0_i_6_n_0 ;
  wire \spo[9]_INST_0_i_1_n_0 ;
  wire \spo[9]_INST_0_i_2_n_0 ;
  wire \spo[9]_INST_0_i_3_n_0 ;
  wire \spo[9]_INST_0_i_4_n_0 ;
  wire \spo[9]_INST_0_i_5_n_0 ;

  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \spo[0]_INST_0 
       (.I0(a[12]),
        .I1(a[10]),
        .I2(\spo[0]_INST_0_i_1_n_0 ),
        .I3(a[9]),
        .I4(a[11]),
        .I5(a[13]),
        .O(spo[0]));
  LUT6 #(
    .INIT(64'h00000000F757FFFF)) 
    \spo[0]_INST_0_i_1 
       (.I0(a[7]),
        .I1(a[5]),
        .I2(a[4]),
        .I3(\spo[0]_INST_0_i_2_n_0 ),
        .I4(a[6]),
        .I5(a[8]),
        .O(\spo[0]_INST_0_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \spo[0]_INST_0_i_2 
       (.I0(a[5]),
        .I1(a[2]),
        .I2(a[3]),
        .O(\spo[0]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \spo[10]_INST_0 
       (.I0(a[12]),
        .I1(a[10]),
        .I2(\spo[10]_INST_0_i_1_n_0 ),
        .I3(a[9]),
        .I4(a[11]),
        .I5(a[13]),
        .O(spo[9]));
  LUT6 #(
    .INIT(64'h00000000EEE222E2)) 
    \spo[10]_INST_0_i_1 
       (.I0(\spo[10]_INST_0_i_2_n_0 ),
        .I1(a[7]),
        .I2(\spo[10]_INST_0_i_3_n_0 ),
        .I3(a[6]),
        .I4(\spo[10]_INST_0_i_4_n_0 ),
        .I5(a[8]),
        .O(\spo[10]_INST_0_i_1_n_0 ));
  MUXF7 \spo[10]_INST_0_i_2 
       (.I0(\spo[10]_INST_0_i_5_n_0 ),
        .I1(\spo[10]_INST_0_i_6_n_0 ),
        .O(\spo[10]_INST_0_i_2_n_0 ),
        .S(a[6]));
  LUT6 #(
    .INIT(64'hAB1C7DFEEEEEEEEA)) 
    \spo[10]_INST_0_i_3 
       (.I0(a[4]),
        .I1(a[3]),
        .I2(a[1]),
        .I3(a[2]),
        .I4(a[0]),
        .I5(a[5]),
        .O(\spo[10]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000045545147)) 
    \spo[10]_INST_0_i_4 
       (.I0(a[4]),
        .I1(a[3]),
        .I2(a[2]),
        .I3(a[1]),
        .I4(a[0]),
        .I5(a[5]),
        .O(\spo[10]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h4D29BC9E0497B7B7)) 
    \spo[10]_INST_0_i_5 
       (.I0(a[4]),
        .I1(a[3]),
        .I2(a[5]),
        .I3(a[1]),
        .I4(a[0]),
        .I5(a[2]),
        .O(\spo[10]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h57741FF42AA82AAA)) 
    \spo[10]_INST_0_i_6 
       (.I0(a[4]),
        .I1(a[1]),
        .I2(a[0]),
        .I3(a[5]),
        .I4(a[2]),
        .I5(a[3]),
        .O(\spo[10]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \spo[11]_INST_0 
       (.I0(a[12]),
        .I1(a[10]),
        .I2(\spo[11]_INST_0_i_1_n_0 ),
        .I3(a[9]),
        .I4(a[11]),
        .I5(a[13]),
        .O(spo[10]));
  LUT6 #(
    .INIT(64'h00000000EEE222E2)) 
    \spo[11]_INST_0_i_1 
       (.I0(\spo[11]_INST_0_i_2_n_0 ),
        .I1(a[7]),
        .I2(\spo[11]_INST_0_i_3_n_0 ),
        .I3(a[6]),
        .I4(\spo[11]_INST_0_i_4_n_0 ),
        .I5(a[8]),
        .O(\spo[11]_INST_0_i_1_n_0 ));
  MUXF7 \spo[11]_INST_0_i_2 
       (.I0(\spo[11]_INST_0_i_5_n_0 ),
        .I1(\spo[11]_INST_0_i_6_n_0 ),
        .O(\spo[11]_INST_0_i_2_n_0 ),
        .S(a[6]));
  LUT6 #(
    .INIT(64'h2080000000000400)) 
    \spo[11]_INST_0_i_3 
       (.I0(a[4]),
        .I1(a[5]),
        .I2(a[1]),
        .I3(a[2]),
        .I4(a[0]),
        .I5(a[3]),
        .O(\spo[11]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000010010002)) 
    \spo[11]_INST_0_i_4 
       (.I0(a[4]),
        .I1(a[5]),
        .I2(a[1]),
        .I3(a[2]),
        .I4(a[0]),
        .I5(a[3]),
        .O(\spo[11]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h010422B200020000)) 
    \spo[11]_INST_0_i_5 
       (.I0(a[4]),
        .I1(a[3]),
        .I2(a[5]),
        .I3(a[1]),
        .I4(a[2]),
        .I5(a[0]),
        .O(\spo[11]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0400100000000000)) 
    \spo[11]_INST_0_i_6 
       (.I0(a[3]),
        .I1(a[5]),
        .I2(a[1]),
        .I3(a[2]),
        .I4(a[0]),
        .I5(a[4]),
        .O(\spo[11]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \spo[12]_INST_0 
       (.I0(a[12]),
        .I1(a[10]),
        .I2(\spo[12]_INST_0_i_1_n_0 ),
        .I3(a[9]),
        .I4(a[11]),
        .I5(a[13]),
        .O(spo[11]));
  LUT6 #(
    .INIT(64'h00000000EEE222E2)) 
    \spo[12]_INST_0_i_1 
       (.I0(\spo[12]_INST_0_i_2_n_0 ),
        .I1(a[7]),
        .I2(\spo[12]_INST_0_i_3_n_0 ),
        .I3(a[6]),
        .I4(\spo[12]_INST_0_i_4_n_0 ),
        .I5(a[8]),
        .O(\spo[12]_INST_0_i_1_n_0 ));
  MUXF7 \spo[12]_INST_0_i_2 
       (.I0(\spo[12]_INST_0_i_5_n_0 ),
        .I1(\spo[12]_INST_0_i_6_n_0 ),
        .O(\spo[12]_INST_0_i_2_n_0 ),
        .S(a[6]));
  LUT6 #(
    .INIT(64'hA50000200ACA58A0)) 
    \spo[12]_INST_0_i_3 
       (.I0(a[4]),
        .I1(a[0]),
        .I2(a[3]),
        .I3(a[1]),
        .I4(a[2]),
        .I5(a[5]),
        .O(\spo[12]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000010455800)) 
    \spo[12]_INST_0_i_4 
       (.I0(a[4]),
        .I1(a[0]),
        .I2(a[3]),
        .I3(a[1]),
        .I4(a[2]),
        .I5(a[5]),
        .O(\spo[12]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h4000002201119101)) 
    \spo[12]_INST_0_i_5 
       (.I0(a[4]),
        .I1(a[3]),
        .I2(a[0]),
        .I3(a[2]),
        .I4(a[1]),
        .I5(a[5]),
        .O(\spo[12]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h544414440002A020)) 
    \spo[12]_INST_0_i_6 
       (.I0(a[4]),
        .I1(a[1]),
        .I2(a[5]),
        .I3(a[0]),
        .I4(a[2]),
        .I5(a[3]),
        .O(\spo[12]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \spo[13]_INST_0 
       (.I0(a[12]),
        .I1(a[10]),
        .I2(\spo[13]_INST_0_i_1_n_0 ),
        .I3(a[9]),
        .I4(a[11]),
        .I5(a[13]),
        .O(spo[12]));
  LUT6 #(
    .INIT(64'h00000000EEE222E2)) 
    \spo[13]_INST_0_i_1 
       (.I0(\spo[13]_INST_0_i_2_n_0 ),
        .I1(a[7]),
        .I2(\spo[13]_INST_0_i_3_n_0 ),
        .I3(a[6]),
        .I4(\spo[13]_INST_0_i_4_n_0 ),
        .I5(a[8]),
        .O(\spo[13]_INST_0_i_1_n_0 ));
  MUXF7 \spo[13]_INST_0_i_2 
       (.I0(\spo[13]_INST_0_i_5_n_0 ),
        .I1(\spo[13]_INST_0_i_6_n_0 ),
        .O(\spo[13]_INST_0_i_2_n_0 ),
        .S(a[6]));
  LUT6 #(
    .INIT(64'h11012028C4631335)) 
    \spo[13]_INST_0_i_3 
       (.I0(a[4]),
        .I1(a[3]),
        .I2(a[1]),
        .I3(a[2]),
        .I4(a[5]),
        .I5(a[0]),
        .O(\spo[13]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000004260120)) 
    \spo[13]_INST_0_i_4 
       (.I0(a[4]),
        .I1(a[3]),
        .I2(a[0]),
        .I3(a[2]),
        .I4(a[1]),
        .I5(a[5]),
        .O(\spo[13]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h42D109D008D10921)) 
    \spo[13]_INST_0_i_5 
       (.I0(a[4]),
        .I1(a[3]),
        .I2(a[5]),
        .I3(a[0]),
        .I4(a[2]),
        .I5(a[1]),
        .O(\spo[13]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h52183C782183C584)) 
    \spo[13]_INST_0_i_6 
       (.I0(a[4]),
        .I1(a[3]),
        .I2(a[5]),
        .I3(a[1]),
        .I4(a[2]),
        .I5(a[0]),
        .O(\spo[13]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \spo[14]_INST_0 
       (.I0(a[12]),
        .I1(a[10]),
        .I2(\spo[14]_INST_0_i_1_n_0 ),
        .I3(a[9]),
        .I4(a[11]),
        .I5(a[13]),
        .O(spo[13]));
  LUT6 #(
    .INIT(64'h00000000EEE222E2)) 
    \spo[14]_INST_0_i_1 
       (.I0(\spo[14]_INST_0_i_2_n_0 ),
        .I1(a[7]),
        .I2(\spo[14]_INST_0_i_3_n_0 ),
        .I3(a[6]),
        .I4(\spo[14]_INST_0_i_4_n_0 ),
        .I5(a[8]),
        .O(\spo[14]_INST_0_i_1_n_0 ));
  MUXF7 \spo[14]_INST_0_i_2 
       (.I0(\spo[14]_INST_0_i_5_n_0 ),
        .I1(\spo[14]_INST_0_i_6_n_0 ),
        .O(\spo[14]_INST_0_i_2_n_0 ),
        .S(a[6]));
  LUT6 #(
    .INIT(64'h0082A22A62E62020)) 
    \spo[14]_INST_0_i_3 
       (.I0(a[4]),
        .I1(a[5]),
        .I2(a[1]),
        .I3(a[0]),
        .I4(a[2]),
        .I5(a[3]),
        .O(\spo[14]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000010214140)) 
    \spo[14]_INST_0_i_4 
       (.I0(a[4]),
        .I1(a[3]),
        .I2(a[1]),
        .I3(a[2]),
        .I4(a[0]),
        .I5(a[5]),
        .O(\spo[14]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h4220002281119101)) 
    \spo[14]_INST_0_i_5 
       (.I0(a[4]),
        .I1(a[3]),
        .I2(a[0]),
        .I3(a[2]),
        .I4(a[1]),
        .I5(a[5]),
        .O(\spo[14]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h4510501022020208)) 
    \spo[14]_INST_0_i_6 
       (.I0(a[4]),
        .I1(a[2]),
        .I2(a[1]),
        .I3(a[5]),
        .I4(a[0]),
        .I5(a[3]),
        .O(\spo[14]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \spo[15]_INST_0 
       (.I0(a[12]),
        .I1(a[10]),
        .I2(\spo[15]_INST_0_i_1_n_0 ),
        .I3(a[9]),
        .I4(a[11]),
        .I5(a[13]),
        .O(spo[14]));
  LUT6 #(
    .INIT(64'h00000000EEE222E2)) 
    \spo[15]_INST_0_i_1 
       (.I0(\spo[15]_INST_0_i_2_n_0 ),
        .I1(a[7]),
        .I2(\spo[15]_INST_0_i_3_n_0 ),
        .I3(a[6]),
        .I4(\spo[15]_INST_0_i_4_n_0 ),
        .I5(a[8]),
        .O(\spo[15]_INST_0_i_1_n_0 ));
  MUXF7 \spo[15]_INST_0_i_2 
       (.I0(\spo[15]_INST_0_i_5_n_0 ),
        .I1(\spo[15]_INST_0_i_6_n_0 ),
        .O(\spo[15]_INST_0_i_2_n_0 ),
        .S(a[6]));
  LUT6 #(
    .INIT(64'h80811581C2E6E868)) 
    \spo[15]_INST_0_i_3 
       (.I0(a[4]),
        .I1(a[3]),
        .I2(a[2]),
        .I3(a[0]),
        .I4(a[1]),
        .I5(a[5]),
        .O(\spo[15]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000045620576)) 
    \spo[15]_INST_0_i_4 
       (.I0(a[4]),
        .I1(a[3]),
        .I2(a[1]),
        .I3(a[2]),
        .I4(a[0]),
        .I5(a[5]),
        .O(\spo[15]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h404020C820602971)) 
    \spo[15]_INST_0_i_5 
       (.I0(a[4]),
        .I1(a[3]),
        .I2(a[0]),
        .I3(a[5]),
        .I4(a[1]),
        .I5(a[2]),
        .O(\spo[15]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0554541408080A20)) 
    \spo[15]_INST_0_i_6 
       (.I0(a[4]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[0]),
        .I4(a[5]),
        .I5(a[3]),
        .O(\spo[15]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \spo[16]_INST_0 
       (.I0(a[12]),
        .I1(a[10]),
        .I2(\spo[16]_INST_0_i_1_n_0 ),
        .I3(a[9]),
        .I4(a[11]),
        .I5(a[13]),
        .O(spo[15]));
  LUT6 #(
    .INIT(64'h00000000EEE222E2)) 
    \spo[16]_INST_0_i_1 
       (.I0(\spo[16]_INST_0_i_2_n_0 ),
        .I1(a[7]),
        .I2(\spo[16]_INST_0_i_3_n_0 ),
        .I3(a[6]),
        .I4(\spo[16]_INST_0_i_4_n_0 ),
        .I5(a[8]),
        .O(\spo[16]_INST_0_i_1_n_0 ));
  MUXF7 \spo[16]_INST_0_i_2 
       (.I0(\spo[16]_INST_0_i_5_n_0 ),
        .I1(\spo[16]_INST_0_i_6_n_0 ),
        .O(\spo[16]_INST_0_i_2_n_0 ),
        .S(a[6]));
  LUT6 #(
    .INIT(64'h5C664462FF73979D)) 
    \spo[16]_INST_0_i_3 
       (.I0(a[4]),
        .I1(a[3]),
        .I2(a[0]),
        .I3(a[2]),
        .I4(a[1]),
        .I5(a[5]),
        .O(\spo[16]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000240100)) 
    \spo[16]_INST_0_i_4 
       (.I0(a[4]),
        .I1(a[3]),
        .I2(a[0]),
        .I3(a[2]),
        .I4(a[1]),
        .I5(a[5]),
        .O(\spo[16]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h96D3DFF8DCD04EB9)) 
    \spo[16]_INST_0_i_5 
       (.I0(a[4]),
        .I1(a[3]),
        .I2(a[5]),
        .I3(a[0]),
        .I4(a[2]),
        .I5(a[1]),
        .O(\spo[16]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hB3F99D993999DF9C)) 
    \spo[16]_INST_0_i_6 
       (.I0(a[4]),
        .I1(a[3]),
        .I2(a[0]),
        .I3(a[2]),
        .I4(a[1]),
        .I5(a[5]),
        .O(\spo[16]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \spo[17]_INST_0 
       (.I0(a[12]),
        .I1(a[10]),
        .I2(\spo[17]_INST_0_i_1_n_0 ),
        .I3(a[9]),
        .I4(a[11]),
        .I5(a[13]),
        .O(spo[16]));
  LUT6 #(
    .INIT(64'h00000000EEE222E2)) 
    \spo[17]_INST_0_i_1 
       (.I0(\spo[17]_INST_0_i_2_n_0 ),
        .I1(a[7]),
        .I2(\spo[17]_INST_0_i_3_n_0 ),
        .I3(a[6]),
        .I4(\spo[17]_INST_0_i_4_n_0 ),
        .I5(a[8]),
        .O(\spo[17]_INST_0_i_1_n_0 ));
  MUXF7 \spo[17]_INST_0_i_2 
       (.I0(\spo[17]_INST_0_i_5_n_0 ),
        .I1(\spo[17]_INST_0_i_6_n_0 ),
        .O(\spo[17]_INST_0_i_2_n_0 ),
        .S(a[6]));
  LUT6 #(
    .INIT(64'hAA85A06008F06888)) 
    \spo[17]_INST_0_i_3 
       (.I0(a[4]),
        .I1(a[0]),
        .I2(a[3]),
        .I3(a[2]),
        .I4(a[1]),
        .I5(a[5]),
        .O(\spo[17]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000054755556)) 
    \spo[17]_INST_0_i_4 
       (.I0(a[4]),
        .I1(a[3]),
        .I2(a[0]),
        .I3(a[2]),
        .I4(a[1]),
        .I5(a[5]),
        .O(\spo[17]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h42202222C0486061)) 
    \spo[17]_INST_0_i_5 
       (.I0(a[4]),
        .I1(a[3]),
        .I2(a[0]),
        .I3(a[1]),
        .I4(a[2]),
        .I5(a[5]),
        .O(\spo[17]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h544414440222AA88)) 
    \spo[17]_INST_0_i_6 
       (.I0(a[4]),
        .I1(a[1]),
        .I2(a[5]),
        .I3(a[0]),
        .I4(a[2]),
        .I5(a[3]),
        .O(\spo[17]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \spo[18]_INST_0 
       (.I0(a[12]),
        .I1(a[10]),
        .I2(\spo[18]_INST_0_i_1_n_0 ),
        .I3(a[9]),
        .I4(a[11]),
        .I5(a[13]),
        .O(spo[17]));
  LUT6 #(
    .INIT(64'h00000000EEE222E2)) 
    \spo[18]_INST_0_i_1 
       (.I0(\spo[18]_INST_0_i_2_n_0 ),
        .I1(a[7]),
        .I2(\spo[18]_INST_0_i_3_n_0 ),
        .I3(a[6]),
        .I4(\spo[18]_INST_0_i_4_n_0 ),
        .I5(a[8]),
        .O(\spo[18]_INST_0_i_1_n_0 ));
  MUXF7 \spo[18]_INST_0_i_2 
       (.I0(\spo[18]_INST_0_i_5_n_0 ),
        .I1(\spo[18]_INST_0_i_6_n_0 ),
        .O(\spo[18]_INST_0_i_2_n_0 ),
        .S(a[6]));
  LUT6 #(
    .INIT(64'hBB989119EEAEAAA8)) 
    \spo[18]_INST_0_i_3 
       (.I0(a[4]),
        .I1(a[3]),
        .I2(a[0]),
        .I3(a[1]),
        .I4(a[2]),
        .I5(a[5]),
        .O(\spo[18]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000054775576)) 
    \spo[18]_INST_0_i_4 
       (.I0(a[4]),
        .I1(a[3]),
        .I2(a[0]),
        .I3(a[2]),
        .I4(a[1]),
        .I5(a[5]),
        .O(\spo[18]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0002880020811555)) 
    \spo[18]_INST_0_i_5 
       (.I0(a[4]),
        .I1(a[0]),
        .I2(a[1]),
        .I3(a[2]),
        .I4(a[5]),
        .I5(a[3]),
        .O(\spo[18]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h5444444422222A88)) 
    \spo[18]_INST_0_i_6 
       (.I0(a[4]),
        .I1(a[2]),
        .I2(a[5]),
        .I3(a[0]),
        .I4(a[1]),
        .I5(a[3]),
        .O(\spo[18]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \spo[19]_INST_0 
       (.I0(a[12]),
        .I1(a[10]),
        .I2(\spo[19]_INST_0_i_1_n_0 ),
        .I3(a[9]),
        .I4(a[11]),
        .I5(a[13]),
        .O(spo[18]));
  LUT6 #(
    .INIT(64'h00000000EEE222E2)) 
    \spo[19]_INST_0_i_1 
       (.I0(\spo[19]_INST_0_i_2_n_0 ),
        .I1(a[7]),
        .I2(\spo[19]_INST_0_i_3_n_0 ),
        .I3(a[6]),
        .I4(\spo[19]_INST_0_i_4_n_0 ),
        .I5(a[8]),
        .O(\spo[19]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0808080800000300)) 
    \spo[19]_INST_0_i_2 
       (.I0(\spo[19]_INST_0_i_5_n_0 ),
        .I1(a[6]),
        .I2(a[3]),
        .I3(\spo[19]_INST_0_i_6_n_0 ),
        .I4(a[5]),
        .I5(a[4]),
        .O(\spo[19]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000800080008400)) 
    \spo[19]_INST_0_i_3 
       (.I0(a[4]),
        .I1(a[5]),
        .I2(a[2]),
        .I3(a[1]),
        .I4(a[0]),
        .I5(a[3]),
        .O(\spo[19]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000004240100)) 
    \spo[19]_INST_0_i_4 
       (.I0(a[4]),
        .I1(a[3]),
        .I2(a[0]),
        .I3(a[2]),
        .I4(a[1]),
        .I5(a[5]),
        .O(\spo[19]_INST_0_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h0810)) 
    \spo[19]_INST_0_i_5 
       (.I0(a[5]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[0]),
        .O(\spo[19]_INST_0_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \spo[19]_INST_0_i_6 
       (.I0(a[2]),
        .I1(a[1]),
        .I2(a[0]),
        .O(\spo[19]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \spo[20]_INST_0 
       (.I0(a[12]),
        .I1(a[10]),
        .I2(\spo[20]_INST_0_i_1_n_0 ),
        .I3(a[9]),
        .I4(a[11]),
        .I5(a[13]),
        .O(spo[19]));
  LUT6 #(
    .INIT(64'h00000000EEE222E2)) 
    \spo[20]_INST_0_i_1 
       (.I0(\spo[20]_INST_0_i_2_n_0 ),
        .I1(a[7]),
        .I2(\spo[20]_INST_0_i_3_n_0 ),
        .I3(a[6]),
        .I4(\spo[20]_INST_0_i_4_n_0 ),
        .I5(a[8]),
        .O(\spo[20]_INST_0_i_1_n_0 ));
  MUXF7 \spo[20]_INST_0_i_2 
       (.I0(\spo[20]_INST_0_i_5_n_0 ),
        .I1(\spo[20]_INST_0_i_6_n_0 ),
        .O(\spo[20]_INST_0_i_2_n_0 ),
        .S(a[6]));
  LUT6 #(
    .INIT(64'h050A10AA8D2890B5)) 
    \spo[20]_INST_0_i_3 
       (.I0(a[4]),
        .I1(a[2]),
        .I2(a[3]),
        .I3(a[5]),
        .I4(a[1]),
        .I5(a[0]),
        .O(\spo[20]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000004250104)) 
    \spo[20]_INST_0_i_4 
       (.I0(a[4]),
        .I1(a[3]),
        .I2(a[0]),
        .I3(a[2]),
        .I4(a[1]),
        .I5(a[5]),
        .O(\spo[20]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h4E650F660D019621)) 
    \spo[20]_INST_0_i_5 
       (.I0(a[4]),
        .I1(a[3]),
        .I2(a[5]),
        .I3(a[0]),
        .I4(a[2]),
        .I5(a[1]),
        .O(\spo[20]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h4250454852454808)) 
    \spo[20]_INST_0_i_6 
       (.I0(a[4]),
        .I1(a[2]),
        .I2(a[3]),
        .I3(a[5]),
        .I4(a[1]),
        .I5(a[0]),
        .O(\spo[20]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \spo[21]_INST_0 
       (.I0(a[12]),
        .I1(a[10]),
        .I2(\spo[21]_INST_0_i_1_n_0 ),
        .I3(a[9]),
        .I4(a[11]),
        .I5(a[13]),
        .O(spo[20]));
  LUT6 #(
    .INIT(64'h00000000EEE222E2)) 
    \spo[21]_INST_0_i_1 
       (.I0(\spo[21]_INST_0_i_2_n_0 ),
        .I1(a[7]),
        .I2(\spo[21]_INST_0_i_3_n_0 ),
        .I3(a[6]),
        .I4(\spo[21]_INST_0_i_4_n_0 ),
        .I5(a[8]),
        .O(\spo[21]_INST_0_i_1_n_0 ));
  MUXF7 \spo[21]_INST_0_i_2 
       (.I0(\spo[21]_INST_0_i_5_n_0 ),
        .I1(\spo[21]_INST_0_i_6_n_0 ),
        .O(\spo[21]_INST_0_i_2_n_0 ),
        .S(a[6]));
  LUT6 #(
    .INIT(64'h14009802210A100F)) 
    \spo[21]_INST_0_i_3 
       (.I0(a[4]),
        .I1(a[3]),
        .I2(a[5]),
        .I3(a[1]),
        .I4(a[2]),
        .I5(a[0]),
        .O(\spo[21]_INST_0_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h00005004)) 
    \spo[21]_INST_0_i_4 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[2]),
        .I3(a[1]),
        .I4(a[4]),
        .O(\spo[21]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h420D280D0140B0B1)) 
    \spo[21]_INST_0_i_5 
       (.I0(a[4]),
        .I1(a[3]),
        .I2(a[5]),
        .I3(a[0]),
        .I4(a[1]),
        .I5(a[2]),
        .O(\spo[21]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h5006041600414066)) 
    \spo[21]_INST_0_i_6 
       (.I0(a[4]),
        .I1(a[3]),
        .I2(a[5]),
        .I3(a[2]),
        .I4(a[1]),
        .I5(a[0]),
        .O(\spo[21]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \spo[22]_INST_0 
       (.I0(a[12]),
        .I1(a[10]),
        .I2(\spo[22]_INST_0_i_1_n_0 ),
        .I3(a[9]),
        .I4(a[11]),
        .I5(a[13]),
        .O(spo[21]));
  LUT6 #(
    .INIT(64'h00000000EEE222E2)) 
    \spo[22]_INST_0_i_1 
       (.I0(\spo[22]_INST_0_i_2_n_0 ),
        .I1(a[7]),
        .I2(\spo[22]_INST_0_i_3_n_0 ),
        .I3(a[6]),
        .I4(\spo[22]_INST_0_i_4_n_0 ),
        .I5(a[8]),
        .O(\spo[22]_INST_0_i_1_n_0 ));
  MUXF7 \spo[22]_INST_0_i_2 
       (.I0(\spo[22]_INST_0_i_5_n_0 ),
        .I1(\spo[22]_INST_0_i_6_n_0 ),
        .O(\spo[22]_INST_0_i_2_n_0 ),
        .S(a[6]));
  LUT6 #(
    .INIT(64'hD541F9711F3D0BDC)) 
    \spo[22]_INST_0_i_3 
       (.I0(a[4]),
        .I1(a[3]),
        .I2(a[5]),
        .I3(a[1]),
        .I4(a[2]),
        .I5(a[0]),
        .O(\spo[22]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000054547271)) 
    \spo[22]_INST_0_i_4 
       (.I0(a[4]),
        .I1(a[3]),
        .I2(a[0]),
        .I3(a[1]),
        .I4(a[2]),
        .I5(a[5]),
        .O(\spo[22]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hDC63FF2AFD696E7B)) 
    \spo[22]_INST_0_i_5 
       (.I0(a[4]),
        .I1(a[3]),
        .I2(a[5]),
        .I3(a[0]),
        .I4(a[2]),
        .I5(a[1]),
        .O(\spo[22]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hF1B797879B79787D)) 
    \spo[22]_INST_0_i_6 
       (.I0(a[4]),
        .I1(a[3]),
        .I2(a[5]),
        .I3(a[1]),
        .I4(a[2]),
        .I5(a[0]),
        .O(\spo[22]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \spo[23]_INST_0 
       (.I0(a[12]),
        .I1(a[10]),
        .I2(\spo[23]_INST_0_i_1_n_0 ),
        .I3(a[9]),
        .I4(a[11]),
        .I5(a[13]),
        .O(spo[22]));
  LUT6 #(
    .INIT(64'h00000000EEE222E2)) 
    \spo[23]_INST_0_i_1 
       (.I0(\spo[23]_INST_0_i_2_n_0 ),
        .I1(a[7]),
        .I2(\spo[23]_INST_0_i_3_n_0 ),
        .I3(a[6]),
        .I4(\spo[23]_INST_0_i_4_n_0 ),
        .I5(a[8]),
        .O(\spo[23]_INST_0_i_1_n_0 ));
  MUXF7 \spo[23]_INST_0_i_2 
       (.I0(\spo[23]_INST_0_i_5_n_0 ),
        .I1(\spo[23]_INST_0_i_6_n_0 ),
        .O(\spo[23]_INST_0_i_2_n_0 ),
        .S(a[6]));
  LUT6 #(
    .INIT(64'h0821958115DD91FD)) 
    \spo[23]_INST_0_i_3 
       (.I0(a[4]),
        .I1(a[3]),
        .I2(a[1]),
        .I3(a[0]),
        .I4(a[2]),
        .I5(a[5]),
        .O(\spo[23]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000050135420)) 
    \spo[23]_INST_0_i_4 
       (.I0(a[4]),
        .I1(a[3]),
        .I2(a[1]),
        .I3(a[2]),
        .I4(a[0]),
        .I5(a[5]),
        .O(\spo[23]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h6E6A4C416F49DEA9)) 
    \spo[23]_INST_0_i_5 
       (.I0(a[4]),
        .I1(a[3]),
        .I2(a[5]),
        .I3(a[0]),
        .I4(a[1]),
        .I5(a[2]),
        .O(\spo[23]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hD915371393517136)) 
    \spo[23]_INST_0_i_6 
       (.I0(a[4]),
        .I1(a[3]),
        .I2(a[0]),
        .I3(a[2]),
        .I4(a[1]),
        .I5(a[5]),
        .O(\spo[23]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \spo[24]_INST_0 
       (.I0(a[12]),
        .I1(a[10]),
        .I2(\spo[24]_INST_0_i_1_n_0 ),
        .I3(a[9]),
        .I4(a[11]),
        .I5(a[13]),
        .O(spo[23]));
  LUT6 #(
    .INIT(64'h00000000EEE222E2)) 
    \spo[24]_INST_0_i_1 
       (.I0(\spo[24]_INST_0_i_2_n_0 ),
        .I1(a[7]),
        .I2(\spo[24]_INST_0_i_3_n_0 ),
        .I3(a[6]),
        .I4(\spo[24]_INST_0_i_4_n_0 ),
        .I5(a[8]),
        .O(\spo[24]_INST_0_i_1_n_0 ));
  MUXF7 \spo[24]_INST_0_i_2 
       (.I0(\spo[24]_INST_0_i_5_n_0 ),
        .I1(\spo[24]_INST_0_i_6_n_0 ),
        .O(\spo[24]_INST_0_i_2_n_0 ),
        .S(a[6]));
  LUT6 #(
    .INIT(64'h0191151190012408)) 
    \spo[24]_INST_0_i_3 
       (.I0(a[4]),
        .I1(a[3]),
        .I2(a[2]),
        .I3(a[1]),
        .I4(a[5]),
        .I5(a[0]),
        .O(\spo[24]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000360160)) 
    \spo[24]_INST_0_i_4 
       (.I0(a[4]),
        .I1(a[3]),
        .I2(a[1]),
        .I3(a[2]),
        .I4(a[0]),
        .I5(a[5]),
        .O(\spo[24]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0402440C01211189)) 
    \spo[24]_INST_0_i_5 
       (.I0(a[4]),
        .I1(a[3]),
        .I2(a[1]),
        .I3(a[0]),
        .I4(a[2]),
        .I5(a[5]),
        .O(\spo[24]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h8903056190165011)) 
    \spo[24]_INST_0_i_6 
       (.I0(a[4]),
        .I1(a[3]),
        .I2(a[5]),
        .I3(a[2]),
        .I4(a[1]),
        .I5(a[0]),
        .O(\spo[24]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \spo[25]_INST_0 
       (.I0(a[12]),
        .I1(a[10]),
        .I2(\spo[25]_INST_0_i_1_n_0 ),
        .I3(a[9]),
        .I4(a[11]),
        .I5(a[13]),
        .O(spo[24]));
  LUT6 #(
    .INIT(64'h00000000EEE222E2)) 
    \spo[25]_INST_0_i_1 
       (.I0(\spo[25]_INST_0_i_2_n_0 ),
        .I1(a[7]),
        .I2(\spo[25]_INST_0_i_3_n_0 ),
        .I3(a[6]),
        .I4(\spo[25]_INST_0_i_4_n_0 ),
        .I5(a[8]),
        .O(\spo[25]_INST_0_i_1_n_0 ));
  MUXF7 \spo[25]_INST_0_i_2 
       (.I0(\spo[25]_INST_0_i_5_n_0 ),
        .I1(\spo[25]_INST_0_i_6_n_0 ),
        .O(\spo[25]_INST_0_i_2_n_0 ),
        .S(a[6]));
  LUT6 #(
    .INIT(64'h01141111A8110000)) 
    \spo[25]_INST_0_i_3 
       (.I0(a[4]),
        .I1(a[3]),
        .I2(a[2]),
        .I3(a[1]),
        .I4(a[5]),
        .I5(a[0]),
        .O(\spo[25]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000002101205)) 
    \spo[25]_INST_0_i_4 
       (.I0(a[4]),
        .I1(a[2]),
        .I2(a[3]),
        .I3(a[0]),
        .I4(a[1]),
        .I5(a[5]),
        .O(\spo[25]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0400440C04217789)) 
    \spo[25]_INST_0_i_5 
       (.I0(a[4]),
        .I1(a[3]),
        .I2(a[1]),
        .I3(a[0]),
        .I4(a[2]),
        .I5(a[5]),
        .O(\spo[25]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h9122047704571408)) 
    \spo[25]_INST_0_i_6 
       (.I0(a[4]),
        .I1(a[2]),
        .I2(a[1]),
        .I3(a[3]),
        .I4(a[5]),
        .I5(a[0]),
        .O(\spo[25]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \spo[26]_INST_0 
       (.I0(a[12]),
        .I1(a[10]),
        .I2(\spo[26]_INST_0_i_1_n_0 ),
        .I3(a[9]),
        .I4(a[11]),
        .I5(a[13]),
        .O(spo[25]));
  LUT6 #(
    .INIT(64'h00000000EEE222E2)) 
    \spo[26]_INST_0_i_1 
       (.I0(\spo[26]_INST_0_i_2_n_0 ),
        .I1(a[7]),
        .I2(\spo[26]_INST_0_i_3_n_0 ),
        .I3(a[6]),
        .I4(\spo[26]_INST_0_i_4_n_0 ),
        .I5(a[8]),
        .O(\spo[26]_INST_0_i_1_n_0 ));
  MUXF7 \spo[26]_INST_0_i_2 
       (.I0(\spo[26]_INST_0_i_5_n_0 ),
        .I1(\spo[26]_INST_0_i_6_n_0 ),
        .O(\spo[26]_INST_0_i_2_n_0 ),
        .S(a[6]));
  LUT6 #(
    .INIT(64'h2000200024544414)) 
    \spo[26]_INST_0_i_3 
       (.I0(a[4]),
        .I1(a[0]),
        .I2(a[5]),
        .I3(a[1]),
        .I4(a[2]),
        .I5(a[3]),
        .O(\spo[26]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000101205)) 
    \spo[26]_INST_0_i_4 
       (.I0(a[4]),
        .I1(a[2]),
        .I2(a[3]),
        .I3(a[0]),
        .I4(a[1]),
        .I5(a[5]),
        .O(\spo[26]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0400440844211189)) 
    \spo[26]_INST_0_i_5 
       (.I0(a[4]),
        .I1(a[3]),
        .I2(a[1]),
        .I3(a[0]),
        .I4(a[2]),
        .I5(a[5]),
        .O(\spo[26]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h8923056390145231)) 
    \spo[26]_INST_0_i_6 
       (.I0(a[4]),
        .I1(a[3]),
        .I2(a[5]),
        .I3(a[2]),
        .I4(a[1]),
        .I5(a[0]),
        .O(\spo[26]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \spo[27]_INST_0 
       (.I0(a[12]),
        .I1(a[10]),
        .I2(\spo[27]_INST_0_i_1_n_0 ),
        .I3(a[9]),
        .I4(a[11]),
        .I5(a[13]),
        .O(spo[26]));
  LUT6 #(
    .INIT(64'h00000000EEE222E2)) 
    \spo[27]_INST_0_i_1 
       (.I0(\spo[27]_INST_0_i_2_n_0 ),
        .I1(a[7]),
        .I2(\spo[27]_INST_0_i_3_n_0 ),
        .I3(a[6]),
        .I4(\spo[31]_INST_0_i_4_n_0 ),
        .I5(a[8]),
        .O(\spo[27]_INST_0_i_1_n_0 ));
  MUXF7 \spo[27]_INST_0_i_2 
       (.I0(\spo[27]_INST_0_i_4_n_0 ),
        .I1(\spo[27]_INST_0_i_5_n_0 ),
        .O(\spo[27]_INST_0_i_2_n_0 ),
        .S(a[6]));
  LUT6 #(
    .INIT(64'h0104111188100000)) 
    \spo[27]_INST_0_i_3 
       (.I0(a[4]),
        .I1(a[3]),
        .I2(a[2]),
        .I3(a[1]),
        .I4(a[5]),
        .I5(a[0]),
        .O(\spo[27]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0400440842213089)) 
    \spo[27]_INST_0_i_4 
       (.I0(a[4]),
        .I1(a[3]),
        .I2(a[1]),
        .I3(a[0]),
        .I4(a[2]),
        .I5(a[5]),
        .O(\spo[27]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h8123056390145231)) 
    \spo[27]_INST_0_i_5 
       (.I0(a[4]),
        .I1(a[3]),
        .I2(a[5]),
        .I3(a[2]),
        .I4(a[1]),
        .I5(a[0]),
        .O(\spo[27]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \spo[28]_INST_0 
       (.I0(a[12]),
        .I1(a[10]),
        .I2(\spo[28]_INST_0_i_1_n_0 ),
        .I3(a[9]),
        .I4(a[11]),
        .I5(a[13]),
        .O(spo[27]));
  LUT6 #(
    .INIT(64'h00000000EEE222E2)) 
    \spo[28]_INST_0_i_1 
       (.I0(\spo[28]_INST_0_i_2_n_0 ),
        .I1(a[7]),
        .I2(\spo[28]_INST_0_i_3_n_0 ),
        .I3(a[6]),
        .I4(\spo[28]_INST_0_i_4_n_0 ),
        .I5(a[8]),
        .O(\spo[28]_INST_0_i_1_n_0 ));
  MUXF7 \spo[28]_INST_0_i_2 
       (.I0(\spo[28]_INST_0_i_5_n_0 ),
        .I1(\spo[28]_INST_0_i_6_n_0 ),
        .O(\spo[28]_INST_0_i_2_n_0 ),
        .S(a[6]));
  LUT6 #(
    .INIT(64'h0124111188100000)) 
    \spo[28]_INST_0_i_3 
       (.I0(a[4]),
        .I1(a[3]),
        .I2(a[2]),
        .I3(a[1]),
        .I4(a[5]),
        .I5(a[0]),
        .O(\spo[28]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000001040410)) 
    \spo[28]_INST_0_i_4 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[2]),
        .I3(a[1]),
        .I4(a[3]),
        .I5(a[4]),
        .O(\spo[28]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0040404802002829)) 
    \spo[28]_INST_0_i_5 
       (.I0(a[4]),
        .I1(a[3]),
        .I2(a[0]),
        .I3(a[1]),
        .I4(a[2]),
        .I5(a[5]),
        .O(\spo[28]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h8923052310105231)) 
    \spo[28]_INST_0_i_6 
       (.I0(a[4]),
        .I1(a[3]),
        .I2(a[5]),
        .I3(a[2]),
        .I4(a[1]),
        .I5(a[0]),
        .O(\spo[28]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \spo[29]_INST_0 
       (.I0(a[12]),
        .I1(a[10]),
        .I2(\spo[29]_INST_0_i_1_n_0 ),
        .I3(a[9]),
        .I4(a[11]),
        .I5(a[13]),
        .O(spo[28]));
  LUT6 #(
    .INIT(64'h00000000FFE200E2)) 
    \spo[29]_INST_0_i_1 
       (.I0(\spo[29]_INST_0_i_2_n_0 ),
        .I1(a[6]),
        .I2(\spo[30]_INST_0_i_3_n_0 ),
        .I3(a[7]),
        .I4(\spo[29]_INST_0_i_3_n_0 ),
        .I5(a[8]),
        .O(\spo[29]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0040404C02200809)) 
    \spo[29]_INST_0_i_2 
       (.I0(a[4]),
        .I1(a[3]),
        .I2(a[0]),
        .I3(a[1]),
        .I4(a[2]),
        .I5(a[5]),
        .O(\spo[29]_INST_0_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \spo[29]_INST_0_i_3 
       (.I0(\spo[29]_INST_0_i_4_n_0 ),
        .I1(a[4]),
        .I2(a[6]),
        .I3(\spo[27]_INST_0_i_3_n_0 ),
        .O(\spo[29]_INST_0_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00000618)) 
    \spo[29]_INST_0_i_4 
       (.I0(a[3]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[0]),
        .I4(a[5]),
        .O(\spo[29]_INST_0_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \spo[2]_INST_0 
       (.I0(\spo[2]_INST_0_i_1_n_0 ),
        .I1(a[13]),
        .O(spo[1]));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \spo[2]_INST_0_i_1 
       (.I0(a[11]),
        .I1(a[9]),
        .I2(\spo[2]_INST_0_i_2_n_0 ),
        .I3(a[8]),
        .I4(a[10]),
        .I5(a[12]),
        .O(\spo[2]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[2]_INST_0_i_2 
       (.I0(\spo[16]_INST_0_i_4_n_0 ),
        .I1(\spo[2]_INST_0_i_3_n_0 ),
        .I2(a[7]),
        .I3(\spo[3]_INST_0_i_3_n_0 ),
        .I4(a[6]),
        .I5(\spo[2]_INST_0_i_4_n_0 ),
        .O(\spo[2]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000800000000482)) 
    \spo[2]_INST_0_i_3 
       (.I0(a[4]),
        .I1(a[5]),
        .I2(a[2]),
        .I3(a[1]),
        .I4(a[0]),
        .I5(a[3]),
        .O(\spo[2]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h2002000400200001)) 
    \spo[2]_INST_0_i_4 
       (.I0(a[4]),
        .I1(a[3]),
        .I2(a[0]),
        .I3(a[1]),
        .I4(a[2]),
        .I5(a[5]),
        .O(\spo[2]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \spo[30]_INST_0 
       (.I0(a[12]),
        .I1(a[10]),
        .I2(\spo[30]_INST_0_i_1_n_0 ),
        .I3(a[9]),
        .I4(a[11]),
        .I5(a[13]),
        .O(spo[29]));
  LUT6 #(
    .INIT(64'h00000000FFE200E2)) 
    \spo[30]_INST_0_i_1 
       (.I0(\spo[30]_INST_0_i_2_n_0 ),
        .I1(a[6]),
        .I2(\spo[30]_INST_0_i_3_n_0 ),
        .I3(a[7]),
        .I4(\spo[30]_INST_0_i_4_n_0 ),
        .I5(a[8]),
        .O(\spo[30]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0060424802000809)) 
    \spo[30]_INST_0_i_2 
       (.I0(a[4]),
        .I1(a[3]),
        .I2(a[0]),
        .I3(a[1]),
        .I4(a[2]),
        .I5(a[5]),
        .O(\spo[30]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h800A105F10570020)) 
    \spo[30]_INST_0_i_3 
       (.I0(a[4]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[5]),
        .I5(a[0]),
        .O(\spo[30]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hB888BBBBB8888888)) 
    \spo[30]_INST_0_i_4 
       (.I0(\spo[31]_INST_0_i_4_n_0 ),
        .I1(a[6]),
        .I2(\spo[30]_INST_0_i_5_n_0 ),
        .I3(a[3]),
        .I4(a[4]),
        .I5(\spo[30]_INST_0_i_6_n_0 ),
        .O(\spo[30]_INST_0_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h4800)) 
    \spo[30]_INST_0_i_5 
       (.I0(a[1]),
        .I1(a[2]),
        .I2(a[0]),
        .I3(a[5]),
        .O(\spo[30]_INST_0_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h12550400)) 
    \spo[30]_INST_0_i_6 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[1]),
        .I3(a[5]),
        .I4(a[0]),
        .O(\spo[30]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \spo[31]_INST_0 
       (.I0(a[12]),
        .I1(a[10]),
        .I2(\spo[31]_INST_0_i_1_n_0 ),
        .I3(a[9]),
        .I4(a[11]),
        .I5(a[13]),
        .O(spo[30]));
  LUT6 #(
    .INIT(64'h00000000EEE222E2)) 
    \spo[31]_INST_0_i_1 
       (.I0(\spo[31]_INST_0_i_2_n_0 ),
        .I1(a[7]),
        .I2(\spo[31]_INST_0_i_3_n_0 ),
        .I3(a[6]),
        .I4(\spo[31]_INST_0_i_4_n_0 ),
        .I5(a[8]),
        .O(\spo[31]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \spo[31]_INST_0_i_2 
       (.I0(\spo[30]_INST_0_i_3_n_0 ),
        .I1(a[6]),
        .I2(\spo[31]_INST_0_i_5_n_0 ),
        .I3(a[4]),
        .I4(\spo[31]_INST_0_i_6_n_0 ),
        .O(\spo[31]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0184111180100002)) 
    \spo[31]_INST_0_i_3 
       (.I0(a[4]),
        .I1(a[3]),
        .I2(a[2]),
        .I3(a[1]),
        .I4(a[5]),
        .I5(a[0]),
        .O(\spo[31]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000340140)) 
    \spo[31]_INST_0_i_4 
       (.I0(a[4]),
        .I1(a[3]),
        .I2(a[1]),
        .I3(a[2]),
        .I4(a[0]),
        .I5(a[5]),
        .O(\spo[31]_INST_0_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h00021202)) 
    \spo[31]_INST_0_i_5 
       (.I0(a[3]),
        .I1(a[0]),
        .I2(a[2]),
        .I3(a[1]),
        .I4(a[5]),
        .O(\spo[31]_INST_0_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h08880001)) 
    \spo[31]_INST_0_i_6 
       (.I0(a[3]),
        .I1(a[0]),
        .I2(a[1]),
        .I3(a[2]),
        .I4(a[5]),
        .O(\spo[31]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \spo[3]_INST_0 
       (.I0(a[12]),
        .I1(a[10]),
        .I2(\spo[3]_INST_0_i_1_n_0 ),
        .I3(a[9]),
        .I4(a[11]),
        .I5(a[13]),
        .O(spo[2]));
  LUT6 #(
    .INIT(64'h00000000FFE200E2)) 
    \spo[3]_INST_0_i_1 
       (.I0(\spo[3]_INST_0_i_2_n_0 ),
        .I1(a[6]),
        .I2(\spo[3]_INST_0_i_3_n_0 ),
        .I3(a[7]),
        .I4(\spo[3]_INST_0_i_4_n_0 ),
        .I5(a[8]),
        .O(\spo[3]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000480200080)) 
    \spo[3]_INST_0_i_2 
       (.I0(a[4]),
        .I1(a[5]),
        .I2(a[2]),
        .I3(a[1]),
        .I4(a[0]),
        .I5(a[3]),
        .O(\spo[3]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h2000800008000021)) 
    \spo[3]_INST_0_i_3 
       (.I0(a[4]),
        .I1(a[5]),
        .I2(a[2]),
        .I3(a[1]),
        .I4(a[0]),
        .I5(a[3]),
        .O(\spo[3]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hBBB888B888888888)) 
    \spo[3]_INST_0_i_4 
       (.I0(\spo[16]_INST_0_i_4_n_0 ),
        .I1(a[6]),
        .I2(\spo[3]_INST_0_i_5_n_0 ),
        .I3(a[3]),
        .I4(\spo[3]_INST_0_i_6_n_0 ),
        .I5(a[4]),
        .O(\spo[3]_INST_0_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h0400)) 
    \spo[3]_INST_0_i_5 
       (.I0(a[0]),
        .I1(a[2]),
        .I2(a[1]),
        .I3(a[5]),
        .O(\spo[3]_INST_0_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    \spo[3]_INST_0_i_6 
       (.I0(a[0]),
        .I1(a[2]),
        .I2(a[1]),
        .I3(a[5]),
        .O(\spo[3]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \spo[4]_INST_0 
       (.I0(a[12]),
        .I1(a[10]),
        .I2(\spo[4]_INST_0_i_1_n_0 ),
        .I3(a[9]),
        .I4(a[11]),
        .I5(a[13]),
        .O(spo[3]));
  LUT6 #(
    .INIT(64'h00000000EEE222E2)) 
    \spo[4]_INST_0_i_1 
       (.I0(\spo[4]_INST_0_i_2_n_0 ),
        .I1(a[7]),
        .I2(\spo[4]_INST_0_i_3_n_0 ),
        .I3(a[6]),
        .I4(\spo[10]_INST_0_i_4_n_0 ),
        .I5(a[8]),
        .O(\spo[4]_INST_0_i_1_n_0 ));
  MUXF7 \spo[4]_INST_0_i_2 
       (.I0(\spo[4]_INST_0_i_4_n_0 ),
        .I1(\spo[4]_INST_0_i_5_n_0 ),
        .O(\spo[4]_INST_0_i_2_n_0 ),
        .S(a[6]));
  LUT6 #(
    .INIT(64'hDFEAFFFF25B0FAEA)) 
    \spo[4]_INST_0_i_3 
       (.I0(a[4]),
        .I1(a[2]),
        .I2(a[3]),
        .I3(a[1]),
        .I4(a[5]),
        .I5(a[0]),
        .O(\spo[4]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hD1F9D1D00F0F2FBF)) 
    \spo[4]_INST_0_i_4 
       (.I0(a[4]),
        .I1(a[3]),
        .I2(a[5]),
        .I3(a[1]),
        .I4(a[2]),
        .I5(a[0]),
        .O(\spo[4]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hEF8A557D557DFAA2)) 
    \spo[4]_INST_0_i_5 
       (.I0(a[4]),
        .I1(a[2]),
        .I2(a[1]),
        .I3(a[3]),
        .I4(a[5]),
        .I5(a[0]),
        .O(\spo[4]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \spo[5]_INST_0 
       (.I0(a[12]),
        .I1(a[10]),
        .I2(\spo[5]_INST_0_i_1_n_0 ),
        .I3(a[9]),
        .I4(a[11]),
        .I5(a[13]),
        .O(spo[4]));
  LUT6 #(
    .INIT(64'h00000000EEE222E2)) 
    \spo[5]_INST_0_i_1 
       (.I0(\spo[5]_INST_0_i_2_n_0 ),
        .I1(a[7]),
        .I2(\spo[5]_INST_0_i_3_n_0 ),
        .I3(a[6]),
        .I4(\spo[5]_INST_0_i_4_n_0 ),
        .I5(a[8]),
        .O(\spo[5]_INST_0_i_1_n_0 ));
  MUXF7 \spo[5]_INST_0_i_2 
       (.I0(\spo[5]_INST_0_i_5_n_0 ),
        .I1(\spo[5]_INST_0_i_6_n_0 ),
        .O(\spo[5]_INST_0_i_2_n_0 ),
        .S(a[6]));
  LUT6 #(
    .INIT(64'h208DC084A311DDB7)) 
    \spo[5]_INST_0_i_3 
       (.I0(a[4]),
        .I1(a[3]),
        .I2(a[1]),
        .I3(a[2]),
        .I4(a[5]),
        .I5(a[0]),
        .O(\spo[5]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000050230562)) 
    \spo[5]_INST_0_i_4 
       (.I0(a[4]),
        .I1(a[3]),
        .I2(a[1]),
        .I3(a[2]),
        .I4(a[0]),
        .I5(a[5]),
        .O(\spo[5]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h2F60266A2E60BE41)) 
    \spo[5]_INST_0_i_5 
       (.I0(a[4]),
        .I1(a[3]),
        .I2(a[5]),
        .I3(a[0]),
        .I4(a[1]),
        .I5(a[2]),
        .O(\spo[5]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h107D810A810A05DD)) 
    \spo[5]_INST_0_i_6 
       (.I0(a[4]),
        .I1(a[2]),
        .I2(a[1]),
        .I3(a[3]),
        .I4(a[5]),
        .I5(a[0]),
        .O(\spo[5]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \spo[6]_INST_0 
       (.I0(a[12]),
        .I1(a[10]),
        .I2(\spo[6]_INST_0_i_1_n_0 ),
        .I3(a[9]),
        .I4(a[11]),
        .I5(a[13]),
        .O(spo[5]));
  LUT6 #(
    .INIT(64'h00000000EEE222E2)) 
    \spo[6]_INST_0_i_1 
       (.I0(\spo[6]_INST_0_i_2_n_0 ),
        .I1(a[7]),
        .I2(\spo[6]_INST_0_i_3_n_0 ),
        .I3(a[6]),
        .I4(\spo[6]_INST_0_i_4_n_0 ),
        .I5(a[8]),
        .O(\spo[6]_INST_0_i_1_n_0 ));
  MUXF7 \spo[6]_INST_0_i_2 
       (.I0(\spo[6]_INST_0_i_5_n_0 ),
        .I1(\spo[6]_INST_0_i_6_n_0 ),
        .O(\spo[6]_INST_0_i_2_n_0 ),
        .S(a[6]));
  LUT6 #(
    .INIT(64'h0A80034000000000)) 
    \spo[6]_INST_0_i_3 
       (.I0(a[4]),
        .I1(a[3]),
        .I2(a[0]),
        .I3(a[2]),
        .I4(a[1]),
        .I5(a[5]),
        .O(\spo[6]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000010210140)) 
    \spo[6]_INST_0_i_4 
       (.I0(a[4]),
        .I1(a[3]),
        .I2(a[1]),
        .I3(a[2]),
        .I4(a[0]),
        .I5(a[5]),
        .O(\spo[6]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0C040414A0288888)) 
    \spo[6]_INST_0_i_5 
       (.I0(a[4]),
        .I1(a[0]),
        .I2(a[5]),
        .I3(a[1]),
        .I4(a[2]),
        .I5(a[3]),
        .O(\spo[6]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0800600280060021)) 
    \spo[6]_INST_0_i_6 
       (.I0(a[4]),
        .I1(a[3]),
        .I2(a[0]),
        .I3(a[1]),
        .I4(a[2]),
        .I5(a[5]),
        .O(\spo[6]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \spo[7]_INST_0 
       (.I0(a[12]),
        .I1(a[10]),
        .I2(\spo[7]_INST_0_i_1_n_0 ),
        .I3(a[9]),
        .I4(a[11]),
        .I5(a[13]),
        .O(spo[6]));
  LUT6 #(
    .INIT(64'h00000000EEE222E2)) 
    \spo[7]_INST_0_i_1 
       (.I0(\spo[7]_INST_0_i_2_n_0 ),
        .I1(a[7]),
        .I2(\spo[7]_INST_0_i_3_n_0 ),
        .I3(a[6]),
        .I4(\spo[7]_INST_0_i_4_n_0 ),
        .I5(a[8]),
        .O(\spo[7]_INST_0_i_1_n_0 ));
  MUXF7 \spo[7]_INST_0_i_2 
       (.I0(\spo[7]_INST_0_i_5_n_0 ),
        .I1(\spo[7]_INST_0_i_6_n_0 ),
        .O(\spo[7]_INST_0_i_2_n_0 ),
        .S(a[6]));
  LUT6 #(
    .INIT(64'h920C49644A0CC668)) 
    \spo[7]_INST_0_i_3 
       (.I0(a[4]),
        .I1(a[3]),
        .I2(a[1]),
        .I3(a[2]),
        .I4(a[0]),
        .I5(a[5]),
        .O(\spo[7]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000045410410)) 
    \spo[7]_INST_0_i_4 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[1]),
        .I3(a[2]),
        .I4(a[3]),
        .I5(a[4]),
        .O(\spo[7]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h009D01B6200C00B7)) 
    \spo[7]_INST_0_i_5 
       (.I0(a[4]),
        .I1(a[3]),
        .I2(a[5]),
        .I3(a[0]),
        .I4(a[2]),
        .I5(a[1]),
        .O(\spo[7]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h005F5F0000303000)) 
    \spo[7]_INST_0_i_6 
       (.I0(a[1]),
        .I1(a[2]),
        .I2(a[4]),
        .I3(a[0]),
        .I4(a[5]),
        .I5(a[3]),
        .O(\spo[7]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \spo[8]_INST_0 
       (.I0(a[12]),
        .I1(a[10]),
        .I2(\spo[8]_INST_0_i_1_n_0 ),
        .I3(a[9]),
        .I4(a[11]),
        .I5(a[13]),
        .O(spo[7]));
  LUT6 #(
    .INIT(64'h00000000EEE222E2)) 
    \spo[8]_INST_0_i_1 
       (.I0(\spo[8]_INST_0_i_2_n_0 ),
        .I1(a[7]),
        .I2(\spo[8]_INST_0_i_3_n_0 ),
        .I3(a[6]),
        .I4(\spo[8]_INST_0_i_4_n_0 ),
        .I5(a[8]),
        .O(\spo[8]_INST_0_i_1_n_0 ));
  MUXF7 \spo[8]_INST_0_i_2 
       (.I0(\spo[8]_INST_0_i_5_n_0 ),
        .I1(\spo[8]_INST_0_i_6_n_0 ),
        .O(\spo[8]_INST_0_i_2_n_0 ),
        .S(a[6]));
  LUT6 #(
    .INIT(64'h5662719D1E40E648)) 
    \spo[8]_INST_0_i_3 
       (.I0(a[4]),
        .I1(a[3]),
        .I2(a[2]),
        .I3(a[1]),
        .I4(a[5]),
        .I5(a[0]),
        .O(\spo[8]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000400041)) 
    \spo[8]_INST_0_i_4 
       (.I0(a[5]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[0]),
        .I4(a[3]),
        .I5(a[4]),
        .O(\spo[8]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h9093D029F1094098)) 
    \spo[8]_INST_0_i_5 
       (.I0(a[4]),
        .I1(a[3]),
        .I2(a[5]),
        .I3(a[0]),
        .I4(a[2]),
        .I5(a[1]),
        .O(\spo[8]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hEA800DD50DD5AA02)) 
    \spo[8]_INST_0_i_6 
       (.I0(a[4]),
        .I1(a[2]),
        .I2(a[1]),
        .I3(a[3]),
        .I4(a[5]),
        .I5(a[0]),
        .O(\spo[8]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \spo[9]_INST_0 
       (.I0(a[12]),
        .I1(a[10]),
        .I2(\spo[9]_INST_0_i_1_n_0 ),
        .I3(a[9]),
        .I4(a[11]),
        .I5(a[13]),
        .O(spo[8]));
  LUT6 #(
    .INIT(64'h00000000EEE222E2)) 
    \spo[9]_INST_0_i_1 
       (.I0(\spo[9]_INST_0_i_2_n_0 ),
        .I1(a[7]),
        .I2(\spo[9]_INST_0_i_3_n_0 ),
        .I3(a[6]),
        .I4(\spo[10]_INST_0_i_4_n_0 ),
        .I5(a[8]),
        .O(\spo[9]_INST_0_i_1_n_0 ));
  MUXF7 \spo[9]_INST_0_i_2 
       (.I0(\spo[9]_INST_0_i_4_n_0 ),
        .I1(\spo[9]_INST_0_i_5_n_0 ),
        .O(\spo[9]_INST_0_i_2_n_0 ),
        .S(a[6]));
  LUT6 #(
    .INIT(64'hB8186DDEA6EA2A8A)) 
    \spo[9]_INST_0_i_3 
       (.I0(a[4]),
        .I1(a[3]),
        .I2(a[1]),
        .I3(a[2]),
        .I4(a[0]),
        .I5(a[5]),
        .O(\spo[9]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h41080D9725969626)) 
    \spo[9]_INST_0_i_4 
       (.I0(a[4]),
        .I1(a[3]),
        .I2(a[5]),
        .I3(a[1]),
        .I4(a[0]),
        .I5(a[2]),
        .O(\spo[9]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h554E4E5422AAAA8A)) 
    \spo[9]_INST_0_i_5 
       (.I0(a[4]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[0]),
        .I4(a[5]),
        .I5(a[3]),
        .O(\spo[9]_INST_0_i_5_n_0 ));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
