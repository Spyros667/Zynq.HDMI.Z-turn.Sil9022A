-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.2.1 (lin64) Build 5266912 Sun Dec 15 09:03:31 MST 2024
-- Date        : Tue Feb 11 10:44:31 2025
-- Host        : Electryc running 64-bit Gentoo Linux
-- Command     : write_vhdl -force -mode synth_stub
--               /mnt/CONTMP/home/ladon/contmp/Zynq.HDMI.Z-turn.Sil9022A/code/block_designs/minimal_Sil9022A/ip/minimal_Sil9022A_Pixel_clock_0/minimal_Sil9022A_Pixel_clock_0_stub.vhdl
-- Design      : minimal_Sil9022A_Pixel_clock_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity minimal_Sil9022A_Pixel_clock_0 is
  Port ( 
    clk_out1 : out STD_LOGIC;
    resetn : in STD_LOGIC;
    locked : out STD_LOGIC;
    clk_in1 : in STD_LOGIC
  );

  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of minimal_Sil9022A_Pixel_clock_0 : entity is "minimal_Sil9022A_Pixel_clock_0,clk_wiz_v6_0_15_0_0,{component_name=minimal_Sil9022A_Pixel_clock_0,use_phase_alignment=true,use_min_o_jitter=false,use_max_i_jitter=false,use_dyn_phase_shift=false,use_inclk_switchover=false,use_dyn_reconfig=false,enable_axi=0,feedback_source=FDBK_AUTO,PRIMITIVE=MMCM,num_out_clk=1,clkin1_period=10.000,clkin2_period=10.000,use_power_down=false,use_reset=true,use_locked=true,use_inclk_stopped=false,feedback_type=SINGLE,CLOCK_MGR_TYPE=NA,manual_override=false}";
end minimal_Sil9022A_Pixel_clock_0;

architecture stub of minimal_Sil9022A_Pixel_clock_0 is
  attribute syn_black_box : boolean;
  attribute black_box_pad_pin : string;
  attribute syn_black_box of stub : architecture is true;
  attribute black_box_pad_pin of stub : architecture is "clk_out1,resetn,locked,clk_in1";
begin
end;
