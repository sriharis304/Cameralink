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


// IP VLNV: Xilinx.com:user:cameralink_to_axis:1.0
// IP Revision: 7

`timescale 1ns/1ps

(* DowngradeIPIdentifiedWarnings = "yes" *)
module design_1_cameralink_to_axis_0_0 (
  rst_n,
  refclkin_p,
  refclkin_n,
  clkin1_p,
  clkin1_n,
  datain1_p,
  datain1_n,
  clkin2_p,
  clkin2_n,
  datain2_p,
  datain2_n,
  clkin3_p,
  clkin3_n,
  datain3_p,
  datain3_n,
  refclk_out,
  aclk,
  aclken,
  aresetn,
  m_axis_video_tdata,
  m_axis_video_tvalid,
  m_axis_video_tready,
  m_axis_video_tuser,
  m_axis_video_tlast,
  fid,
  vtd_active_video,
  vtd_vblank,
  vtd_hblank,
  vtd_vsync,
  vtd_hsync,
  vtd_field_id,
  wr_error,
  empty,
  axis_enable
);

input wire rst_n;
(* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 refclk_in CLK_P" *)
input wire refclkin_p;
(* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 refclk_in CLK_N" *)
input wire refclkin_n;
(* X_INTERFACE_INFO = "xilinx.com:interface:channel_link:1.0 channel_x CLK_P" *)
input wire clkin1_p;
(* X_INTERFACE_INFO = "xilinx.com:interface:channel_link:1.0 channel_x CLK_N" *)
input wire clkin1_n;
(* X_INTERFACE_INFO = "xilinx.com:interface:channel_link:1.0 channel_x DATA_P" *)
input wire [3 : 0] datain1_p;
(* X_INTERFACE_INFO = "xilinx.com:interface:channel_link:1.0 channel_x DATA_N" *)
input wire [3 : 0] datain1_n;
(* X_INTERFACE_INFO = "xilinx.com:interface:channel_link:1.0 channel_y CLK_P" *)
input wire clkin2_p;
(* X_INTERFACE_INFO = "xilinx.com:interface:channel_link:1.0 channel_y CLK_N" *)
input wire clkin2_n;
(* X_INTERFACE_INFO = "xilinx.com:interface:channel_link:1.0 channel_y DATA_P" *)
input wire [3 : 0] datain2_p;
(* X_INTERFACE_INFO = "xilinx.com:interface:channel_link:1.0 channel_y DATA_N" *)
input wire [3 : 0] datain2_n;
(* X_INTERFACE_INFO = "xilinx.com:interface:channel_link:1.0 channel_z CLK_P" *)
input wire clkin3_p;
(* X_INTERFACE_INFO = "xilinx.com:interface:channel_link:1.0 channel_z CLK_N" *)
input wire clkin3_n;
(* X_INTERFACE_INFO = "xilinx.com:interface:channel_link:1.0 channel_z DATA_P" *)
input wire [3 : 0] datain3_p;
(* X_INTERFACE_INFO = "xilinx.com:interface:channel_link:1.0 channel_z DATA_N" *)
input wire [3 : 0] datain3_n;
output wire refclk_out;
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 signal_clock CLK" *)
input wire aclk;
input wire aclken;
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 signal_reset RST" *)
input wire aresetn;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_video TDATA" *)
output wire [79 : 0] m_axis_video_tdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_video TVALID" *)
output wire m_axis_video_tvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_video TREADY" *)
input wire m_axis_video_tready;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_video TUSER" *)
output wire m_axis_video_tuser;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_video TLAST" *)
output wire m_axis_video_tlast;
output wire fid;
(* X_INTERFACE_INFO = "xilinx.com:interface:video_timing:2.0 vtd ACTIVE_VIDEO" *)
output wire vtd_active_video;
(* X_INTERFACE_INFO = "xilinx.com:interface:video_timing:2.0 vtd VBLANK" *)
output wire vtd_vblank;
(* X_INTERFACE_INFO = "xilinx.com:interface:video_timing:2.0 vtd HBLANK" *)
output wire vtd_hblank;
(* X_INTERFACE_INFO = "xilinx.com:interface:video_timing:2.0 vtd VSYNC" *)
output wire vtd_vsync;
(* X_INTERFACE_INFO = "xilinx.com:interface:video_timing:2.0 vtd HSYNC" *)
output wire vtd_hsync;
output wire vtd_field_id;
output wire wr_error;
output wire empty;
input wire axis_enable;

  cameralink_to_axis inst (
    .rst_n(rst_n),
    .refclkin_p(refclkin_p),
    .refclkin_n(refclkin_n),
    .clkin1_p(clkin1_p),
    .clkin1_n(clkin1_n),
    .datain1_p(datain1_p),
    .datain1_n(datain1_n),
    .clkin2_p(clkin2_p),
    .clkin2_n(clkin2_n),
    .datain2_p(datain2_p),
    .datain2_n(datain2_n),
    .clkin3_p(clkin3_p),
    .clkin3_n(clkin3_n),
    .datain3_p(datain3_p),
    .datain3_n(datain3_n),
    .refclk_out(refclk_out),
    .aclk(aclk),
    .aclken(aclken),
    .aresetn(aresetn),
    .m_axis_video_tdata(m_axis_video_tdata),
    .m_axis_video_tvalid(m_axis_video_tvalid),
    .m_axis_video_tready(m_axis_video_tready),
    .m_axis_video_tuser(m_axis_video_tuser),
    .m_axis_video_tlast(m_axis_video_tlast),
    .fid(fid),
    .vtd_active_video(vtd_active_video),
    .vtd_vblank(vtd_vblank),
    .vtd_hblank(vtd_hblank),
    .vtd_vsync(vtd_vsync),
    .vtd_hsync(vtd_hsync),
    .vtd_field_id(vtd_field_id),
    .wr_error(wr_error),
    .empty(empty),
    .axis_enable(axis_enable)
  );
endmodule
