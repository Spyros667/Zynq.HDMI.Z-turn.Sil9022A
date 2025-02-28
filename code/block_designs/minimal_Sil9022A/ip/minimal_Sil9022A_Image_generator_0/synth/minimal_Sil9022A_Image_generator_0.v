// (c) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// (c) Copyright 2022-2025 Advanced Micro Devices, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of AMD and is protected under U.S. and international copyright
// and other intellectual property laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// AMD, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND AMD HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) AMD shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or AMD had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// AMD products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of AMD products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


// IP VLNV: xilinx.com:module_ref:Image_generator:1.0
// IP Revision: 1

(* X_CORE_INFO = "Image_generator,Vivado 2024.2.1" *)
(* CHECK_LICENSE_TYPE = "minimal_Sil9022A_Image_generator_0,Image_generator,{}" *)
(* CORE_GENERATION_INFO = "minimal_Sil9022A_Image_generator_0,Image_generator,{x_ipProduct=Vivado 2024.2.1,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=Image_generator,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED,H_VISIBLE=640,H_FRONT=16,H_PULSE=64,H_BACK=120,V_VISIBLE=480,V_FRONT=1,V_PULSE=3,V_BACK=16}" *)
(* IP_DEFINITION_SOURCE = "module_ref" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module minimal_Sil9022A_Image_generator_0 (
  CLK,
  RESETN,
  RED,
  GREEN,
  BLUE,
  DE,
  HSYNC,
  VSYNC
);

(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK CLK" *)
(* X_INTERFACE_MODE = "slave" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK, ASSOCIATED_RESET RESETN, FREQ_HZ 31500000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /Pixel_clock_clk_out1, INSERT_VIP 0" *)
input wire CLK;
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RESETN RST" *)
(* X_INTERFACE_MODE = "slave" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RESETN, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
input wire RESETN;
output wire [4 : 0] RED;
output wire [5 : 0] GREEN;
output wire [4 : 0] BLUE;
output wire DE;
output wire HSYNC;
output wire VSYNC;

  Image_generator #(
    .H_VISIBLE(640),
    .H_FRONT(16),
    .H_PULSE(64),
    .H_BACK(120),
    .V_VISIBLE(480),
    .V_FRONT(1),
    .V_PULSE(3),
    .V_BACK(16)
  ) inst (
    .CLK(CLK),
    .RESETN(RESETN),
    .RED(RED),
    .GREEN(GREEN),
    .BLUE(BLUE),
    .DE(DE),
    .HSYNC(HSYNC),
    .VSYNC(VSYNC)
  );
endmodule
