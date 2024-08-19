-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Fri Jul 19 15:05:02 2024
-- Host        : PA03 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               E:/cpu/proj_miniRV/proj_single_cycle/proj_single_cycle.srcs/sources_1/ip/IROM/IROM_sim_netlist.vhdl
-- Design      : IROM
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a100tfgg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity IROM_rom is
  port (
    spo : out STD_LOGIC_VECTOR ( 30 downto 0 );
    a : in STD_LOGIC_VECTOR ( 13 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of IROM_rom : entity is "rom";
end IROM_rom;

architecture STRUCTURE of IROM_rom is
  signal \spo[0]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \spo[0]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \spo[10]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \spo[10]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \spo[10]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \spo[10]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \spo[10]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \spo[10]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \spo[11]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \spo[11]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \spo[11]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \spo[11]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \spo[11]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \spo[11]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \spo[12]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \spo[12]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \spo[12]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \spo[12]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \spo[12]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \spo[12]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \spo[13]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \spo[13]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \spo[13]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \spo[13]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \spo[13]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \spo[13]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \spo[14]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \spo[14]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \spo[14]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \spo[14]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \spo[14]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \spo[14]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \spo[15]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \spo[15]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \spo[15]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \spo[15]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \spo[15]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \spo[15]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \spo[16]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \spo[16]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \spo[16]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \spo[16]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \spo[16]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \spo[16]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \spo[17]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \spo[17]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \spo[17]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \spo[17]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \spo[17]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \spo[17]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \spo[18]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \spo[18]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \spo[18]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \spo[18]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \spo[18]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \spo[18]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \spo[19]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \spo[19]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \spo[19]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \spo[19]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \spo[19]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \spo[19]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \spo[20]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \spo[20]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \spo[20]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \spo[20]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \spo[20]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \spo[20]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \spo[21]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \spo[21]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \spo[21]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \spo[21]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \spo[21]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \spo[21]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \spo[22]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \spo[22]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \spo[22]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \spo[22]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \spo[22]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \spo[22]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \spo[23]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \spo[23]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \spo[23]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \spo[23]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \spo[23]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \spo[23]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \spo[24]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \spo[24]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \spo[24]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \spo[24]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \spo[24]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \spo[24]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \spo[25]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \spo[25]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \spo[25]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \spo[25]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \spo[25]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \spo[25]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \spo[26]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \spo[26]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \spo[26]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \spo[26]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \spo[26]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \spo[26]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \spo[27]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \spo[27]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \spo[27]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \spo[27]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \spo[27]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \spo[28]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \spo[28]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \spo[28]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \spo[28]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \spo[28]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \spo[28]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \spo[29]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \spo[29]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \spo[29]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \spo[29]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \spo[2]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \spo[2]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \spo[2]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \spo[2]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \spo[30]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \spo[30]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \spo[30]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \spo[30]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \spo[30]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \spo[30]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \spo[31]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \spo[31]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \spo[31]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \spo[31]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \spo[31]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \spo[31]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \spo[3]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \spo[3]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \spo[3]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \spo[3]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \spo[3]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \spo[3]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \spo[4]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \spo[4]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \spo[4]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \spo[4]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \spo[4]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \spo[5]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \spo[5]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \spo[5]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \spo[5]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \spo[5]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \spo[5]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \spo[6]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \spo[6]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \spo[6]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \spo[6]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \spo[6]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \spo[6]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \spo[7]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \spo[7]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \spo[7]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \spo[7]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \spo[7]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \spo[7]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \spo[8]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \spo[8]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \spo[8]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \spo[8]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \spo[8]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \spo[8]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \spo[9]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \spo[9]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \spo[9]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \spo[9]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \spo[9]_INST_0_i_5_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \spo[19]_INST_0_i_5\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \spo[19]_INST_0_i_6\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \spo[21]_INST_0_i_4\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \spo[29]_INST_0_i_4\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \spo[30]_INST_0_i_5\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \spo[30]_INST_0_i_6\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \spo[31]_INST_0_i_5\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \spo[31]_INST_0_i_6\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \spo[3]_INST_0_i_5\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \spo[3]_INST_0_i_6\ : label is "soft_lutpair4";
begin
\spo[0]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000010"
    )
        port map (
      I0 => a(12),
      I1 => a(10),
      I2 => \spo[0]_INST_0_i_1_n_0\,
      I3 => a(9),
      I4 => a(11),
      I5 => a(13),
      O => spo(0)
    );
\spo[0]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000F757FFFF"
    )
        port map (
      I0 => a(7),
      I1 => a(5),
      I2 => a(4),
      I3 => \spo[0]_INST_0_i_2_n_0\,
      I4 => a(6),
      I5 => a(8),
      O => \spo[0]_INST_0_i_1_n_0\
    );
\spo[0]_INST_0_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => a(5),
      I1 => a(2),
      I2 => a(3),
      O => \spo[0]_INST_0_i_2_n_0\
    );
\spo[10]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000010"
    )
        port map (
      I0 => a(12),
      I1 => a(10),
      I2 => \spo[10]_INST_0_i_1_n_0\,
      I3 => a(9),
      I4 => a(11),
      I5 => a(13),
      O => spo(9)
    );
\spo[10]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000EEE222E2"
    )
        port map (
      I0 => \spo[10]_INST_0_i_2_n_0\,
      I1 => a(7),
      I2 => \spo[10]_INST_0_i_3_n_0\,
      I3 => a(6),
      I4 => \spo[10]_INST_0_i_4_n_0\,
      I5 => a(8),
      O => \spo[10]_INST_0_i_1_n_0\
    );
\spo[10]_INST_0_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[10]_INST_0_i_5_n_0\,
      I1 => \spo[10]_INST_0_i_6_n_0\,
      O => \spo[10]_INST_0_i_2_n_0\,
      S => a(6)
    );
\spo[10]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AB1C7DFEEEEEEEEA"
    )
        port map (
      I0 => a(4),
      I1 => a(3),
      I2 => a(1),
      I3 => a(2),
      I4 => a(0),
      I5 => a(5),
      O => \spo[10]_INST_0_i_3_n_0\
    );
\spo[10]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000045545147"
    )
        port map (
      I0 => a(4),
      I1 => a(3),
      I2 => a(2),
      I3 => a(1),
      I4 => a(0),
      I5 => a(5),
      O => \spo[10]_INST_0_i_4_n_0\
    );
\spo[10]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4D29BC9E0497B7B7"
    )
        port map (
      I0 => a(4),
      I1 => a(3),
      I2 => a(5),
      I3 => a(1),
      I4 => a(0),
      I5 => a(2),
      O => \spo[10]_INST_0_i_5_n_0\
    );
\spo[10]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"57741FF42AA82AAA"
    )
        port map (
      I0 => a(4),
      I1 => a(1),
      I2 => a(0),
      I3 => a(5),
      I4 => a(2),
      I5 => a(3),
      O => \spo[10]_INST_0_i_6_n_0\
    );
\spo[11]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000010"
    )
        port map (
      I0 => a(12),
      I1 => a(10),
      I2 => \spo[11]_INST_0_i_1_n_0\,
      I3 => a(9),
      I4 => a(11),
      I5 => a(13),
      O => spo(10)
    );
\spo[11]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000EEE222E2"
    )
        port map (
      I0 => \spo[11]_INST_0_i_2_n_0\,
      I1 => a(7),
      I2 => \spo[11]_INST_0_i_3_n_0\,
      I3 => a(6),
      I4 => \spo[11]_INST_0_i_4_n_0\,
      I5 => a(8),
      O => \spo[11]_INST_0_i_1_n_0\
    );
\spo[11]_INST_0_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[11]_INST_0_i_5_n_0\,
      I1 => \spo[11]_INST_0_i_6_n_0\,
      O => \spo[11]_INST_0_i_2_n_0\,
      S => a(6)
    );
\spo[11]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2080000000000400"
    )
        port map (
      I0 => a(4),
      I1 => a(5),
      I2 => a(1),
      I3 => a(2),
      I4 => a(0),
      I5 => a(3),
      O => \spo[11]_INST_0_i_3_n_0\
    );
\spo[11]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000010010002"
    )
        port map (
      I0 => a(4),
      I1 => a(5),
      I2 => a(1),
      I3 => a(2),
      I4 => a(0),
      I5 => a(3),
      O => \spo[11]_INST_0_i_4_n_0\
    );
\spo[11]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"010422B200020000"
    )
        port map (
      I0 => a(4),
      I1 => a(3),
      I2 => a(5),
      I3 => a(1),
      I4 => a(2),
      I5 => a(0),
      O => \spo[11]_INST_0_i_5_n_0\
    );
\spo[11]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0400100000000000"
    )
        port map (
      I0 => a(3),
      I1 => a(5),
      I2 => a(1),
      I3 => a(2),
      I4 => a(0),
      I5 => a(4),
      O => \spo[11]_INST_0_i_6_n_0\
    );
\spo[12]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000010"
    )
        port map (
      I0 => a(12),
      I1 => a(10),
      I2 => \spo[12]_INST_0_i_1_n_0\,
      I3 => a(9),
      I4 => a(11),
      I5 => a(13),
      O => spo(11)
    );
\spo[12]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000EEE222E2"
    )
        port map (
      I0 => \spo[12]_INST_0_i_2_n_0\,
      I1 => a(7),
      I2 => \spo[12]_INST_0_i_3_n_0\,
      I3 => a(6),
      I4 => \spo[12]_INST_0_i_4_n_0\,
      I5 => a(8),
      O => \spo[12]_INST_0_i_1_n_0\
    );
\spo[12]_INST_0_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[12]_INST_0_i_5_n_0\,
      I1 => \spo[12]_INST_0_i_6_n_0\,
      O => \spo[12]_INST_0_i_2_n_0\,
      S => a(6)
    );
\spo[12]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A50000200ACA58A0"
    )
        port map (
      I0 => a(4),
      I1 => a(0),
      I2 => a(3),
      I3 => a(1),
      I4 => a(2),
      I5 => a(5),
      O => \spo[12]_INST_0_i_3_n_0\
    );
\spo[12]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000010455800"
    )
        port map (
      I0 => a(4),
      I1 => a(0),
      I2 => a(3),
      I3 => a(1),
      I4 => a(2),
      I5 => a(5),
      O => \spo[12]_INST_0_i_4_n_0\
    );
\spo[12]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4000002201119101"
    )
        port map (
      I0 => a(4),
      I1 => a(3),
      I2 => a(0),
      I3 => a(2),
      I4 => a(1),
      I5 => a(5),
      O => \spo[12]_INST_0_i_5_n_0\
    );
\spo[12]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"544414440002A020"
    )
        port map (
      I0 => a(4),
      I1 => a(1),
      I2 => a(5),
      I3 => a(0),
      I4 => a(2),
      I5 => a(3),
      O => \spo[12]_INST_0_i_6_n_0\
    );
\spo[13]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000010"
    )
        port map (
      I0 => a(12),
      I1 => a(10),
      I2 => \spo[13]_INST_0_i_1_n_0\,
      I3 => a(9),
      I4 => a(11),
      I5 => a(13),
      O => spo(12)
    );
\spo[13]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000EEE222E2"
    )
        port map (
      I0 => \spo[13]_INST_0_i_2_n_0\,
      I1 => a(7),
      I2 => \spo[13]_INST_0_i_3_n_0\,
      I3 => a(6),
      I4 => \spo[13]_INST_0_i_4_n_0\,
      I5 => a(8),
      O => \spo[13]_INST_0_i_1_n_0\
    );
\spo[13]_INST_0_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[13]_INST_0_i_5_n_0\,
      I1 => \spo[13]_INST_0_i_6_n_0\,
      O => \spo[13]_INST_0_i_2_n_0\,
      S => a(6)
    );
\spo[13]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"11012028C4631335"
    )
        port map (
      I0 => a(4),
      I1 => a(3),
      I2 => a(1),
      I3 => a(2),
      I4 => a(5),
      I5 => a(0),
      O => \spo[13]_INST_0_i_3_n_0\
    );
\spo[13]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000004260120"
    )
        port map (
      I0 => a(4),
      I1 => a(3),
      I2 => a(0),
      I3 => a(2),
      I4 => a(1),
      I5 => a(5),
      O => \spo[13]_INST_0_i_4_n_0\
    );
\spo[13]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"42D109D008D10921"
    )
        port map (
      I0 => a(4),
      I1 => a(3),
      I2 => a(5),
      I3 => a(0),
      I4 => a(2),
      I5 => a(1),
      O => \spo[13]_INST_0_i_5_n_0\
    );
\spo[13]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"52183C782183C584"
    )
        port map (
      I0 => a(4),
      I1 => a(3),
      I2 => a(5),
      I3 => a(1),
      I4 => a(2),
      I5 => a(0),
      O => \spo[13]_INST_0_i_6_n_0\
    );
\spo[14]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000010"
    )
        port map (
      I0 => a(12),
      I1 => a(10),
      I2 => \spo[14]_INST_0_i_1_n_0\,
      I3 => a(9),
      I4 => a(11),
      I5 => a(13),
      O => spo(13)
    );
\spo[14]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000EEE222E2"
    )
        port map (
      I0 => \spo[14]_INST_0_i_2_n_0\,
      I1 => a(7),
      I2 => \spo[14]_INST_0_i_3_n_0\,
      I3 => a(6),
      I4 => \spo[14]_INST_0_i_4_n_0\,
      I5 => a(8),
      O => \spo[14]_INST_0_i_1_n_0\
    );
\spo[14]_INST_0_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[14]_INST_0_i_5_n_0\,
      I1 => \spo[14]_INST_0_i_6_n_0\,
      O => \spo[14]_INST_0_i_2_n_0\,
      S => a(6)
    );
\spo[14]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0082A22A62E62020"
    )
        port map (
      I0 => a(4),
      I1 => a(5),
      I2 => a(1),
      I3 => a(0),
      I4 => a(2),
      I5 => a(3),
      O => \spo[14]_INST_0_i_3_n_0\
    );
\spo[14]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000010214140"
    )
        port map (
      I0 => a(4),
      I1 => a(3),
      I2 => a(1),
      I3 => a(2),
      I4 => a(0),
      I5 => a(5),
      O => \spo[14]_INST_0_i_4_n_0\
    );
\spo[14]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4220002281119101"
    )
        port map (
      I0 => a(4),
      I1 => a(3),
      I2 => a(0),
      I3 => a(2),
      I4 => a(1),
      I5 => a(5),
      O => \spo[14]_INST_0_i_5_n_0\
    );
\spo[14]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4510501022020208"
    )
        port map (
      I0 => a(4),
      I1 => a(2),
      I2 => a(1),
      I3 => a(5),
      I4 => a(0),
      I5 => a(3),
      O => \spo[14]_INST_0_i_6_n_0\
    );
\spo[15]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000010"
    )
        port map (
      I0 => a(12),
      I1 => a(10),
      I2 => \spo[15]_INST_0_i_1_n_0\,
      I3 => a(9),
      I4 => a(11),
      I5 => a(13),
      O => spo(14)
    );
\spo[15]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000EEE222E2"
    )
        port map (
      I0 => \spo[15]_INST_0_i_2_n_0\,
      I1 => a(7),
      I2 => \spo[15]_INST_0_i_3_n_0\,
      I3 => a(6),
      I4 => \spo[15]_INST_0_i_4_n_0\,
      I5 => a(8),
      O => \spo[15]_INST_0_i_1_n_0\
    );
\spo[15]_INST_0_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[15]_INST_0_i_5_n_0\,
      I1 => \spo[15]_INST_0_i_6_n_0\,
      O => \spo[15]_INST_0_i_2_n_0\,
      S => a(6)
    );
\spo[15]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"80811581C2E6E868"
    )
        port map (
      I0 => a(4),
      I1 => a(3),
      I2 => a(2),
      I3 => a(0),
      I4 => a(1),
      I5 => a(5),
      O => \spo[15]_INST_0_i_3_n_0\
    );
\spo[15]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000045620576"
    )
        port map (
      I0 => a(4),
      I1 => a(3),
      I2 => a(1),
      I3 => a(2),
      I4 => a(0),
      I5 => a(5),
      O => \spo[15]_INST_0_i_4_n_0\
    );
\spo[15]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"404020C820602971"
    )
        port map (
      I0 => a(4),
      I1 => a(3),
      I2 => a(0),
      I3 => a(5),
      I4 => a(1),
      I5 => a(2),
      O => \spo[15]_INST_0_i_5_n_0\
    );
\spo[15]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0554541408080A20"
    )
        port map (
      I0 => a(4),
      I1 => a(1),
      I2 => a(2),
      I3 => a(0),
      I4 => a(5),
      I5 => a(3),
      O => \spo[15]_INST_0_i_6_n_0\
    );
\spo[16]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000010"
    )
        port map (
      I0 => a(12),
      I1 => a(10),
      I2 => \spo[16]_INST_0_i_1_n_0\,
      I3 => a(9),
      I4 => a(11),
      I5 => a(13),
      O => spo(15)
    );
\spo[16]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000EEE222E2"
    )
        port map (
      I0 => \spo[16]_INST_0_i_2_n_0\,
      I1 => a(7),
      I2 => \spo[16]_INST_0_i_3_n_0\,
      I3 => a(6),
      I4 => \spo[16]_INST_0_i_4_n_0\,
      I5 => a(8),
      O => \spo[16]_INST_0_i_1_n_0\
    );
\spo[16]_INST_0_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[16]_INST_0_i_5_n_0\,
      I1 => \spo[16]_INST_0_i_6_n_0\,
      O => \spo[16]_INST_0_i_2_n_0\,
      S => a(6)
    );
\spo[16]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5C664462FF73979D"
    )
        port map (
      I0 => a(4),
      I1 => a(3),
      I2 => a(0),
      I3 => a(2),
      I4 => a(1),
      I5 => a(5),
      O => \spo[16]_INST_0_i_3_n_0\
    );
\spo[16]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000240100"
    )
        port map (
      I0 => a(4),
      I1 => a(3),
      I2 => a(0),
      I3 => a(2),
      I4 => a(1),
      I5 => a(5),
      O => \spo[16]_INST_0_i_4_n_0\
    );
\spo[16]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"96D3DFF8DCD04EB9"
    )
        port map (
      I0 => a(4),
      I1 => a(3),
      I2 => a(5),
      I3 => a(0),
      I4 => a(2),
      I5 => a(1),
      O => \spo[16]_INST_0_i_5_n_0\
    );
\spo[16]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B3F99D993999DF9C"
    )
        port map (
      I0 => a(4),
      I1 => a(3),
      I2 => a(0),
      I3 => a(2),
      I4 => a(1),
      I5 => a(5),
      O => \spo[16]_INST_0_i_6_n_0\
    );
\spo[17]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000010"
    )
        port map (
      I0 => a(12),
      I1 => a(10),
      I2 => \spo[17]_INST_0_i_1_n_0\,
      I3 => a(9),
      I4 => a(11),
      I5 => a(13),
      O => spo(16)
    );
\spo[17]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000EEE222E2"
    )
        port map (
      I0 => \spo[17]_INST_0_i_2_n_0\,
      I1 => a(7),
      I2 => \spo[17]_INST_0_i_3_n_0\,
      I3 => a(6),
      I4 => \spo[17]_INST_0_i_4_n_0\,
      I5 => a(8),
      O => \spo[17]_INST_0_i_1_n_0\
    );
\spo[17]_INST_0_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[17]_INST_0_i_5_n_0\,
      I1 => \spo[17]_INST_0_i_6_n_0\,
      O => \spo[17]_INST_0_i_2_n_0\,
      S => a(6)
    );
\spo[17]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA85A06008F06888"
    )
        port map (
      I0 => a(4),
      I1 => a(0),
      I2 => a(3),
      I3 => a(2),
      I4 => a(1),
      I5 => a(5),
      O => \spo[17]_INST_0_i_3_n_0\
    );
\spo[17]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000054755556"
    )
        port map (
      I0 => a(4),
      I1 => a(3),
      I2 => a(0),
      I3 => a(2),
      I4 => a(1),
      I5 => a(5),
      O => \spo[17]_INST_0_i_4_n_0\
    );
\spo[17]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"42202222C0486061"
    )
        port map (
      I0 => a(4),
      I1 => a(3),
      I2 => a(0),
      I3 => a(1),
      I4 => a(2),
      I5 => a(5),
      O => \spo[17]_INST_0_i_5_n_0\
    );
\spo[17]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"544414440222AA88"
    )
        port map (
      I0 => a(4),
      I1 => a(1),
      I2 => a(5),
      I3 => a(0),
      I4 => a(2),
      I5 => a(3),
      O => \spo[17]_INST_0_i_6_n_0\
    );
\spo[18]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000010"
    )
        port map (
      I0 => a(12),
      I1 => a(10),
      I2 => \spo[18]_INST_0_i_1_n_0\,
      I3 => a(9),
      I4 => a(11),
      I5 => a(13),
      O => spo(17)
    );
\spo[18]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000EEE222E2"
    )
        port map (
      I0 => \spo[18]_INST_0_i_2_n_0\,
      I1 => a(7),
      I2 => \spo[18]_INST_0_i_3_n_0\,
      I3 => a(6),
      I4 => \spo[18]_INST_0_i_4_n_0\,
      I5 => a(8),
      O => \spo[18]_INST_0_i_1_n_0\
    );
\spo[18]_INST_0_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[18]_INST_0_i_5_n_0\,
      I1 => \spo[18]_INST_0_i_6_n_0\,
      O => \spo[18]_INST_0_i_2_n_0\,
      S => a(6)
    );
\spo[18]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BB989119EEAEAAA8"
    )
        port map (
      I0 => a(4),
      I1 => a(3),
      I2 => a(0),
      I3 => a(1),
      I4 => a(2),
      I5 => a(5),
      O => \spo[18]_INST_0_i_3_n_0\
    );
\spo[18]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000054775576"
    )
        port map (
      I0 => a(4),
      I1 => a(3),
      I2 => a(0),
      I3 => a(2),
      I4 => a(1),
      I5 => a(5),
      O => \spo[18]_INST_0_i_4_n_0\
    );
\spo[18]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0002880020811555"
    )
        port map (
      I0 => a(4),
      I1 => a(0),
      I2 => a(1),
      I3 => a(2),
      I4 => a(5),
      I5 => a(3),
      O => \spo[18]_INST_0_i_5_n_0\
    );
\spo[18]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5444444422222A88"
    )
        port map (
      I0 => a(4),
      I1 => a(2),
      I2 => a(5),
      I3 => a(0),
      I4 => a(1),
      I5 => a(3),
      O => \spo[18]_INST_0_i_6_n_0\
    );
\spo[19]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000010"
    )
        port map (
      I0 => a(12),
      I1 => a(10),
      I2 => \spo[19]_INST_0_i_1_n_0\,
      I3 => a(9),
      I4 => a(11),
      I5 => a(13),
      O => spo(18)
    );
\spo[19]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000EEE222E2"
    )
        port map (
      I0 => \spo[19]_INST_0_i_2_n_0\,
      I1 => a(7),
      I2 => \spo[19]_INST_0_i_3_n_0\,
      I3 => a(6),
      I4 => \spo[19]_INST_0_i_4_n_0\,
      I5 => a(8),
      O => \spo[19]_INST_0_i_1_n_0\
    );
\spo[19]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0808080800000300"
    )
        port map (
      I0 => \spo[19]_INST_0_i_5_n_0\,
      I1 => a(6),
      I2 => a(3),
      I3 => \spo[19]_INST_0_i_6_n_0\,
      I4 => a(5),
      I5 => a(4),
      O => \spo[19]_INST_0_i_2_n_0\
    );
\spo[19]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000800080008400"
    )
        port map (
      I0 => a(4),
      I1 => a(5),
      I2 => a(2),
      I3 => a(1),
      I4 => a(0),
      I5 => a(3),
      O => \spo[19]_INST_0_i_3_n_0\
    );
\spo[19]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000004240100"
    )
        port map (
      I0 => a(4),
      I1 => a(3),
      I2 => a(0),
      I3 => a(2),
      I4 => a(1),
      I5 => a(5),
      O => \spo[19]_INST_0_i_4_n_0\
    );
\spo[19]_INST_0_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0810"
    )
        port map (
      I0 => a(5),
      I1 => a(1),
      I2 => a(2),
      I3 => a(0),
      O => \spo[19]_INST_0_i_5_n_0\
    );
\spo[19]_INST_0_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => a(2),
      I1 => a(1),
      I2 => a(0),
      O => \spo[19]_INST_0_i_6_n_0\
    );
\spo[20]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000010"
    )
        port map (
      I0 => a(12),
      I1 => a(10),
      I2 => \spo[20]_INST_0_i_1_n_0\,
      I3 => a(9),
      I4 => a(11),
      I5 => a(13),
      O => spo(19)
    );
\spo[20]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000EEE222E2"
    )
        port map (
      I0 => \spo[20]_INST_0_i_2_n_0\,
      I1 => a(7),
      I2 => \spo[20]_INST_0_i_3_n_0\,
      I3 => a(6),
      I4 => \spo[20]_INST_0_i_4_n_0\,
      I5 => a(8),
      O => \spo[20]_INST_0_i_1_n_0\
    );
\spo[20]_INST_0_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[20]_INST_0_i_5_n_0\,
      I1 => \spo[20]_INST_0_i_6_n_0\,
      O => \spo[20]_INST_0_i_2_n_0\,
      S => a(6)
    );
\spo[20]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"050A10AA8D2890B5"
    )
        port map (
      I0 => a(4),
      I1 => a(2),
      I2 => a(3),
      I3 => a(5),
      I4 => a(1),
      I5 => a(0),
      O => \spo[20]_INST_0_i_3_n_0\
    );
\spo[20]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000004250104"
    )
        port map (
      I0 => a(4),
      I1 => a(3),
      I2 => a(0),
      I3 => a(2),
      I4 => a(1),
      I5 => a(5),
      O => \spo[20]_INST_0_i_4_n_0\
    );
\spo[20]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4E650F660D019621"
    )
        port map (
      I0 => a(4),
      I1 => a(3),
      I2 => a(5),
      I3 => a(0),
      I4 => a(2),
      I5 => a(1),
      O => \spo[20]_INST_0_i_5_n_0\
    );
\spo[20]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4250454852454808"
    )
        port map (
      I0 => a(4),
      I1 => a(2),
      I2 => a(3),
      I3 => a(5),
      I4 => a(1),
      I5 => a(0),
      O => \spo[20]_INST_0_i_6_n_0\
    );
\spo[21]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000010"
    )
        port map (
      I0 => a(12),
      I1 => a(10),
      I2 => \spo[21]_INST_0_i_1_n_0\,
      I3 => a(9),
      I4 => a(11),
      I5 => a(13),
      O => spo(20)
    );
\spo[21]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000EEE222E2"
    )
        port map (
      I0 => \spo[21]_INST_0_i_2_n_0\,
      I1 => a(7),
      I2 => \spo[21]_INST_0_i_3_n_0\,
      I3 => a(6),
      I4 => \spo[21]_INST_0_i_4_n_0\,
      I5 => a(8),
      O => \spo[21]_INST_0_i_1_n_0\
    );
\spo[21]_INST_0_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[21]_INST_0_i_5_n_0\,
      I1 => \spo[21]_INST_0_i_6_n_0\,
      O => \spo[21]_INST_0_i_2_n_0\,
      S => a(6)
    );
\spo[21]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"14009802210A100F"
    )
        port map (
      I0 => a(4),
      I1 => a(3),
      I2 => a(5),
      I3 => a(1),
      I4 => a(2),
      I5 => a(0),
      O => \spo[21]_INST_0_i_3_n_0\
    );
\spo[21]_INST_0_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00005004"
    )
        port map (
      I0 => a(5),
      I1 => a(0),
      I2 => a(2),
      I3 => a(1),
      I4 => a(4),
      O => \spo[21]_INST_0_i_4_n_0\
    );
\spo[21]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"420D280D0140B0B1"
    )
        port map (
      I0 => a(4),
      I1 => a(3),
      I2 => a(5),
      I3 => a(0),
      I4 => a(1),
      I5 => a(2),
      O => \spo[21]_INST_0_i_5_n_0\
    );
\spo[21]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5006041600414066"
    )
        port map (
      I0 => a(4),
      I1 => a(3),
      I2 => a(5),
      I3 => a(2),
      I4 => a(1),
      I5 => a(0),
      O => \spo[21]_INST_0_i_6_n_0\
    );
\spo[22]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000010"
    )
        port map (
      I0 => a(12),
      I1 => a(10),
      I2 => \spo[22]_INST_0_i_1_n_0\,
      I3 => a(9),
      I4 => a(11),
      I5 => a(13),
      O => spo(21)
    );
\spo[22]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000EEE222E2"
    )
        port map (
      I0 => \spo[22]_INST_0_i_2_n_0\,
      I1 => a(7),
      I2 => \spo[22]_INST_0_i_3_n_0\,
      I3 => a(6),
      I4 => \spo[22]_INST_0_i_4_n_0\,
      I5 => a(8),
      O => \spo[22]_INST_0_i_1_n_0\
    );
\spo[22]_INST_0_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[22]_INST_0_i_5_n_0\,
      I1 => \spo[22]_INST_0_i_6_n_0\,
      O => \spo[22]_INST_0_i_2_n_0\,
      S => a(6)
    );
\spo[22]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D541F9711F3D0BDC"
    )
        port map (
      I0 => a(4),
      I1 => a(3),
      I2 => a(5),
      I3 => a(1),
      I4 => a(2),
      I5 => a(0),
      O => \spo[22]_INST_0_i_3_n_0\
    );
\spo[22]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000054547271"
    )
        port map (
      I0 => a(4),
      I1 => a(3),
      I2 => a(0),
      I3 => a(1),
      I4 => a(2),
      I5 => a(5),
      O => \spo[22]_INST_0_i_4_n_0\
    );
\spo[22]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DC63FF2AFD696E7B"
    )
        port map (
      I0 => a(4),
      I1 => a(3),
      I2 => a(5),
      I3 => a(0),
      I4 => a(2),
      I5 => a(1),
      O => \spo[22]_INST_0_i_5_n_0\
    );
\spo[22]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F1B797879B79787D"
    )
        port map (
      I0 => a(4),
      I1 => a(3),
      I2 => a(5),
      I3 => a(1),
      I4 => a(2),
      I5 => a(0),
      O => \spo[22]_INST_0_i_6_n_0\
    );
\spo[23]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000010"
    )
        port map (
      I0 => a(12),
      I1 => a(10),
      I2 => \spo[23]_INST_0_i_1_n_0\,
      I3 => a(9),
      I4 => a(11),
      I5 => a(13),
      O => spo(22)
    );
\spo[23]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000EEE222E2"
    )
        port map (
      I0 => \spo[23]_INST_0_i_2_n_0\,
      I1 => a(7),
      I2 => \spo[23]_INST_0_i_3_n_0\,
      I3 => a(6),
      I4 => \spo[23]_INST_0_i_4_n_0\,
      I5 => a(8),
      O => \spo[23]_INST_0_i_1_n_0\
    );
\spo[23]_INST_0_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[23]_INST_0_i_5_n_0\,
      I1 => \spo[23]_INST_0_i_6_n_0\,
      O => \spo[23]_INST_0_i_2_n_0\,
      S => a(6)
    );
\spo[23]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0821958115DD91FD"
    )
        port map (
      I0 => a(4),
      I1 => a(3),
      I2 => a(1),
      I3 => a(0),
      I4 => a(2),
      I5 => a(5),
      O => \spo[23]_INST_0_i_3_n_0\
    );
\spo[23]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000050135420"
    )
        port map (
      I0 => a(4),
      I1 => a(3),
      I2 => a(1),
      I3 => a(2),
      I4 => a(0),
      I5 => a(5),
      O => \spo[23]_INST_0_i_4_n_0\
    );
\spo[23]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6E6A4C416F49DEA9"
    )
        port map (
      I0 => a(4),
      I1 => a(3),
      I2 => a(5),
      I3 => a(0),
      I4 => a(1),
      I5 => a(2),
      O => \spo[23]_INST_0_i_5_n_0\
    );
\spo[23]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D915371393517136"
    )
        port map (
      I0 => a(4),
      I1 => a(3),
      I2 => a(0),
      I3 => a(2),
      I4 => a(1),
      I5 => a(5),
      O => \spo[23]_INST_0_i_6_n_0\
    );
\spo[24]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000010"
    )
        port map (
      I0 => a(12),
      I1 => a(10),
      I2 => \spo[24]_INST_0_i_1_n_0\,
      I3 => a(9),
      I4 => a(11),
      I5 => a(13),
      O => spo(23)
    );
\spo[24]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000EEE222E2"
    )
        port map (
      I0 => \spo[24]_INST_0_i_2_n_0\,
      I1 => a(7),
      I2 => \spo[24]_INST_0_i_3_n_0\,
      I3 => a(6),
      I4 => \spo[24]_INST_0_i_4_n_0\,
      I5 => a(8),
      O => \spo[24]_INST_0_i_1_n_0\
    );
\spo[24]_INST_0_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[24]_INST_0_i_5_n_0\,
      I1 => \spo[24]_INST_0_i_6_n_0\,
      O => \spo[24]_INST_0_i_2_n_0\,
      S => a(6)
    );
\spo[24]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0191151190012408"
    )
        port map (
      I0 => a(4),
      I1 => a(3),
      I2 => a(2),
      I3 => a(1),
      I4 => a(5),
      I5 => a(0),
      O => \spo[24]_INST_0_i_3_n_0\
    );
\spo[24]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000360160"
    )
        port map (
      I0 => a(4),
      I1 => a(3),
      I2 => a(1),
      I3 => a(2),
      I4 => a(0),
      I5 => a(5),
      O => \spo[24]_INST_0_i_4_n_0\
    );
\spo[24]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0402440C01211189"
    )
        port map (
      I0 => a(4),
      I1 => a(3),
      I2 => a(1),
      I3 => a(0),
      I4 => a(2),
      I5 => a(5),
      O => \spo[24]_INST_0_i_5_n_0\
    );
\spo[24]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8903056190165011"
    )
        port map (
      I0 => a(4),
      I1 => a(3),
      I2 => a(5),
      I3 => a(2),
      I4 => a(1),
      I5 => a(0),
      O => \spo[24]_INST_0_i_6_n_0\
    );
\spo[25]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000010"
    )
        port map (
      I0 => a(12),
      I1 => a(10),
      I2 => \spo[25]_INST_0_i_1_n_0\,
      I3 => a(9),
      I4 => a(11),
      I5 => a(13),
      O => spo(24)
    );
\spo[25]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000EEE222E2"
    )
        port map (
      I0 => \spo[25]_INST_0_i_2_n_0\,
      I1 => a(7),
      I2 => \spo[25]_INST_0_i_3_n_0\,
      I3 => a(6),
      I4 => \spo[25]_INST_0_i_4_n_0\,
      I5 => a(8),
      O => \spo[25]_INST_0_i_1_n_0\
    );
\spo[25]_INST_0_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[25]_INST_0_i_5_n_0\,
      I1 => \spo[25]_INST_0_i_6_n_0\,
      O => \spo[25]_INST_0_i_2_n_0\,
      S => a(6)
    );
\spo[25]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"01141111A8110000"
    )
        port map (
      I0 => a(4),
      I1 => a(3),
      I2 => a(2),
      I3 => a(1),
      I4 => a(5),
      I5 => a(0),
      O => \spo[25]_INST_0_i_3_n_0\
    );
\spo[25]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000002101205"
    )
        port map (
      I0 => a(4),
      I1 => a(2),
      I2 => a(3),
      I3 => a(0),
      I4 => a(1),
      I5 => a(5),
      O => \spo[25]_INST_0_i_4_n_0\
    );
\spo[25]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0400440C04217789"
    )
        port map (
      I0 => a(4),
      I1 => a(3),
      I2 => a(1),
      I3 => a(0),
      I4 => a(2),
      I5 => a(5),
      O => \spo[25]_INST_0_i_5_n_0\
    );
\spo[25]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9122047704571408"
    )
        port map (
      I0 => a(4),
      I1 => a(2),
      I2 => a(1),
      I3 => a(3),
      I4 => a(5),
      I5 => a(0),
      O => \spo[25]_INST_0_i_6_n_0\
    );
\spo[26]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000010"
    )
        port map (
      I0 => a(12),
      I1 => a(10),
      I2 => \spo[26]_INST_0_i_1_n_0\,
      I3 => a(9),
      I4 => a(11),
      I5 => a(13),
      O => spo(25)
    );
\spo[26]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000EEE222E2"
    )
        port map (
      I0 => \spo[26]_INST_0_i_2_n_0\,
      I1 => a(7),
      I2 => \spo[26]_INST_0_i_3_n_0\,
      I3 => a(6),
      I4 => \spo[26]_INST_0_i_4_n_0\,
      I5 => a(8),
      O => \spo[26]_INST_0_i_1_n_0\
    );
\spo[26]_INST_0_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[26]_INST_0_i_5_n_0\,
      I1 => \spo[26]_INST_0_i_6_n_0\,
      O => \spo[26]_INST_0_i_2_n_0\,
      S => a(6)
    );
\spo[26]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2000200024544414"
    )
        port map (
      I0 => a(4),
      I1 => a(0),
      I2 => a(5),
      I3 => a(1),
      I4 => a(2),
      I5 => a(3),
      O => \spo[26]_INST_0_i_3_n_0\
    );
\spo[26]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000101205"
    )
        port map (
      I0 => a(4),
      I1 => a(2),
      I2 => a(3),
      I3 => a(0),
      I4 => a(1),
      I5 => a(5),
      O => \spo[26]_INST_0_i_4_n_0\
    );
\spo[26]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0400440844211189"
    )
        port map (
      I0 => a(4),
      I1 => a(3),
      I2 => a(1),
      I3 => a(0),
      I4 => a(2),
      I5 => a(5),
      O => \spo[26]_INST_0_i_5_n_0\
    );
\spo[26]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8923056390145231"
    )
        port map (
      I0 => a(4),
      I1 => a(3),
      I2 => a(5),
      I3 => a(2),
      I4 => a(1),
      I5 => a(0),
      O => \spo[26]_INST_0_i_6_n_0\
    );
\spo[27]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000010"
    )
        port map (
      I0 => a(12),
      I1 => a(10),
      I2 => \spo[27]_INST_0_i_1_n_0\,
      I3 => a(9),
      I4 => a(11),
      I5 => a(13),
      O => spo(26)
    );
\spo[27]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000EEE222E2"
    )
        port map (
      I0 => \spo[27]_INST_0_i_2_n_0\,
      I1 => a(7),
      I2 => \spo[27]_INST_0_i_3_n_0\,
      I3 => a(6),
      I4 => \spo[31]_INST_0_i_4_n_0\,
      I5 => a(8),
      O => \spo[27]_INST_0_i_1_n_0\
    );
\spo[27]_INST_0_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[27]_INST_0_i_4_n_0\,
      I1 => \spo[27]_INST_0_i_5_n_0\,
      O => \spo[27]_INST_0_i_2_n_0\,
      S => a(6)
    );
\spo[27]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0104111188100000"
    )
        port map (
      I0 => a(4),
      I1 => a(3),
      I2 => a(2),
      I3 => a(1),
      I4 => a(5),
      I5 => a(0),
      O => \spo[27]_INST_0_i_3_n_0\
    );
\spo[27]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0400440842213089"
    )
        port map (
      I0 => a(4),
      I1 => a(3),
      I2 => a(1),
      I3 => a(0),
      I4 => a(2),
      I5 => a(5),
      O => \spo[27]_INST_0_i_4_n_0\
    );
\spo[27]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8123056390145231"
    )
        port map (
      I0 => a(4),
      I1 => a(3),
      I2 => a(5),
      I3 => a(2),
      I4 => a(1),
      I5 => a(0),
      O => \spo[27]_INST_0_i_5_n_0\
    );
\spo[28]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000010"
    )
        port map (
      I0 => a(12),
      I1 => a(10),
      I2 => \spo[28]_INST_0_i_1_n_0\,
      I3 => a(9),
      I4 => a(11),
      I5 => a(13),
      O => spo(27)
    );
\spo[28]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000EEE222E2"
    )
        port map (
      I0 => \spo[28]_INST_0_i_2_n_0\,
      I1 => a(7),
      I2 => \spo[28]_INST_0_i_3_n_0\,
      I3 => a(6),
      I4 => \spo[28]_INST_0_i_4_n_0\,
      I5 => a(8),
      O => \spo[28]_INST_0_i_1_n_0\
    );
\spo[28]_INST_0_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[28]_INST_0_i_5_n_0\,
      I1 => \spo[28]_INST_0_i_6_n_0\,
      O => \spo[28]_INST_0_i_2_n_0\,
      S => a(6)
    );
\spo[28]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0124111188100000"
    )
        port map (
      I0 => a(4),
      I1 => a(3),
      I2 => a(2),
      I3 => a(1),
      I4 => a(5),
      I5 => a(0),
      O => \spo[28]_INST_0_i_3_n_0\
    );
\spo[28]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000001040410"
    )
        port map (
      I0 => a(5),
      I1 => a(0),
      I2 => a(2),
      I3 => a(1),
      I4 => a(3),
      I5 => a(4),
      O => \spo[28]_INST_0_i_4_n_0\
    );
\spo[28]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0040404802002829"
    )
        port map (
      I0 => a(4),
      I1 => a(3),
      I2 => a(0),
      I3 => a(1),
      I4 => a(2),
      I5 => a(5),
      O => \spo[28]_INST_0_i_5_n_0\
    );
\spo[28]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8923052310105231"
    )
        port map (
      I0 => a(4),
      I1 => a(3),
      I2 => a(5),
      I3 => a(2),
      I4 => a(1),
      I5 => a(0),
      O => \spo[28]_INST_0_i_6_n_0\
    );
\spo[29]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000010"
    )
        port map (
      I0 => a(12),
      I1 => a(10),
      I2 => \spo[29]_INST_0_i_1_n_0\,
      I3 => a(9),
      I4 => a(11),
      I5 => a(13),
      O => spo(28)
    );
\spo[29]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFE200E2"
    )
        port map (
      I0 => \spo[29]_INST_0_i_2_n_0\,
      I1 => a(6),
      I2 => \spo[30]_INST_0_i_3_n_0\,
      I3 => a(7),
      I4 => \spo[29]_INST_0_i_3_n_0\,
      I5 => a(8),
      O => \spo[29]_INST_0_i_1_n_0\
    );
\spo[29]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0040404C02200809"
    )
        port map (
      I0 => a(4),
      I1 => a(3),
      I2 => a(0),
      I3 => a(1),
      I4 => a(2),
      I5 => a(5),
      O => \spo[29]_INST_0_i_2_n_0\
    );
\spo[29]_INST_0_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F20"
    )
        port map (
      I0 => \spo[29]_INST_0_i_4_n_0\,
      I1 => a(4),
      I2 => a(6),
      I3 => \spo[27]_INST_0_i_3_n_0\,
      O => \spo[29]_INST_0_i_3_n_0\
    );
\spo[29]_INST_0_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000618"
    )
        port map (
      I0 => a(3),
      I1 => a(1),
      I2 => a(2),
      I3 => a(0),
      I4 => a(5),
      O => \spo[29]_INST_0_i_4_n_0\
    );
\spo[2]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \spo[2]_INST_0_i_1_n_0\,
      I1 => a(13),
      O => spo(1)
    );
\spo[2]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000010"
    )
        port map (
      I0 => a(11),
      I1 => a(9),
      I2 => \spo[2]_INST_0_i_2_n_0\,
      I3 => a(8),
      I4 => a(10),
      I5 => a(12),
      O => \spo[2]_INST_0_i_1_n_0\
    );
\spo[2]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[16]_INST_0_i_4_n_0\,
      I1 => \spo[2]_INST_0_i_3_n_0\,
      I2 => a(7),
      I3 => \spo[3]_INST_0_i_3_n_0\,
      I4 => a(6),
      I5 => \spo[2]_INST_0_i_4_n_0\,
      O => \spo[2]_INST_0_i_2_n_0\
    );
\spo[2]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000800000000482"
    )
        port map (
      I0 => a(4),
      I1 => a(5),
      I2 => a(2),
      I3 => a(1),
      I4 => a(0),
      I5 => a(3),
      O => \spo[2]_INST_0_i_3_n_0\
    );
\spo[2]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2002000400200001"
    )
        port map (
      I0 => a(4),
      I1 => a(3),
      I2 => a(0),
      I3 => a(1),
      I4 => a(2),
      I5 => a(5),
      O => \spo[2]_INST_0_i_4_n_0\
    );
\spo[30]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000010"
    )
        port map (
      I0 => a(12),
      I1 => a(10),
      I2 => \spo[30]_INST_0_i_1_n_0\,
      I3 => a(9),
      I4 => a(11),
      I5 => a(13),
      O => spo(29)
    );
\spo[30]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFE200E2"
    )
        port map (
      I0 => \spo[30]_INST_0_i_2_n_0\,
      I1 => a(6),
      I2 => \spo[30]_INST_0_i_3_n_0\,
      I3 => a(7),
      I4 => \spo[30]_INST_0_i_4_n_0\,
      I5 => a(8),
      O => \spo[30]_INST_0_i_1_n_0\
    );
\spo[30]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0060424802000809"
    )
        port map (
      I0 => a(4),
      I1 => a(3),
      I2 => a(0),
      I3 => a(1),
      I4 => a(2),
      I5 => a(5),
      O => \spo[30]_INST_0_i_2_n_0\
    );
\spo[30]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"800A105F10570020"
    )
        port map (
      I0 => a(4),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(5),
      I5 => a(0),
      O => \spo[30]_INST_0_i_3_n_0\
    );
\spo[30]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B888BBBBB8888888"
    )
        port map (
      I0 => \spo[31]_INST_0_i_4_n_0\,
      I1 => a(6),
      I2 => \spo[30]_INST_0_i_5_n_0\,
      I3 => a(3),
      I4 => a(4),
      I5 => \spo[30]_INST_0_i_6_n_0\,
      O => \spo[30]_INST_0_i_4_n_0\
    );
\spo[30]_INST_0_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4800"
    )
        port map (
      I0 => a(1),
      I1 => a(2),
      I2 => a(0),
      I3 => a(5),
      O => \spo[30]_INST_0_i_5_n_0\
    );
\spo[30]_INST_0_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"12550400"
    )
        port map (
      I0 => a(3),
      I1 => a(2),
      I2 => a(1),
      I3 => a(5),
      I4 => a(0),
      O => \spo[30]_INST_0_i_6_n_0\
    );
\spo[31]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000010"
    )
        port map (
      I0 => a(12),
      I1 => a(10),
      I2 => \spo[31]_INST_0_i_1_n_0\,
      I3 => a(9),
      I4 => a(11),
      I5 => a(13),
      O => spo(30)
    );
\spo[31]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000EEE222E2"
    )
        port map (
      I0 => \spo[31]_INST_0_i_2_n_0\,
      I1 => a(7),
      I2 => \spo[31]_INST_0_i_3_n_0\,
      I3 => a(6),
      I4 => \spo[31]_INST_0_i_4_n_0\,
      I5 => a(8),
      O => \spo[31]_INST_0_i_1_n_0\
    );
\spo[31]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \spo[30]_INST_0_i_3_n_0\,
      I1 => a(6),
      I2 => \spo[31]_INST_0_i_5_n_0\,
      I3 => a(4),
      I4 => \spo[31]_INST_0_i_6_n_0\,
      O => \spo[31]_INST_0_i_2_n_0\
    );
\spo[31]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0184111180100002"
    )
        port map (
      I0 => a(4),
      I1 => a(3),
      I2 => a(2),
      I3 => a(1),
      I4 => a(5),
      I5 => a(0),
      O => \spo[31]_INST_0_i_3_n_0\
    );
\spo[31]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000340140"
    )
        port map (
      I0 => a(4),
      I1 => a(3),
      I2 => a(1),
      I3 => a(2),
      I4 => a(0),
      I5 => a(5),
      O => \spo[31]_INST_0_i_4_n_0\
    );
\spo[31]_INST_0_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00021202"
    )
        port map (
      I0 => a(3),
      I1 => a(0),
      I2 => a(2),
      I3 => a(1),
      I4 => a(5),
      O => \spo[31]_INST_0_i_5_n_0\
    );
\spo[31]_INST_0_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08880001"
    )
        port map (
      I0 => a(3),
      I1 => a(0),
      I2 => a(1),
      I3 => a(2),
      I4 => a(5),
      O => \spo[31]_INST_0_i_6_n_0\
    );
\spo[3]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000010"
    )
        port map (
      I0 => a(12),
      I1 => a(10),
      I2 => \spo[3]_INST_0_i_1_n_0\,
      I3 => a(9),
      I4 => a(11),
      I5 => a(13),
      O => spo(2)
    );
\spo[3]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFE200E2"
    )
        port map (
      I0 => \spo[3]_INST_0_i_2_n_0\,
      I1 => a(6),
      I2 => \spo[3]_INST_0_i_3_n_0\,
      I3 => a(7),
      I4 => \spo[3]_INST_0_i_4_n_0\,
      I5 => a(8),
      O => \spo[3]_INST_0_i_1_n_0\
    );
\spo[3]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000480200080"
    )
        port map (
      I0 => a(4),
      I1 => a(5),
      I2 => a(2),
      I3 => a(1),
      I4 => a(0),
      I5 => a(3),
      O => \spo[3]_INST_0_i_2_n_0\
    );
\spo[3]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2000800008000021"
    )
        port map (
      I0 => a(4),
      I1 => a(5),
      I2 => a(2),
      I3 => a(1),
      I4 => a(0),
      I5 => a(3),
      O => \spo[3]_INST_0_i_3_n_0\
    );
\spo[3]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBB888B888888888"
    )
        port map (
      I0 => \spo[16]_INST_0_i_4_n_0\,
      I1 => a(6),
      I2 => \spo[3]_INST_0_i_5_n_0\,
      I3 => a(3),
      I4 => \spo[3]_INST_0_i_6_n_0\,
      I5 => a(4),
      O => \spo[3]_INST_0_i_4_n_0\
    );
\spo[3]_INST_0_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0400"
    )
        port map (
      I0 => a(0),
      I1 => a(2),
      I2 => a(1),
      I3 => a(5),
      O => \spo[3]_INST_0_i_5_n_0\
    );
\spo[3]_INST_0_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => a(0),
      I1 => a(2),
      I2 => a(1),
      I3 => a(5),
      O => \spo[3]_INST_0_i_6_n_0\
    );
\spo[4]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000010"
    )
        port map (
      I0 => a(12),
      I1 => a(10),
      I2 => \spo[4]_INST_0_i_1_n_0\,
      I3 => a(9),
      I4 => a(11),
      I5 => a(13),
      O => spo(3)
    );
\spo[4]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000EEE222E2"
    )
        port map (
      I0 => \spo[4]_INST_0_i_2_n_0\,
      I1 => a(7),
      I2 => \spo[4]_INST_0_i_3_n_0\,
      I3 => a(6),
      I4 => \spo[10]_INST_0_i_4_n_0\,
      I5 => a(8),
      O => \spo[4]_INST_0_i_1_n_0\
    );
\spo[4]_INST_0_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[4]_INST_0_i_4_n_0\,
      I1 => \spo[4]_INST_0_i_5_n_0\,
      O => \spo[4]_INST_0_i_2_n_0\,
      S => a(6)
    );
\spo[4]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DFEAFFFF25B0FAEA"
    )
        port map (
      I0 => a(4),
      I1 => a(2),
      I2 => a(3),
      I3 => a(1),
      I4 => a(5),
      I5 => a(0),
      O => \spo[4]_INST_0_i_3_n_0\
    );
\spo[4]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D1F9D1D00F0F2FBF"
    )
        port map (
      I0 => a(4),
      I1 => a(3),
      I2 => a(5),
      I3 => a(1),
      I4 => a(2),
      I5 => a(0),
      O => \spo[4]_INST_0_i_4_n_0\
    );
\spo[4]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EF8A557D557DFAA2"
    )
        port map (
      I0 => a(4),
      I1 => a(2),
      I2 => a(1),
      I3 => a(3),
      I4 => a(5),
      I5 => a(0),
      O => \spo[4]_INST_0_i_5_n_0\
    );
\spo[5]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000010"
    )
        port map (
      I0 => a(12),
      I1 => a(10),
      I2 => \spo[5]_INST_0_i_1_n_0\,
      I3 => a(9),
      I4 => a(11),
      I5 => a(13),
      O => spo(4)
    );
\spo[5]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000EEE222E2"
    )
        port map (
      I0 => \spo[5]_INST_0_i_2_n_0\,
      I1 => a(7),
      I2 => \spo[5]_INST_0_i_3_n_0\,
      I3 => a(6),
      I4 => \spo[5]_INST_0_i_4_n_0\,
      I5 => a(8),
      O => \spo[5]_INST_0_i_1_n_0\
    );
\spo[5]_INST_0_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[5]_INST_0_i_5_n_0\,
      I1 => \spo[5]_INST_0_i_6_n_0\,
      O => \spo[5]_INST_0_i_2_n_0\,
      S => a(6)
    );
\spo[5]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"208DC084A311DDB7"
    )
        port map (
      I0 => a(4),
      I1 => a(3),
      I2 => a(1),
      I3 => a(2),
      I4 => a(5),
      I5 => a(0),
      O => \spo[5]_INST_0_i_3_n_0\
    );
\spo[5]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000050230562"
    )
        port map (
      I0 => a(4),
      I1 => a(3),
      I2 => a(1),
      I3 => a(2),
      I4 => a(0),
      I5 => a(5),
      O => \spo[5]_INST_0_i_4_n_0\
    );
\spo[5]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2F60266A2E60BE41"
    )
        port map (
      I0 => a(4),
      I1 => a(3),
      I2 => a(5),
      I3 => a(0),
      I4 => a(1),
      I5 => a(2),
      O => \spo[5]_INST_0_i_5_n_0\
    );
\spo[5]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"107D810A810A05DD"
    )
        port map (
      I0 => a(4),
      I1 => a(2),
      I2 => a(1),
      I3 => a(3),
      I4 => a(5),
      I5 => a(0),
      O => \spo[5]_INST_0_i_6_n_0\
    );
\spo[6]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000010"
    )
        port map (
      I0 => a(12),
      I1 => a(10),
      I2 => \spo[6]_INST_0_i_1_n_0\,
      I3 => a(9),
      I4 => a(11),
      I5 => a(13),
      O => spo(5)
    );
\spo[6]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000EEE222E2"
    )
        port map (
      I0 => \spo[6]_INST_0_i_2_n_0\,
      I1 => a(7),
      I2 => \spo[6]_INST_0_i_3_n_0\,
      I3 => a(6),
      I4 => \spo[6]_INST_0_i_4_n_0\,
      I5 => a(8),
      O => \spo[6]_INST_0_i_1_n_0\
    );
\spo[6]_INST_0_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[6]_INST_0_i_5_n_0\,
      I1 => \spo[6]_INST_0_i_6_n_0\,
      O => \spo[6]_INST_0_i_2_n_0\,
      S => a(6)
    );
\spo[6]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0A80034000000000"
    )
        port map (
      I0 => a(4),
      I1 => a(3),
      I2 => a(0),
      I3 => a(2),
      I4 => a(1),
      I5 => a(5),
      O => \spo[6]_INST_0_i_3_n_0\
    );
\spo[6]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000010210140"
    )
        port map (
      I0 => a(4),
      I1 => a(3),
      I2 => a(1),
      I3 => a(2),
      I4 => a(0),
      I5 => a(5),
      O => \spo[6]_INST_0_i_4_n_0\
    );
\spo[6]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0C040414A0288888"
    )
        port map (
      I0 => a(4),
      I1 => a(0),
      I2 => a(5),
      I3 => a(1),
      I4 => a(2),
      I5 => a(3),
      O => \spo[6]_INST_0_i_5_n_0\
    );
\spo[6]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0800600280060021"
    )
        port map (
      I0 => a(4),
      I1 => a(3),
      I2 => a(0),
      I3 => a(1),
      I4 => a(2),
      I5 => a(5),
      O => \spo[6]_INST_0_i_6_n_0\
    );
\spo[7]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000010"
    )
        port map (
      I0 => a(12),
      I1 => a(10),
      I2 => \spo[7]_INST_0_i_1_n_0\,
      I3 => a(9),
      I4 => a(11),
      I5 => a(13),
      O => spo(6)
    );
\spo[7]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000EEE222E2"
    )
        port map (
      I0 => \spo[7]_INST_0_i_2_n_0\,
      I1 => a(7),
      I2 => \spo[7]_INST_0_i_3_n_0\,
      I3 => a(6),
      I4 => \spo[7]_INST_0_i_4_n_0\,
      I5 => a(8),
      O => \spo[7]_INST_0_i_1_n_0\
    );
\spo[7]_INST_0_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[7]_INST_0_i_5_n_0\,
      I1 => \spo[7]_INST_0_i_6_n_0\,
      O => \spo[7]_INST_0_i_2_n_0\,
      S => a(6)
    );
\spo[7]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"920C49644A0CC668"
    )
        port map (
      I0 => a(4),
      I1 => a(3),
      I2 => a(1),
      I3 => a(2),
      I4 => a(0),
      I5 => a(5),
      O => \spo[7]_INST_0_i_3_n_0\
    );
\spo[7]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000045410410"
    )
        port map (
      I0 => a(5),
      I1 => a(0),
      I2 => a(1),
      I3 => a(2),
      I4 => a(3),
      I5 => a(4),
      O => \spo[7]_INST_0_i_4_n_0\
    );
\spo[7]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"009D01B6200C00B7"
    )
        port map (
      I0 => a(4),
      I1 => a(3),
      I2 => a(5),
      I3 => a(0),
      I4 => a(2),
      I5 => a(1),
      O => \spo[7]_INST_0_i_5_n_0\
    );
\spo[7]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"005F5F0000303000"
    )
        port map (
      I0 => a(1),
      I1 => a(2),
      I2 => a(4),
      I3 => a(0),
      I4 => a(5),
      I5 => a(3),
      O => \spo[7]_INST_0_i_6_n_0\
    );
\spo[8]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000010"
    )
        port map (
      I0 => a(12),
      I1 => a(10),
      I2 => \spo[8]_INST_0_i_1_n_0\,
      I3 => a(9),
      I4 => a(11),
      I5 => a(13),
      O => spo(7)
    );
\spo[8]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000EEE222E2"
    )
        port map (
      I0 => \spo[8]_INST_0_i_2_n_0\,
      I1 => a(7),
      I2 => \spo[8]_INST_0_i_3_n_0\,
      I3 => a(6),
      I4 => \spo[8]_INST_0_i_4_n_0\,
      I5 => a(8),
      O => \spo[8]_INST_0_i_1_n_0\
    );
\spo[8]_INST_0_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[8]_INST_0_i_5_n_0\,
      I1 => \spo[8]_INST_0_i_6_n_0\,
      O => \spo[8]_INST_0_i_2_n_0\,
      S => a(6)
    );
\spo[8]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5662719D1E40E648"
    )
        port map (
      I0 => a(4),
      I1 => a(3),
      I2 => a(2),
      I3 => a(1),
      I4 => a(5),
      I5 => a(0),
      O => \spo[8]_INST_0_i_3_n_0\
    );
\spo[8]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000400041"
    )
        port map (
      I0 => a(5),
      I1 => a(1),
      I2 => a(2),
      I3 => a(0),
      I4 => a(3),
      I5 => a(4),
      O => \spo[8]_INST_0_i_4_n_0\
    );
\spo[8]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9093D029F1094098"
    )
        port map (
      I0 => a(4),
      I1 => a(3),
      I2 => a(5),
      I3 => a(0),
      I4 => a(2),
      I5 => a(1),
      O => \spo[8]_INST_0_i_5_n_0\
    );
\spo[8]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EA800DD50DD5AA02"
    )
        port map (
      I0 => a(4),
      I1 => a(2),
      I2 => a(1),
      I3 => a(3),
      I4 => a(5),
      I5 => a(0),
      O => \spo[8]_INST_0_i_6_n_0\
    );
\spo[9]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000010"
    )
        port map (
      I0 => a(12),
      I1 => a(10),
      I2 => \spo[9]_INST_0_i_1_n_0\,
      I3 => a(9),
      I4 => a(11),
      I5 => a(13),
      O => spo(8)
    );
\spo[9]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000EEE222E2"
    )
        port map (
      I0 => \spo[9]_INST_0_i_2_n_0\,
      I1 => a(7),
      I2 => \spo[9]_INST_0_i_3_n_0\,
      I3 => a(6),
      I4 => \spo[10]_INST_0_i_4_n_0\,
      I5 => a(8),
      O => \spo[9]_INST_0_i_1_n_0\
    );
\spo[9]_INST_0_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[9]_INST_0_i_4_n_0\,
      I1 => \spo[9]_INST_0_i_5_n_0\,
      O => \spo[9]_INST_0_i_2_n_0\,
      S => a(6)
    );
\spo[9]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8186DDEA6EA2A8A"
    )
        port map (
      I0 => a(4),
      I1 => a(3),
      I2 => a(1),
      I3 => a(2),
      I4 => a(0),
      I5 => a(5),
      O => \spo[9]_INST_0_i_3_n_0\
    );
\spo[9]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"41080D9725969626"
    )
        port map (
      I0 => a(4),
      I1 => a(3),
      I2 => a(5),
      I3 => a(1),
      I4 => a(0),
      I5 => a(2),
      O => \spo[9]_INST_0_i_4_n_0\
    );
\spo[9]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"554E4E5422AAAA8A"
    )
        port map (
      I0 => a(4),
      I1 => a(1),
      I2 => a(2),
      I3 => a(0),
      I4 => a(5),
      I5 => a(3),
      O => \spo[9]_INST_0_i_5_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity IROM_dist_mem_gen_v8_0_12_synth is
  port (
    spo : out STD_LOGIC_VECTOR ( 30 downto 0 );
    a : in STD_LOGIC_VECTOR ( 13 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of IROM_dist_mem_gen_v8_0_12_synth : entity is "dist_mem_gen_v8_0_12_synth";
end IROM_dist_mem_gen_v8_0_12_synth;

architecture STRUCTURE of IROM_dist_mem_gen_v8_0_12_synth is
begin
\gen_rom.rom_inst\: entity work.IROM_rom
     port map (
      a(13 downto 0) => a(13 downto 0),
      spo(30 downto 0) => spo(30 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity IROM_dist_mem_gen_v8_0_12 is
  port (
    a : in STD_LOGIC_VECTOR ( 13 downto 0 );
    d : in STD_LOGIC_VECTOR ( 31 downto 0 );
    dpra : in STD_LOGIC_VECTOR ( 13 downto 0 );
    clk : in STD_LOGIC;
    we : in STD_LOGIC;
    i_ce : in STD_LOGIC;
    qspo_ce : in STD_LOGIC;
    qdpo_ce : in STD_LOGIC;
    qdpo_clk : in STD_LOGIC;
    qspo_rst : in STD_LOGIC;
    qdpo_rst : in STD_LOGIC;
    qspo_srst : in STD_LOGIC;
    qdpo_srst : in STD_LOGIC;
    spo : out STD_LOGIC_VECTOR ( 31 downto 0 );
    dpo : out STD_LOGIC_VECTOR ( 31 downto 0 );
    qspo : out STD_LOGIC_VECTOR ( 31 downto 0 );
    qdpo : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute C_ADDR_WIDTH : integer;
  attribute C_ADDR_WIDTH of IROM_dist_mem_gen_v8_0_12 : entity is 14;
  attribute C_DEFAULT_DATA : string;
  attribute C_DEFAULT_DATA of IROM_dist_mem_gen_v8_0_12 : entity is "0";
  attribute C_DEPTH : integer;
  attribute C_DEPTH of IROM_dist_mem_gen_v8_0_12 : entity is 16384;
  attribute C_ELABORATION_DIR : string;
  attribute C_ELABORATION_DIR of IROM_dist_mem_gen_v8_0_12 : entity is "./";
  attribute C_FAMILY : string;
  attribute C_FAMILY of IROM_dist_mem_gen_v8_0_12 : entity is "artix7";
  attribute C_HAS_CLK : integer;
  attribute C_HAS_CLK of IROM_dist_mem_gen_v8_0_12 : entity is 0;
  attribute C_HAS_D : integer;
  attribute C_HAS_D of IROM_dist_mem_gen_v8_0_12 : entity is 0;
  attribute C_HAS_DPO : integer;
  attribute C_HAS_DPO of IROM_dist_mem_gen_v8_0_12 : entity is 0;
  attribute C_HAS_DPRA : integer;
  attribute C_HAS_DPRA of IROM_dist_mem_gen_v8_0_12 : entity is 0;
  attribute C_HAS_I_CE : integer;
  attribute C_HAS_I_CE of IROM_dist_mem_gen_v8_0_12 : entity is 0;
  attribute C_HAS_QDPO : integer;
  attribute C_HAS_QDPO of IROM_dist_mem_gen_v8_0_12 : entity is 0;
  attribute C_HAS_QDPO_CE : integer;
  attribute C_HAS_QDPO_CE of IROM_dist_mem_gen_v8_0_12 : entity is 0;
  attribute C_HAS_QDPO_CLK : integer;
  attribute C_HAS_QDPO_CLK of IROM_dist_mem_gen_v8_0_12 : entity is 0;
  attribute C_HAS_QDPO_RST : integer;
  attribute C_HAS_QDPO_RST of IROM_dist_mem_gen_v8_0_12 : entity is 0;
  attribute C_HAS_QDPO_SRST : integer;
  attribute C_HAS_QDPO_SRST of IROM_dist_mem_gen_v8_0_12 : entity is 0;
  attribute C_HAS_QSPO : integer;
  attribute C_HAS_QSPO of IROM_dist_mem_gen_v8_0_12 : entity is 0;
  attribute C_HAS_QSPO_CE : integer;
  attribute C_HAS_QSPO_CE of IROM_dist_mem_gen_v8_0_12 : entity is 0;
  attribute C_HAS_QSPO_RST : integer;
  attribute C_HAS_QSPO_RST of IROM_dist_mem_gen_v8_0_12 : entity is 0;
  attribute C_HAS_QSPO_SRST : integer;
  attribute C_HAS_QSPO_SRST of IROM_dist_mem_gen_v8_0_12 : entity is 0;
  attribute C_HAS_SPO : integer;
  attribute C_HAS_SPO of IROM_dist_mem_gen_v8_0_12 : entity is 1;
  attribute C_HAS_WE : integer;
  attribute C_HAS_WE of IROM_dist_mem_gen_v8_0_12 : entity is 0;
  attribute C_MEM_INIT_FILE : string;
  attribute C_MEM_INIT_FILE of IROM_dist_mem_gen_v8_0_12 : entity is "IROM.mif";
  attribute C_MEM_TYPE : integer;
  attribute C_MEM_TYPE of IROM_dist_mem_gen_v8_0_12 : entity is 0;
  attribute C_PARSER_TYPE : integer;
  attribute C_PARSER_TYPE of IROM_dist_mem_gen_v8_0_12 : entity is 1;
  attribute C_PIPELINE_STAGES : integer;
  attribute C_PIPELINE_STAGES of IROM_dist_mem_gen_v8_0_12 : entity is 0;
  attribute C_QCE_JOINED : integer;
  attribute C_QCE_JOINED of IROM_dist_mem_gen_v8_0_12 : entity is 0;
  attribute C_QUALIFY_WE : integer;
  attribute C_QUALIFY_WE of IROM_dist_mem_gen_v8_0_12 : entity is 0;
  attribute C_READ_MIF : integer;
  attribute C_READ_MIF of IROM_dist_mem_gen_v8_0_12 : entity is 1;
  attribute C_REG_A_D_INPUTS : integer;
  attribute C_REG_A_D_INPUTS of IROM_dist_mem_gen_v8_0_12 : entity is 0;
  attribute C_REG_DPRA_INPUT : integer;
  attribute C_REG_DPRA_INPUT of IROM_dist_mem_gen_v8_0_12 : entity is 0;
  attribute C_SYNC_ENABLE : integer;
  attribute C_SYNC_ENABLE of IROM_dist_mem_gen_v8_0_12 : entity is 1;
  attribute C_WIDTH : integer;
  attribute C_WIDTH of IROM_dist_mem_gen_v8_0_12 : entity is 32;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of IROM_dist_mem_gen_v8_0_12 : entity is "dist_mem_gen_v8_0_12";
end IROM_dist_mem_gen_v8_0_12;

architecture STRUCTURE of IROM_dist_mem_gen_v8_0_12 is
  signal \<const0>\ : STD_LOGIC;
  signal \^spo\ : STD_LOGIC_VECTOR ( 31 downto 1 );
begin
  dpo(31) <= \<const0>\;
  dpo(30) <= \<const0>\;
  dpo(29) <= \<const0>\;
  dpo(28) <= \<const0>\;
  dpo(27) <= \<const0>\;
  dpo(26) <= \<const0>\;
  dpo(25) <= \<const0>\;
  dpo(24) <= \<const0>\;
  dpo(23) <= \<const0>\;
  dpo(22) <= \<const0>\;
  dpo(21) <= \<const0>\;
  dpo(20) <= \<const0>\;
  dpo(19) <= \<const0>\;
  dpo(18) <= \<const0>\;
  dpo(17) <= \<const0>\;
  dpo(16) <= \<const0>\;
  dpo(15) <= \<const0>\;
  dpo(14) <= \<const0>\;
  dpo(13) <= \<const0>\;
  dpo(12) <= \<const0>\;
  dpo(11) <= \<const0>\;
  dpo(10) <= \<const0>\;
  dpo(9) <= \<const0>\;
  dpo(8) <= \<const0>\;
  dpo(7) <= \<const0>\;
  dpo(6) <= \<const0>\;
  dpo(5) <= \<const0>\;
  dpo(4) <= \<const0>\;
  dpo(3) <= \<const0>\;
  dpo(2) <= \<const0>\;
  dpo(1) <= \<const0>\;
  dpo(0) <= \<const0>\;
  qdpo(31) <= \<const0>\;
  qdpo(30) <= \<const0>\;
  qdpo(29) <= \<const0>\;
  qdpo(28) <= \<const0>\;
  qdpo(27) <= \<const0>\;
  qdpo(26) <= \<const0>\;
  qdpo(25) <= \<const0>\;
  qdpo(24) <= \<const0>\;
  qdpo(23) <= \<const0>\;
  qdpo(22) <= \<const0>\;
  qdpo(21) <= \<const0>\;
  qdpo(20) <= \<const0>\;
  qdpo(19) <= \<const0>\;
  qdpo(18) <= \<const0>\;
  qdpo(17) <= \<const0>\;
  qdpo(16) <= \<const0>\;
  qdpo(15) <= \<const0>\;
  qdpo(14) <= \<const0>\;
  qdpo(13) <= \<const0>\;
  qdpo(12) <= \<const0>\;
  qdpo(11) <= \<const0>\;
  qdpo(10) <= \<const0>\;
  qdpo(9) <= \<const0>\;
  qdpo(8) <= \<const0>\;
  qdpo(7) <= \<const0>\;
  qdpo(6) <= \<const0>\;
  qdpo(5) <= \<const0>\;
  qdpo(4) <= \<const0>\;
  qdpo(3) <= \<const0>\;
  qdpo(2) <= \<const0>\;
  qdpo(1) <= \<const0>\;
  qdpo(0) <= \<const0>\;
  qspo(31) <= \<const0>\;
  qspo(30) <= \<const0>\;
  qspo(29) <= \<const0>\;
  qspo(28) <= \<const0>\;
  qspo(27) <= \<const0>\;
  qspo(26) <= \<const0>\;
  qspo(25) <= \<const0>\;
  qspo(24) <= \<const0>\;
  qspo(23) <= \<const0>\;
  qspo(22) <= \<const0>\;
  qspo(21) <= \<const0>\;
  qspo(20) <= \<const0>\;
  qspo(19) <= \<const0>\;
  qspo(18) <= \<const0>\;
  qspo(17) <= \<const0>\;
  qspo(16) <= \<const0>\;
  qspo(15) <= \<const0>\;
  qspo(14) <= \<const0>\;
  qspo(13) <= \<const0>\;
  qspo(12) <= \<const0>\;
  qspo(11) <= \<const0>\;
  qspo(10) <= \<const0>\;
  qspo(9) <= \<const0>\;
  qspo(8) <= \<const0>\;
  qspo(7) <= \<const0>\;
  qspo(6) <= \<const0>\;
  qspo(5) <= \<const0>\;
  qspo(4) <= \<const0>\;
  qspo(3) <= \<const0>\;
  qspo(2) <= \<const0>\;
  qspo(1) <= \<const0>\;
  qspo(0) <= \<const0>\;
  spo(31 downto 1) <= \^spo\(31 downto 1);
  spo(0) <= \^spo\(1);
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
\synth_options.dist_mem_inst\: entity work.IROM_dist_mem_gen_v8_0_12_synth
     port map (
      a(13 downto 0) => a(13 downto 0),
      spo(30 downto 0) => \^spo\(31 downto 1)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity IROM is
  port (
    a : in STD_LOGIC_VECTOR ( 13 downto 0 );
    spo : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of IROM : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of IROM : entity is "IROM,dist_mem_gen_v8_0_12,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of IROM : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of IROM : entity is "dist_mem_gen_v8_0_12,Vivado 2018.3";
end IROM;

architecture STRUCTURE of IROM is
  signal NLW_U0_dpo_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_U0_qdpo_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_U0_qspo_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  attribute C_FAMILY : string;
  attribute C_FAMILY of U0 : label is "artix7";
  attribute C_HAS_D : integer;
  attribute C_HAS_D of U0 : label is 0;
  attribute C_HAS_DPO : integer;
  attribute C_HAS_DPO of U0 : label is 0;
  attribute C_HAS_DPRA : integer;
  attribute C_HAS_DPRA of U0 : label is 0;
  attribute C_HAS_I_CE : integer;
  attribute C_HAS_I_CE of U0 : label is 0;
  attribute C_HAS_QDPO : integer;
  attribute C_HAS_QDPO of U0 : label is 0;
  attribute C_HAS_QDPO_CE : integer;
  attribute C_HAS_QDPO_CE of U0 : label is 0;
  attribute C_HAS_QDPO_CLK : integer;
  attribute C_HAS_QDPO_CLK of U0 : label is 0;
  attribute C_HAS_QDPO_RST : integer;
  attribute C_HAS_QDPO_RST of U0 : label is 0;
  attribute C_HAS_QDPO_SRST : integer;
  attribute C_HAS_QDPO_SRST of U0 : label is 0;
  attribute C_HAS_WE : integer;
  attribute C_HAS_WE of U0 : label is 0;
  attribute C_MEM_TYPE : integer;
  attribute C_MEM_TYPE of U0 : label is 0;
  attribute C_PIPELINE_STAGES : integer;
  attribute C_PIPELINE_STAGES of U0 : label is 0;
  attribute C_QCE_JOINED : integer;
  attribute C_QCE_JOINED of U0 : label is 0;
  attribute C_QUALIFY_WE : integer;
  attribute C_QUALIFY_WE of U0 : label is 0;
  attribute C_REG_DPRA_INPUT : integer;
  attribute C_REG_DPRA_INPUT of U0 : label is 0;
  attribute c_addr_width : integer;
  attribute c_addr_width of U0 : label is 14;
  attribute c_default_data : string;
  attribute c_default_data of U0 : label is "0";
  attribute c_depth : integer;
  attribute c_depth of U0 : label is 16384;
  attribute c_elaboration_dir : string;
  attribute c_elaboration_dir of U0 : label is "./";
  attribute c_has_clk : integer;
  attribute c_has_clk of U0 : label is 0;
  attribute c_has_qspo : integer;
  attribute c_has_qspo of U0 : label is 0;
  attribute c_has_qspo_ce : integer;
  attribute c_has_qspo_ce of U0 : label is 0;
  attribute c_has_qspo_rst : integer;
  attribute c_has_qspo_rst of U0 : label is 0;
  attribute c_has_qspo_srst : integer;
  attribute c_has_qspo_srst of U0 : label is 0;
  attribute c_has_spo : integer;
  attribute c_has_spo of U0 : label is 1;
  attribute c_mem_init_file : string;
  attribute c_mem_init_file of U0 : label is "IROM.mif";
  attribute c_parser_type : integer;
  attribute c_parser_type of U0 : label is 1;
  attribute c_read_mif : integer;
  attribute c_read_mif of U0 : label is 1;
  attribute c_reg_a_d_inputs : integer;
  attribute c_reg_a_d_inputs of U0 : label is 0;
  attribute c_sync_enable : integer;
  attribute c_sync_enable of U0 : label is 1;
  attribute c_width : integer;
  attribute c_width of U0 : label is 32;
begin
U0: entity work.IROM_dist_mem_gen_v8_0_12
     port map (
      a(13 downto 0) => a(13 downto 0),
      clk => '0',
      d(31 downto 0) => B"00000000000000000000000000000000",
      dpo(31 downto 0) => NLW_U0_dpo_UNCONNECTED(31 downto 0),
      dpra(13 downto 0) => B"00000000000000",
      i_ce => '1',
      qdpo(31 downto 0) => NLW_U0_qdpo_UNCONNECTED(31 downto 0),
      qdpo_ce => '1',
      qdpo_clk => '0',
      qdpo_rst => '0',
      qdpo_srst => '0',
      qspo(31 downto 0) => NLW_U0_qspo_UNCONNECTED(31 downto 0),
      qspo_ce => '1',
      qspo_rst => '0',
      qspo_srst => '0',
      spo(31 downto 0) => spo(31 downto 0),
      we => '0'
    );
end STRUCTURE;
