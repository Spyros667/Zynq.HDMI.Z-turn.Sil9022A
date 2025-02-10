-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.2.1 (lin64) Build 5266912 Sun Dec 15 09:03:31 MST 2024
-- Date        : Mon Feb 10 21:15:40 2025
-- Host        : Electryc running 64-bit Gentoo Linux
-- Command     : write_vhdl -force -mode synth_stub {/mnt/CONTMP/home/ladon/contmp/Zynq.HDMI.Z-turn.Sil9022A/code/block
--               designs/design_1/ip/design_1_Pixel_clock_0/design_1_Pixel_clock_0_stub.vhdl}
-- Design      : design_1_Pixel_clock_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_Pixel_clock_0 is
  Port ( 
    clk_out1 : out STD_LOGIC;
    resetn : in STD_LOGIC;
    locked : out STD_LOGIC;
    clk_in1 : in STD_LOGIC
  );

  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of design_1_Pixel_clock_0 : entity is "design_1_Pixel_clock_0,clk_wiz_v6_0_15_0_0,{component_name=design_1_Pixel_clock_0,use_phase_alignment=true,use_min_o_jitter=false,use_max_i_jitter=false,use_dyn_phase_shift=false,use_inclk_switchover=false,use_dyn_reconfig=false,enable_axi=0,feedback_source=FDBK_AUTO,PRIMITIVE=MMCM,num_out_clk=1,clkin1_period=10.000,clkin2_period=10.000,use_power_down=false,use_reset=true,use_locked=true,use_inclk_stopped=false,feedback_type=SINGLE,CLOCK_MGR_TYPE=NA,manual_override=false}";
end design_1_Pixel_clock_0;

architecture stub of design_1_Pixel_clock_0 is
  attribute syn_black_box : boolean;
  attribute black_box_pad_pin : string;
  attribute syn_black_box of stub : architecture is true;
  attribute black_box_pad_pin of stub : architecture is "clk_out1,resetn,locked,clk_in1";
begin
end;
