// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2.1 (lin64) Build 5266912 Sun Dec 15 09:03:31 MST 2024
// Date        : Tue Feb 11 10:46:48 2025
// Host        : Electryc running 64-bit Gentoo Linux
// Command     : write_verilog -force -mode synth_stub
//               /mnt/CONTMP/home/ladon/contmp/Zynq.HDMI.Z-turn.Sil9022A/code/block_designs/minimal_Sil9022A/ip/minimal_Sil9022A_Image_generator_0/minimal_Sil9022A_Image_generator_0_stub.v
// Design      : minimal_Sil9022A_Image_generator_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* CHECK_LICENSE_TYPE = "minimal_Sil9022A_Image_generator_0,Image_generator,{}" *) (* CORE_GENERATION_INFO = "minimal_Sil9022A_Image_generator_0,Image_generator,{x_ipProduct=Vivado 2024.2.1,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=Image_generator,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED,H_VISIBLE=640,H_FRONT=16,H_PULSE=64,H_BACK=120,V_VISIBLE=480,V_FRONT=1,V_PULSE=3,V_BACK=16}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) 
(* IP_DEFINITION_SOURCE = "module_ref" *) (* X_CORE_INFO = "Image_generator,Vivado 2024.2.1" *) 
module minimal_Sil9022A_Image_generator_0(CLK, RESETN, RED, GREEN, BLUE, DE, HSYNC, VSYNC)
/* synthesis syn_black_box black_box_pad_pin="RESETN,RED[4:0],GREEN[5:0],BLUE[4:0],DE,HSYNC,VSYNC" */
/* synthesis syn_force_seq_prim="CLK" */;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK, ASSOCIATED_RESET RESETN, FREQ_HZ 31500000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /Pixel_clock_clk_out1, INSERT_VIP 0" *) input CLK /* synthesis syn_isclock = 1 */;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RESETN RST" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RESETN, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input RESETN;
  output [4:0]RED;
  output [5:0]GREEN;
  output [4:0]BLUE;
  output DE;
  output HSYNC;
  output VSYNC;
endmodule
