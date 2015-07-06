// Copyright 1986-2014 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2014.4 (lin64) Build 1071353 Tue Nov 18 16:47:07 MST 2014
// Date        : Thu Jun 11 20:41:27 2015
// Host        : headlight-pc running 64-bit Ubuntu 12.04.5 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/subhagato/Codes/smartheadlight_fpga/CameraLinkToAXI_IP/CameraLinkToAXI.srcs/sources_1/ip/v_vid_in_axi4s_0/v_vid_in_axi4s_0_stub.v
// Design      : v_vid_in_axi4s_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z030fbg676-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "v_vid_in_axi4s_v3_0_vid_in_axi4s_top,Vivado 2014.4" *)
module v_vid_in_axi4s_0(vid_io_in_clk, rst, vid_io_in_ce, vid_active_video, vid_vblank, vid_hblank, vid_vsync, vid_hsync, vid_field_id, vid_data, aclk, aclken, aresetn, m_axis_video_tdata, m_axis_video_tvalid, m_axis_video_tready, m_axis_video_tuser, m_axis_video_tlast, fid, vtd_active_video, vtd_vblank, vtd_hblank, vtd_vsync, vtd_hsync, vtd_field_id, wr_error, empty, axis_enable)
/* synthesis syn_black_box black_box_pad_pin="vid_io_in_clk,rst,vid_io_in_ce,vid_active_video,vid_vblank,vid_hblank,vid_vsync,vid_hsync,vid_field_id,vid_data[79:0],aclk,aclken,aresetn,m_axis_video_tdata[79:0],m_axis_video_tvalid,m_axis_video_tready,m_axis_video_tuser,m_axis_video_tlast,fid,vtd_active_video,vtd_vblank,vtd_hblank,vtd_vsync,vtd_hsync,vtd_field_id,wr_error,empty,axis_enable" */;
  input vid_io_in_clk;
  input rst;
  input vid_io_in_ce;
  input vid_active_video;
  input vid_vblank;
  input vid_hblank;
  input vid_vsync;
  input vid_hsync;
  input vid_field_id;
  input [79:0]vid_data;
  input aclk;
  input aclken;
  input aresetn;
  output [79:0]m_axis_video_tdata;
  output m_axis_video_tvalid;
  input m_axis_video_tready;
  output m_axis_video_tuser;
  output m_axis_video_tlast;
  output fid;
  output vtd_active_video;
  output vtd_vblank;
  output vtd_hblank;
  output vtd_vsync;
  output vtd_hsync;
  output vtd_field_id;
  output wr_error;
  output empty;
  input axis_enable;
endmodule
