-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.2.1 (lin64) Build 5266912 Sun Dec 15 09:03:31 MST 2024
-- Date        : Tue Feb 11 10:46:48 2025
-- Host        : Electryc running 64-bit Gentoo Linux
-- Command     : write_vhdl -force -mode synth_stub
--               /mnt/CONTMP/home/ladon/contmp/Zynq.HDMI.Z-turn.Sil9022A/code/block_designs/minimal_Sil9022A/ip/minimal_Sil9022A_Image_generator_0/minimal_Sil9022A_Image_generator_0_stub.vhdl
-- Design      : minimal_Sil9022A_Image_generator_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity minimal_Sil9022A_Image_generator_0 is
  Port ( 
    CLK : in STD_LOGIC;
    RESETN : in STD_LOGIC;
    RED : out STD_LOGIC_VECTOR ( 4 downto 0 );
    GREEN : out STD_LOGIC_VECTOR ( 5 downto 0 );
    BLUE : out STD_LOGIC_VECTOR ( 4 downto 0 );
    DE : out STD_LOGIC;
    HSYNC : out STD_LOGIC;
    VSYNC : out STD_LOGIC
  );

  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of minimal_Sil9022A_Image_generator_0 : entity is "minimal_Sil9022A_Image_generator_0,Image_generator,{}";
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of minimal_Sil9022A_Image_generator_0 : entity is "minimal_Sil9022A_Image_generator_0,Image_generator,{x_ipProduct=Vivado 2024.2.1,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=Image_generator,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED,H_VISIBLE=640,H_FRONT=16,H_PULSE=64,H_BACK=120,V_VISIBLE=480,V_FRONT=1,V_PULSE=3,V_BACK=16}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of minimal_Sil9022A_Image_generator_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of minimal_Sil9022A_Image_generator_0 : entity is "module_ref";
end minimal_Sil9022A_Image_generator_0;

architecture stub of minimal_Sil9022A_Image_generator_0 is
  attribute syn_black_box : boolean;
  attribute black_box_pad_pin : string;
  attribute syn_black_box of stub : architecture is true;
  attribute black_box_pad_pin of stub : architecture is "CLK,RESETN,RED[4:0],GREEN[5:0],BLUE[4:0],DE,HSYNC,VSYNC";
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of CLK : signal is "xilinx.com:signal:clock:1.0 CLK CLK";
  attribute X_INTERFACE_MODE : string;
  attribute X_INTERFACE_MODE of CLK : signal is "slave";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of CLK : signal is "XIL_INTERFACENAME CLK, ASSOCIATED_RESET RESETN, FREQ_HZ 31500000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /Pixel_clock_clk_out1, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of RESETN : signal is "xilinx.com:signal:reset:1.0 RESETN RST";
  attribute X_INTERFACE_MODE of RESETN : signal is "slave";
  attribute X_INTERFACE_PARAMETER of RESETN : signal is "XIL_INTERFACENAME RESETN, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of stub : architecture is "Image_generator,Vivado 2024.2.1";
begin
end;
