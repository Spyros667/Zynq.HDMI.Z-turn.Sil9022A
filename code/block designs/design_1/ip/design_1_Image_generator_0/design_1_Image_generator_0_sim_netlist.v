// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2.1 (lin64) Build 5266912 Sun Dec 15 09:03:31 MST 2024
// Date        : Mon Feb 10 21:41:27 2025
// Host        : Electryc running 64-bit Gentoo Linux
// Command     : write_verilog -force -mode funcsim {/mnt/CONTMP/home/ladon/contmp/Zynq.HDMI.Z-turn.Sil9022A/code/block
//               designs/design_1/ip/design_1_Image_generator_0/design_1_Image_generator_0_sim_netlist.v}
// Design      : design_1_Image_generator_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_Image_generator_0,Image_generator,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "Image_generator,Vivado 2024.2.1" *) 
(* NotValidForBitStream *)
module design_1_Image_generator_0
   (CLK,
    RESETN,
    RED,
    GREEN,
    BLUE,
    DE,
    HSYNC,
    VSYNC);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK, ASSOCIATED_RESET RESETN, FREQ_HZ 31500000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /Pixel_clock_clk_out1, INSERT_VIP 0" *) input CLK;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RESETN RST" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RESETN, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input RESETN;
  output [4:0]RED;
  output [5:0]GREEN;
  output [4:0]BLUE;
  output DE;
  output HSYNC;
  output VSYNC;

  wire \<const0> ;
  wire \<const1> ;
  wire CLK;
  wire DE;
  wire HSYNC;
  wire RESETN;
  wire VSYNC;

  assign BLUE[4] = \<const1> ;
  assign BLUE[3] = \<const0> ;
  assign BLUE[2] = \<const0> ;
  assign BLUE[1] = \<const0> ;
  assign BLUE[0] = \<const0> ;
  assign GREEN[5] = \<const0> ;
  assign GREEN[4] = \<const1> ;
  assign GREEN[3] = \<const1> ;
  assign GREEN[2] = \<const0> ;
  assign GREEN[1] = \<const0> ;
  assign GREEN[0] = \<const1> ;
  assign RED[4] = \<const1> ;
  assign RED[3] = \<const1> ;
  assign RED[2] = \<const0> ;
  assign RED[1] = \<const0> ;
  assign RED[0] = \<const1> ;
  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  design_1_Image_generator_0_Image_generator inst
       (.CLK(CLK),
        .DE(DE),
        .HSYNC(HSYNC),
        .RESETN(RESETN),
        .VSYNC(VSYNC));
endmodule

(* ORIG_REF_NAME = "Image_generator" *) 
module design_1_Image_generator_0_Image_generator
   (HSYNC,
    DE,
    VSYNC,
    RESETN,
    CLK);
  output HSYNC;
  output DE;
  output VSYNC;
  input RESETN;
  input CLK;

  wire CLK;
  wire DE;
  wire DE_INST_0_i_1_n_0;
  wire HSYNC;
  wire RESETN;
  wire VSYNC;
  wire \h_pos[2]_i_1_n_0 ;
  wire \h_pos[6]_i_1_n_0 ;
  wire \h_pos[7]_i_2_n_0 ;
  wire \h_pos[9]_i_1_n_0 ;
  wire \h_pos[9]_i_3_n_0 ;
  wire \h_pos[9]_i_4_n_0 ;
  wire \h_pos[9]_i_5_n_0 ;
  wire [9:0]h_pos_reg;
  wire [9:0]p_0_in;
  wire [8:0]p_0_in__0;
  wire \v_pos[4]_i_1_n_0 ;
  wire \v_pos[6]_i_1_n_0 ;
  wire \v_pos[8]_i_1_n_0 ;
  wire \v_pos[8]_i_2_n_0 ;
  wire \v_pos[8]_i_4_n_0 ;
  wire \v_pos[8]_i_5_n_0 ;
  wire \v_pos[8]_i_6_n_0 ;
  wire \v_pos[8]_i_7_n_0 ;
  wire [8:0]v_pos_reg;

  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h0A2A)) 
    DE_INST_0
       (.I0(DE_INST_0_i_1_n_0),
        .I1(h_pos_reg[7]),
        .I2(h_pos_reg[9]),
        .I3(h_pos_reg[8]),
        .O(DE));
  LUT4 #(
    .INIT(16'h7FFF)) 
    DE_INST_0_i_1
       (.I0(v_pos_reg[6]),
        .I1(v_pos_reg[5]),
        .I2(v_pos_reg[8]),
        .I3(v_pos_reg[7]),
        .O(DE_INST_0_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000004040404000)) 
    HSYNC_INST_0
       (.I0(h_pos_reg[8]),
        .I1(h_pos_reg[9]),
        .I2(h_pos_reg[7]),
        .I3(h_pos_reg[4]),
        .I4(h_pos_reg[5]),
        .I5(h_pos_reg[6]),
        .O(HSYNC));
  LUT6 #(
    .INIT(64'h0000000001010100)) 
    VSYNC_INST_0
       (.I0(v_pos_reg[4]),
        .I1(v_pos_reg[3]),
        .I2(v_pos_reg[2]),
        .I3(v_pos_reg[0]),
        .I4(v_pos_reg[1]),
        .I5(DE_INST_0_i_1_n_0),
        .O(VSYNC));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \h_pos[0]_i_1 
       (.I0(h_pos_reg[0]),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \h_pos[1]_i_1 
       (.I0(h_pos_reg[0]),
        .I1(h_pos_reg[1]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \h_pos[2]_i_1 
       (.I0(h_pos_reg[2]),
        .I1(h_pos_reg[0]),
        .I2(h_pos_reg[1]),
        .O(\h_pos[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \h_pos[3]_i_1 
       (.I0(h_pos_reg[3]),
        .I1(h_pos_reg[0]),
        .I2(h_pos_reg[1]),
        .I3(h_pos_reg[2]),
        .O(p_0_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \h_pos[4]_i_1 
       (.I0(h_pos_reg[3]),
        .I1(h_pos_reg[0]),
        .I2(h_pos_reg[1]),
        .I3(h_pos_reg[2]),
        .I4(h_pos_reg[4]),
        .O(p_0_in[4]));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \h_pos[5]_i_1 
       (.I0(h_pos_reg[5]),
        .I1(h_pos_reg[3]),
        .I2(h_pos_reg[0]),
        .I3(h_pos_reg[1]),
        .I4(h_pos_reg[2]),
        .I5(h_pos_reg[4]),
        .O(p_0_in[5]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \h_pos[6]_i_1 
       (.I0(h_pos_reg[6]),
        .I1(h_pos_reg[4]),
        .I2(\h_pos[7]_i_2_n_0 ),
        .I3(h_pos_reg[3]),
        .I4(h_pos_reg[5]),
        .O(\h_pos[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \h_pos[7]_i_1 
       (.I0(h_pos_reg[7]),
        .I1(h_pos_reg[5]),
        .I2(h_pos_reg[3]),
        .I3(\h_pos[7]_i_2_n_0 ),
        .I4(h_pos_reg[4]),
        .I5(h_pos_reg[6]),
        .O(p_0_in[7]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \h_pos[7]_i_2 
       (.I0(h_pos_reg[2]),
        .I1(h_pos_reg[1]),
        .I2(h_pos_reg[0]),
        .O(\h_pos[7]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \h_pos[8]_i_1 
       (.I0(h_pos_reg[8]),
        .I1(h_pos_reg[6]),
        .I2(\h_pos[9]_i_5_n_0 ),
        .I3(h_pos_reg[5]),
        .I4(h_pos_reg[7]),
        .O(p_0_in[8]));
  LUT6 #(
    .INIT(64'hFE000000FFFFFFFF)) 
    \h_pos[9]_i_1 
       (.I0(\h_pos[9]_i_3_n_0 ),
        .I1(\h_pos[9]_i_4_n_0 ),
        .I2(h_pos_reg[7]),
        .I3(h_pos_reg[8]),
        .I4(h_pos_reg[9]),
        .I5(RESETN),
        .O(\h_pos[9]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \h_pos[9]_i_2 
       (.I0(h_pos_reg[9]),
        .I1(h_pos_reg[7]),
        .I2(h_pos_reg[5]),
        .I3(\h_pos[9]_i_5_n_0 ),
        .I4(h_pos_reg[6]),
        .I5(h_pos_reg[8]),
        .O(p_0_in[9]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'hAAAA8000)) 
    \h_pos[9]_i_3 
       (.I0(h_pos_reg[6]),
        .I1(h_pos_reg[2]),
        .I2(h_pos_reg[1]),
        .I3(h_pos_reg[0]),
        .I4(h_pos_reg[3]),
        .O(\h_pos[9]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \h_pos[9]_i_4 
       (.I0(h_pos_reg[6]),
        .I1(h_pos_reg[5]),
        .I2(h_pos_reg[4]),
        .O(\h_pos[9]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \h_pos[9]_i_5 
       (.I0(h_pos_reg[4]),
        .I1(h_pos_reg[2]),
        .I2(h_pos_reg[1]),
        .I3(h_pos_reg[0]),
        .I4(h_pos_reg[3]),
        .O(\h_pos[9]_i_5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \h_pos_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_0_in[0]),
        .Q(h_pos_reg[0]),
        .R(\h_pos[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \h_pos_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_0_in[1]),
        .Q(h_pos_reg[1]),
        .R(\h_pos[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \h_pos_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(\h_pos[2]_i_1_n_0 ),
        .Q(h_pos_reg[2]),
        .R(\h_pos[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \h_pos_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_0_in[3]),
        .Q(h_pos_reg[3]),
        .R(\h_pos[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \h_pos_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_0_in[4]),
        .Q(h_pos_reg[4]),
        .R(\h_pos[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \h_pos_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_0_in[5]),
        .Q(h_pos_reg[5]),
        .R(\h_pos[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \h_pos_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .D(\h_pos[6]_i_1_n_0 ),
        .Q(h_pos_reg[6]),
        .R(\h_pos[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \h_pos_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_0_in[7]),
        .Q(h_pos_reg[7]),
        .R(\h_pos[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \h_pos_reg[8] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_0_in[8]),
        .Q(h_pos_reg[8]),
        .R(\h_pos[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \h_pos_reg[9] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_0_in[9]),
        .Q(h_pos_reg[9]),
        .R(\h_pos[9]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \v_pos[0]_i_1 
       (.I0(v_pos_reg[0]),
        .O(p_0_in__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \v_pos[1]_i_1 
       (.I0(v_pos_reg[0]),
        .I1(v_pos_reg[1]),
        .O(p_0_in__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \v_pos[2]_i_1 
       (.I0(v_pos_reg[2]),
        .I1(v_pos_reg[0]),
        .I2(v_pos_reg[1]),
        .O(p_0_in__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \v_pos[3]_i_1 
       (.I0(v_pos_reg[3]),
        .I1(v_pos_reg[1]),
        .I2(v_pos_reg[0]),
        .I3(v_pos_reg[2]),
        .O(p_0_in__0[3]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \v_pos[4]_i_1 
       (.I0(v_pos_reg[4]),
        .I1(v_pos_reg[3]),
        .I2(v_pos_reg[1]),
        .I3(v_pos_reg[0]),
        .I4(v_pos_reg[2]),
        .O(\v_pos[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \v_pos[5]_i_1 
       (.I0(v_pos_reg[5]),
        .I1(v_pos_reg[2]),
        .I2(v_pos_reg[0]),
        .I3(v_pos_reg[1]),
        .I4(v_pos_reg[3]),
        .I5(v_pos_reg[4]),
        .O(p_0_in__0[5]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'hA6AA)) 
    \v_pos[6]_i_1 
       (.I0(v_pos_reg[6]),
        .I1(v_pos_reg[4]),
        .I2(\v_pos[8]_i_7_n_0 ),
        .I3(v_pos_reg[5]),
        .O(\v_pos[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'hA6AAAAAA)) 
    \v_pos[7]_i_1 
       (.I0(v_pos_reg[7]),
        .I1(v_pos_reg[5]),
        .I2(\v_pos[8]_i_7_n_0 ),
        .I3(v_pos_reg[4]),
        .I4(v_pos_reg[6]),
        .O(p_0_in__0[7]));
  LUT6 #(
    .INIT(64'h10101000FFFFFFFF)) 
    \v_pos[8]_i_1 
       (.I0(DE_INST_0_i_1_n_0),
        .I1(\v_pos[8]_i_4_n_0 ),
        .I2(\v_pos[8]_i_5_n_0 ),
        .I3(\v_pos[8]_i_6_n_0 ),
        .I4(\h_pos[9]_i_3_n_0 ),
        .I5(RESETN),
        .O(\v_pos[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8880888088808080)) 
    \v_pos[8]_i_2 
       (.I0(h_pos_reg[9]),
        .I1(h_pos_reg[8]),
        .I2(\v_pos[8]_i_6_n_0 ),
        .I3(h_pos_reg[6]),
        .I4(\h_pos[7]_i_2_n_0 ),
        .I5(h_pos_reg[3]),
        .O(\v_pos[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAA6AAAAAAAAAAAAA)) 
    \v_pos[8]_i_3 
       (.I0(v_pos_reg[8]),
        .I1(v_pos_reg[6]),
        .I2(v_pos_reg[4]),
        .I3(\v_pos[8]_i_7_n_0 ),
        .I4(v_pos_reg[5]),
        .I5(v_pos_reg[7]),
        .O(p_0_in__0[8]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h0111FFFF)) 
    \v_pos[8]_i_4 
       (.I0(v_pos_reg[2]),
        .I1(v_pos_reg[3]),
        .I2(v_pos_reg[0]),
        .I3(v_pos_reg[1]),
        .I4(v_pos_reg[4]),
        .O(\v_pos[8]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \v_pos[8]_i_5 
       (.I0(h_pos_reg[8]),
        .I1(h_pos_reg[9]),
        .O(\v_pos[8]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hFEAA)) 
    \v_pos[8]_i_6 
       (.I0(h_pos_reg[7]),
        .I1(h_pos_reg[4]),
        .I2(h_pos_reg[5]),
        .I3(h_pos_reg[6]),
        .O(\v_pos[8]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \v_pos[8]_i_7 
       (.I0(v_pos_reg[2]),
        .I1(v_pos_reg[0]),
        .I2(v_pos_reg[1]),
        .I3(v_pos_reg[3]),
        .O(\v_pos[8]_i_7_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \v_pos_reg[0] 
       (.C(CLK),
        .CE(\v_pos[8]_i_2_n_0 ),
        .D(p_0_in__0[0]),
        .Q(v_pos_reg[0]),
        .R(\v_pos[8]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \v_pos_reg[1] 
       (.C(CLK),
        .CE(\v_pos[8]_i_2_n_0 ),
        .D(p_0_in__0[1]),
        .Q(v_pos_reg[1]),
        .R(\v_pos[8]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \v_pos_reg[2] 
       (.C(CLK),
        .CE(\v_pos[8]_i_2_n_0 ),
        .D(p_0_in__0[2]),
        .Q(v_pos_reg[2]),
        .R(\v_pos[8]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \v_pos_reg[3] 
       (.C(CLK),
        .CE(\v_pos[8]_i_2_n_0 ),
        .D(p_0_in__0[3]),
        .Q(v_pos_reg[3]),
        .R(\v_pos[8]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \v_pos_reg[4] 
       (.C(CLK),
        .CE(\v_pos[8]_i_2_n_0 ),
        .D(\v_pos[4]_i_1_n_0 ),
        .Q(v_pos_reg[4]),
        .R(\v_pos[8]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \v_pos_reg[5] 
       (.C(CLK),
        .CE(\v_pos[8]_i_2_n_0 ),
        .D(p_0_in__0[5]),
        .Q(v_pos_reg[5]),
        .R(\v_pos[8]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \v_pos_reg[6] 
       (.C(CLK),
        .CE(\v_pos[8]_i_2_n_0 ),
        .D(\v_pos[6]_i_1_n_0 ),
        .Q(v_pos_reg[6]),
        .R(\v_pos[8]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \v_pos_reg[7] 
       (.C(CLK),
        .CE(\v_pos[8]_i_2_n_0 ),
        .D(p_0_in__0[7]),
        .Q(v_pos_reg[7]),
        .R(\v_pos[8]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \v_pos_reg[8] 
       (.C(CLK),
        .CE(\v_pos[8]_i_2_n_0 ),
        .D(p_0_in__0[8]),
        .Q(v_pos_reg[8]),
        .R(\v_pos[8]_i_1_n_0 ));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
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
    reg GRESTORE_int;

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
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

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

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
