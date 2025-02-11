-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.2.1 (lin64) Build 5266912 Sun Dec 15 09:03:31 MST 2024
-- Date        : Tue Feb 11 10:46:48 2025
-- Host        : Electryc running 64-bit Gentoo Linux
-- Command     : write_vhdl -force -mode funcsim
--               /mnt/CONTMP/home/ladon/contmp/Zynq.HDMI.Z-turn.Sil9022A/code/block_designs/minimal_Sil9022A/ip/minimal_Sil9022A_Image_generator_0/minimal_Sil9022A_Image_generator_0_sim_netlist.vhdl
-- Design      : minimal_Sil9022A_Image_generator_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity minimal_Sil9022A_Image_generator_0_Image_generator is
  port (
    HSYNC : out STD_LOGIC;
    DE : out STD_LOGIC;
    VSYNC : out STD_LOGIC;
    RESETN : in STD_LOGIC;
    CLK : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of minimal_Sil9022A_Image_generator_0_Image_generator : entity is "Image_generator";
end minimal_Sil9022A_Image_generator_0_Image_generator;

architecture STRUCTURE of minimal_Sil9022A_Image_generator_0_Image_generator is
  signal DE_INST_0_i_1_n_0 : STD_LOGIC;
  signal \h_pos[2]_i_1_n_0\ : STD_LOGIC;
  signal \h_pos[6]_i_1_n_0\ : STD_LOGIC;
  signal \h_pos[7]_i_2_n_0\ : STD_LOGIC;
  signal \h_pos[9]_i_1_n_0\ : STD_LOGIC;
  signal \h_pos[9]_i_3_n_0\ : STD_LOGIC;
  signal \h_pos[9]_i_4_n_0\ : STD_LOGIC;
  signal \h_pos[9]_i_5_n_0\ : STD_LOGIC;
  signal h_pos_reg : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal p_0_in : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \p_0_in__0\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \v_pos[4]_i_1_n_0\ : STD_LOGIC;
  signal \v_pos[6]_i_1_n_0\ : STD_LOGIC;
  signal \v_pos[8]_i_1_n_0\ : STD_LOGIC;
  signal \v_pos[8]_i_2_n_0\ : STD_LOGIC;
  signal \v_pos[8]_i_4_n_0\ : STD_LOGIC;
  signal \v_pos[8]_i_5_n_0\ : STD_LOGIC;
  signal \v_pos[8]_i_6_n_0\ : STD_LOGIC;
  signal \v_pos[8]_i_7_n_0\ : STD_LOGIC;
  signal v_pos_reg : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of DE_INST_0 : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \h_pos[0]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \h_pos[1]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \h_pos[2]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \h_pos[3]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \h_pos[4]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \h_pos[6]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \h_pos[7]_i_2\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \h_pos[9]_i_3\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \h_pos[9]_i_4\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \h_pos[9]_i_5\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \v_pos[1]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \v_pos[2]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \v_pos[3]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \v_pos[4]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \v_pos[6]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \v_pos[7]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \v_pos[8]_i_4\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \v_pos[8]_i_5\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \v_pos[8]_i_7\ : label is "soft_lutpair5";
begin
DE_INST_0: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0A2A"
    )
        port map (
      I0 => DE_INST_0_i_1_n_0,
      I1 => h_pos_reg(7),
      I2 => h_pos_reg(9),
      I3 => h_pos_reg(8),
      O => DE
    );
DE_INST_0_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => v_pos_reg(6),
      I1 => v_pos_reg(5),
      I2 => v_pos_reg(8),
      I3 => v_pos_reg(7),
      O => DE_INST_0_i_1_n_0
    );
HSYNC_INST_0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000004040404000"
    )
        port map (
      I0 => h_pos_reg(8),
      I1 => h_pos_reg(9),
      I2 => h_pos_reg(7),
      I3 => h_pos_reg(4),
      I4 => h_pos_reg(5),
      I5 => h_pos_reg(6),
      O => HSYNC
    );
VSYNC_INST_0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000001010100"
    )
        port map (
      I0 => v_pos_reg(4),
      I1 => v_pos_reg(3),
      I2 => v_pos_reg(2),
      I3 => v_pos_reg(0),
      I4 => v_pos_reg(1),
      I5 => DE_INST_0_i_1_n_0,
      O => VSYNC
    );
\h_pos[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => h_pos_reg(0),
      O => p_0_in(0)
    );
\h_pos[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => h_pos_reg(0),
      I1 => h_pos_reg(1),
      O => p_0_in(1)
    );
\h_pos[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => h_pos_reg(2),
      I1 => h_pos_reg(0),
      I2 => h_pos_reg(1),
      O => \h_pos[2]_i_1_n_0\
    );
\h_pos[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => h_pos_reg(3),
      I1 => h_pos_reg(0),
      I2 => h_pos_reg(1),
      I3 => h_pos_reg(2),
      O => p_0_in(3)
    );
\h_pos[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => h_pos_reg(3),
      I1 => h_pos_reg(0),
      I2 => h_pos_reg(1),
      I3 => h_pos_reg(2),
      I4 => h_pos_reg(4),
      O => p_0_in(4)
    );
\h_pos[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => h_pos_reg(5),
      I1 => h_pos_reg(3),
      I2 => h_pos_reg(0),
      I3 => h_pos_reg(1),
      I4 => h_pos_reg(2),
      I5 => h_pos_reg(4),
      O => p_0_in(5)
    );
\h_pos[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => h_pos_reg(6),
      I1 => h_pos_reg(4),
      I2 => \h_pos[7]_i_2_n_0\,
      I3 => h_pos_reg(3),
      I4 => h_pos_reg(5),
      O => \h_pos[6]_i_1_n_0\
    );
\h_pos[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => h_pos_reg(7),
      I1 => h_pos_reg(5),
      I2 => h_pos_reg(3),
      I3 => \h_pos[7]_i_2_n_0\,
      I4 => h_pos_reg(4),
      I5 => h_pos_reg(6),
      O => p_0_in(7)
    );
\h_pos[7]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => h_pos_reg(2),
      I1 => h_pos_reg(1),
      I2 => h_pos_reg(0),
      O => \h_pos[7]_i_2_n_0\
    );
\h_pos[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => h_pos_reg(8),
      I1 => h_pos_reg(6),
      I2 => \h_pos[9]_i_5_n_0\,
      I3 => h_pos_reg(5),
      I4 => h_pos_reg(7),
      O => p_0_in(8)
    );
\h_pos[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FE000000FFFFFFFF"
    )
        port map (
      I0 => \h_pos[9]_i_3_n_0\,
      I1 => \h_pos[9]_i_4_n_0\,
      I2 => h_pos_reg(7),
      I3 => h_pos_reg(8),
      I4 => h_pos_reg(9),
      I5 => RESETN,
      O => \h_pos[9]_i_1_n_0\
    );
\h_pos[9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => h_pos_reg(9),
      I1 => h_pos_reg(7),
      I2 => h_pos_reg(5),
      I3 => \h_pos[9]_i_5_n_0\,
      I4 => h_pos_reg(6),
      I5 => h_pos_reg(8),
      O => p_0_in(9)
    );
\h_pos[9]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAA8000"
    )
        port map (
      I0 => h_pos_reg(6),
      I1 => h_pos_reg(2),
      I2 => h_pos_reg(1),
      I3 => h_pos_reg(0),
      I4 => h_pos_reg(3),
      O => \h_pos[9]_i_3_n_0\
    );
\h_pos[9]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => h_pos_reg(6),
      I1 => h_pos_reg(5),
      I2 => h_pos_reg(4),
      O => \h_pos[9]_i_4_n_0\
    );
\h_pos[9]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => h_pos_reg(4),
      I1 => h_pos_reg(2),
      I2 => h_pos_reg(1),
      I3 => h_pos_reg(0),
      I4 => h_pos_reg(3),
      O => \h_pos[9]_i_5_n_0\
    );
\h_pos_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => p_0_in(0),
      Q => h_pos_reg(0),
      R => \h_pos[9]_i_1_n_0\
    );
\h_pos_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => p_0_in(1),
      Q => h_pos_reg(1),
      R => \h_pos[9]_i_1_n_0\
    );
\h_pos_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \h_pos[2]_i_1_n_0\,
      Q => h_pos_reg(2),
      R => \h_pos[9]_i_1_n_0\
    );
\h_pos_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => p_0_in(3),
      Q => h_pos_reg(3),
      R => \h_pos[9]_i_1_n_0\
    );
\h_pos_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => p_0_in(4),
      Q => h_pos_reg(4),
      R => \h_pos[9]_i_1_n_0\
    );
\h_pos_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => p_0_in(5),
      Q => h_pos_reg(5),
      R => \h_pos[9]_i_1_n_0\
    );
\h_pos_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \h_pos[6]_i_1_n_0\,
      Q => h_pos_reg(6),
      R => \h_pos[9]_i_1_n_0\
    );
\h_pos_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => p_0_in(7),
      Q => h_pos_reg(7),
      R => \h_pos[9]_i_1_n_0\
    );
\h_pos_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => p_0_in(8),
      Q => h_pos_reg(8),
      R => \h_pos[9]_i_1_n_0\
    );
\h_pos_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => p_0_in(9),
      Q => h_pos_reg(9),
      R => \h_pos[9]_i_1_n_0\
    );
\v_pos[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => v_pos_reg(0),
      O => \p_0_in__0\(0)
    );
\v_pos[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => v_pos_reg(0),
      I1 => v_pos_reg(1),
      O => \p_0_in__0\(1)
    );
\v_pos[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => v_pos_reg(2),
      I1 => v_pos_reg(0),
      I2 => v_pos_reg(1),
      O => \p_0_in__0\(2)
    );
\v_pos[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => v_pos_reg(3),
      I1 => v_pos_reg(1),
      I2 => v_pos_reg(0),
      I3 => v_pos_reg(2),
      O => \p_0_in__0\(3)
    );
\v_pos[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => v_pos_reg(4),
      I1 => v_pos_reg(3),
      I2 => v_pos_reg(1),
      I3 => v_pos_reg(0),
      I4 => v_pos_reg(2),
      O => \v_pos[4]_i_1_n_0\
    );
\v_pos[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => v_pos_reg(5),
      I1 => v_pos_reg(2),
      I2 => v_pos_reg(0),
      I3 => v_pos_reg(1),
      I4 => v_pos_reg(3),
      I5 => v_pos_reg(4),
      O => \p_0_in__0\(5)
    );
\v_pos[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A6AA"
    )
        port map (
      I0 => v_pos_reg(6),
      I1 => v_pos_reg(4),
      I2 => \v_pos[8]_i_7_n_0\,
      I3 => v_pos_reg(5),
      O => \v_pos[6]_i_1_n_0\
    );
\v_pos[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A6AAAAAA"
    )
        port map (
      I0 => v_pos_reg(7),
      I1 => v_pos_reg(5),
      I2 => \v_pos[8]_i_7_n_0\,
      I3 => v_pos_reg(4),
      I4 => v_pos_reg(6),
      O => \p_0_in__0\(7)
    );
\v_pos[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"10101000FFFFFFFF"
    )
        port map (
      I0 => DE_INST_0_i_1_n_0,
      I1 => \v_pos[8]_i_4_n_0\,
      I2 => \v_pos[8]_i_5_n_0\,
      I3 => \v_pos[8]_i_6_n_0\,
      I4 => \h_pos[9]_i_3_n_0\,
      I5 => RESETN,
      O => \v_pos[8]_i_1_n_0\
    );
\v_pos[8]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8880888088808080"
    )
        port map (
      I0 => h_pos_reg(9),
      I1 => h_pos_reg(8),
      I2 => \v_pos[8]_i_6_n_0\,
      I3 => h_pos_reg(6),
      I4 => \h_pos[7]_i_2_n_0\,
      I5 => h_pos_reg(3),
      O => \v_pos[8]_i_2_n_0\
    );
\v_pos[8]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA6AAAAAAAAAAAAA"
    )
        port map (
      I0 => v_pos_reg(8),
      I1 => v_pos_reg(6),
      I2 => v_pos_reg(4),
      I3 => \v_pos[8]_i_7_n_0\,
      I4 => v_pos_reg(5),
      I5 => v_pos_reg(7),
      O => \p_0_in__0\(8)
    );
\v_pos[8]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0111FFFF"
    )
        port map (
      I0 => v_pos_reg(2),
      I1 => v_pos_reg(3),
      I2 => v_pos_reg(0),
      I3 => v_pos_reg(1),
      I4 => v_pos_reg(4),
      O => \v_pos[8]_i_4_n_0\
    );
\v_pos[8]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => h_pos_reg(8),
      I1 => h_pos_reg(9),
      O => \v_pos[8]_i_5_n_0\
    );
\v_pos[8]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FEAA"
    )
        port map (
      I0 => h_pos_reg(7),
      I1 => h_pos_reg(4),
      I2 => h_pos_reg(5),
      I3 => h_pos_reg(6),
      O => \v_pos[8]_i_6_n_0\
    );
\v_pos[8]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => v_pos_reg(2),
      I1 => v_pos_reg(0),
      I2 => v_pos_reg(1),
      I3 => v_pos_reg(3),
      O => \v_pos[8]_i_7_n_0\
    );
\v_pos_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \v_pos[8]_i_2_n_0\,
      D => \p_0_in__0\(0),
      Q => v_pos_reg(0),
      R => \v_pos[8]_i_1_n_0\
    );
\v_pos_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \v_pos[8]_i_2_n_0\,
      D => \p_0_in__0\(1),
      Q => v_pos_reg(1),
      R => \v_pos[8]_i_1_n_0\
    );
\v_pos_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \v_pos[8]_i_2_n_0\,
      D => \p_0_in__0\(2),
      Q => v_pos_reg(2),
      R => \v_pos[8]_i_1_n_0\
    );
\v_pos_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \v_pos[8]_i_2_n_0\,
      D => \p_0_in__0\(3),
      Q => v_pos_reg(3),
      R => \v_pos[8]_i_1_n_0\
    );
\v_pos_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \v_pos[8]_i_2_n_0\,
      D => \v_pos[4]_i_1_n_0\,
      Q => v_pos_reg(4),
      R => \v_pos[8]_i_1_n_0\
    );
\v_pos_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \v_pos[8]_i_2_n_0\,
      D => \p_0_in__0\(5),
      Q => v_pos_reg(5),
      R => \v_pos[8]_i_1_n_0\
    );
\v_pos_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \v_pos[8]_i_2_n_0\,
      D => \v_pos[6]_i_1_n_0\,
      Q => v_pos_reg(6),
      R => \v_pos[8]_i_1_n_0\
    );
\v_pos_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \v_pos[8]_i_2_n_0\,
      D => \p_0_in__0\(7),
      Q => v_pos_reg(7),
      R => \v_pos[8]_i_1_n_0\
    );
\v_pos_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \v_pos[8]_i_2_n_0\,
      D => \p_0_in__0\(8),
      Q => v_pos_reg(8),
      R => \v_pos[8]_i_1_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity minimal_Sil9022A_Image_generator_0 is
  port (
    CLK : in STD_LOGIC;
    RESETN : in STD_LOGIC;
    RED : out STD_LOGIC_VECTOR ( 4 downto 0 );
    GREEN : out STD_LOGIC_VECTOR ( 5 downto 0 );
    BLUE : out STD_LOGIC_VECTOR ( 4 downto 0 );
    DE : out STD_LOGIC;
    HSYNC : out STD_LOGIC;
    VSYNC : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of minimal_Sil9022A_Image_generator_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of minimal_Sil9022A_Image_generator_0 : entity is "minimal_Sil9022A_Image_generator_0,Image_generator,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of minimal_Sil9022A_Image_generator_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of minimal_Sil9022A_Image_generator_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of minimal_Sil9022A_Image_generator_0 : entity is "Image_generator,Vivado 2024.2.1";
end minimal_Sil9022A_Image_generator_0;

architecture STRUCTURE of minimal_Sil9022A_Image_generator_0 is
  signal \<const0>\ : STD_LOGIC;
  signal \<const1>\ : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of CLK : signal is "xilinx.com:signal:clock:1.0 CLK CLK";
  attribute X_INTERFACE_MODE : string;
  attribute X_INTERFACE_MODE of CLK : signal is "slave";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of CLK : signal is "XIL_INTERFACENAME CLK, ASSOCIATED_RESET RESETN, FREQ_HZ 31500000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /Pixel_clock_clk_out1, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of RESETN : signal is "xilinx.com:signal:reset:1.0 RESETN RST";
  attribute X_INTERFACE_MODE of RESETN : signal is "slave";
  attribute X_INTERFACE_PARAMETER of RESETN : signal is "XIL_INTERFACENAME RESETN, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
  BLUE(4) <= \<const1>\;
  BLUE(3) <= \<const0>\;
  BLUE(2) <= \<const0>\;
  BLUE(1) <= \<const0>\;
  BLUE(0) <= \<const0>\;
  GREEN(5) <= \<const0>\;
  GREEN(4) <= \<const1>\;
  GREEN(3) <= \<const1>\;
  GREEN(2) <= \<const0>\;
  GREEN(1) <= \<const0>\;
  GREEN(0) <= \<const1>\;
  RED(4) <= \<const1>\;
  RED(3) <= \<const1>\;
  RED(2) <= \<const0>\;
  RED(1) <= \<const0>\;
  RED(0) <= \<const1>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
VCC: unisim.vcomponents.VCC
     port map (
      P => \<const1>\
    );
inst: entity work.minimal_Sil9022A_Image_generator_0_Image_generator
     port map (
      CLK => CLK,
      DE => DE,
      HSYNC => HSYNC,
      RESETN => RESETN,
      VSYNC => VSYNC
    );
end STRUCTURE;
