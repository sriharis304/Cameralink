// (c) Copyright 1995-2015 Xilinx, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


// IP VLNV: xilinx.com:hls:hls_threshold:1.0
// IP Revision: 1507031522

`timescale 1ns/1ps

(* DowngradeIPIdentifiedWarnings = "yes" *)
module design_1_hls_threshold_0_1 (
  sof_o_ap_vld,
  sof_i,
  src_V_V_TVALID,
  src_V_V_TREADY,
  src_V_V_TDATA,
  dst_V_V_TVALID,
  dst_V_V_TREADY,
  dst_V_V_TDATA,
  sof_o,
  ap_clk,
  ap_rst_n
);

output wire sof_o_ap_vld;
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 sof_i DATA" *)
input wire [0 : 0] sof_i;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 src_V_V TVALID" *)
input wire src_V_V_TVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 src_V_V TREADY" *)
output wire src_V_V_TREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 src_V_V TDATA" *)
input wire [63 : 0] src_V_V_TDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 dst_V_V TVALID" *)
output wire dst_V_V_TVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 dst_V_V TREADY" *)
input wire dst_V_V_TREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 dst_V_V TDATA" *)
output wire [7 : 0] dst_V_V_TDATA;
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 sof_o DATA" *)
output wire [0 : 0] sof_o;
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 ap_clk CLK" *)
input wire ap_clk;
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 ap_rst_n RST" *)
input wire ap_rst_n;

  hls_threshold inst (
    .sof_o_ap_vld(sof_o_ap_vld),
    .sof_i(sof_i),
    .src_V_V_TVALID(src_V_V_TVALID),
    .src_V_V_TREADY(src_V_V_TREADY),
    .src_V_V_TDATA(src_V_V_TDATA),
    .dst_V_V_TVALID(dst_V_V_TVALID),
    .dst_V_V_TREADY(dst_V_V_TREADY),
    .dst_V_V_TDATA(dst_V_V_TDATA),
    .sof_o(sof_o),
    .ap_clk(ap_clk),
    .ap_rst_n(ap_rst_n)
  );
endmodule
