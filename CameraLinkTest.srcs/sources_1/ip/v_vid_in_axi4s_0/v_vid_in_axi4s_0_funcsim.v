// Copyright 1986-2014 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2014.4 (lin64) Build 1071353 Tue Nov 18 16:47:07 MST 2014
// Date        : Thu Jun 11 20:41:27 2015
// Host        : headlight-pc running 64-bit Ubuntu 12.04.5 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/subhagato/Codes/smartheadlight_fpga/CameraLinkToAXI_IP/CameraLinkToAXI.srcs/sources_1/ip/v_vid_in_axi4s_0/v_vid_in_axi4s_0_funcsim.v
// Design      : v_vid_in_axi4s_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z030fbg676-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* X_CORE_INFO = "v_vid_in_axi4s_v3_0_vid_in_axi4s_top,Vivado 2014.4" *) (* CHECK_LICENSE_TYPE = "v_vid_in_axi4s_0,v_vid_in_axi4s_v3_0_vid_in_axi4s_top,{}" *) (* CORE_GENERATION_INFO = "v_vid_in_axi4s_0,v_vid_in_axi4s_v3_0_vid_in_axi4s_top,{x_ipProduct=Vivado 2014.4,x_ipVendor=xilinx.com,x_ipLibrary=ip,x_ipName=v_vid_in_axi4s,x_ipVersion=3.0,x_ipCoreRevision=6,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED,C_M_AXIS_VIDEO_DATA_WIDTH=10,C_M_AXIS_VIDEO_FORMAT=6,VID_IN_DATA_WIDTH=80,C_M_AXIS_VIDEO_TDATA_WIDTH=80,RAM_ADDR_BITS=10,HYSTERESIS_LEVEL=12}" *) 
(* DowngradeIPIdentifiedWarnings = "yes" *) 
(* NotValidForBitStream *)
module v_vid_in_axi4s_0
   (vid_io_in_clk,
    rst,
    vid_io_in_ce,
    vid_active_video,
    vid_vblank,
    vid_hblank,
    vid_vsync,
    vid_hsync,
    vid_field_id,
    vid_data,
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
    axis_enable);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 vid_io_in_clk_intf CLK" *) input vid_io_in_clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 rst_intf RST" *) input rst;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clockenable:1.0 vid_io_in_ce_intf CE" *) input vid_io_in_ce;
  (* X_INTERFACE_INFO = "xilinx.com:interface:vid_io:1.0 vid_io_in ACTIVE_VIDEO" *) input vid_active_video;
  (* X_INTERFACE_INFO = "xilinx.com:interface:vid_io:1.0 vid_io_in VBLANK" *) input vid_vblank;
  (* X_INTERFACE_INFO = "xilinx.com:interface:vid_io:1.0 vid_io_in HBLANK" *) input vid_hblank;
  (* X_INTERFACE_INFO = "xilinx.com:interface:vid_io:1.0 vid_io_in VSYNC" *) input vid_vsync;
  (* X_INTERFACE_INFO = "xilinx.com:interface:vid_io:1.0 vid_io_in HSYNC" *) input vid_hsync;
  (* X_INTERFACE_INFO = "xilinx.com:interface:vid_io:1.0 vid_io_in FIELD" *) input vid_field_id;
  input [79:0]vid_data;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 aclk_intf CLK" *) input aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clockenable:1.0 aclken_intf CE" *) input aclken;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 aresetn_intf RST" *) input aresetn;
  output [79:0]m_axis_video_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 video_out TVALID" *) output m_axis_video_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 video_out TREADY" *) input m_axis_video_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 video_out TUSER" *) output m_axis_video_tuser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 video_out TLAST" *) output m_axis_video_tlast;
  output fid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:video_timing:2.0 vtiming_out ACTIVE_VIDEO" *) output vtd_active_video;
  (* X_INTERFACE_INFO = "xilinx.com:interface:video_timing:2.0 vtiming_out VBLANK" *) output vtd_vblank;
  (* X_INTERFACE_INFO = "xilinx.com:interface:video_timing:2.0 vtiming_out HBLANK" *) output vtd_hblank;
  (* X_INTERFACE_INFO = "xilinx.com:interface:video_timing:2.0 vtiming_out VSYNC" *) output vtd_vsync;
  (* X_INTERFACE_INFO = "xilinx.com:interface:video_timing:2.0 vtiming_out HSYNC" *) output vtd_hsync;
  (* X_INTERFACE_INFO = "xilinx.com:interface:video_timing:2.0 vtiming_out FIELD" *) output vtd_field_id;
  output wr_error;
  output empty;
  input axis_enable;

  wire aclk;
  wire aclken;
  wire aresetn;
  wire axis_enable;
  wire empty;
  wire fid;
  wire [79:0]m_axis_video_tdata;
  wire m_axis_video_tlast;
  wire m_axis_video_tready;
  wire m_axis_video_tuser;
  wire m_axis_video_tvalid;
  wire rst;
  wire vid_active_video;
  wire [79:0]vid_data;
  wire vid_field_id;
  wire vid_hblank;
  wire vid_hsync;
  wire vid_io_in_ce;
  wire vid_io_in_clk;
  wire vid_vblank;
  wire vid_vsync;
  wire vtd_active_video;
  wire vtd_field_id;
  wire vtd_hblank;
  wire vtd_hsync;
  wire vtd_vblank;
  wire vtd_vsync;
  wire wr_error;

(* C_M_AXIS_VIDEO_DATA_WIDTH = "10" *) 
   (* C_M_AXIS_VIDEO_FORMAT = "6" *) 
   (* C_M_AXIS_VIDEO_TDATA_WIDTH = "80" *) 
   (* DowngradeIPIdentifiedWarnings = "yes" *) 
   (* HYSTERESIS_LEVEL = "12" *) 
   (* RAM_ADDR_BITS = "10" *) 
   (* VID_IN_DATA_WIDTH = "80" *) 
   (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 video_out TDATA" *) 
   v_vid_in_axi4s_0_v_vid_in_axi4s_v3_0_vid_in_axi4s_top inst
       (.aclk(aclk),
        .aclken(aclken),
        .aresetn(aresetn),
        .axis_enable(axis_enable),
        .empty(empty),
        .fid(fid),
        .m_axis_video_tdata(m_axis_video_tdata),
        .m_axis_video_tlast(m_axis_video_tlast),
        .m_axis_video_tready(m_axis_video_tready),
        .m_axis_video_tuser(m_axis_video_tuser),
        .m_axis_video_tvalid(m_axis_video_tvalid),
        .rst(rst),
        .vid_active_video(vid_active_video),
        .vid_data(vid_data),
        .vid_field_id(vid_field_id),
        .vid_hblank(vid_hblank),
        .vid_hsync(vid_hsync),
        .vid_io_in_ce(vid_io_in_ce),
        .vid_io_in_clk(vid_io_in_clk),
        .vid_vblank(vid_vblank),
        .vid_vsync(vid_vsync),
        .vtd_active_video(vtd_active_video),
        .vtd_field_id(vtd_field_id),
        .vtd_hblank(vtd_hblank),
        .vtd_hsync(vtd_hsync),
        .vtd_vblank(vtd_vblank),
        .vtd_vsync(vtd_vsync),
        .wr_error(wr_error));
endmodule

(* ORIG_REF_NAME = "v_vid_in_axi4s_v3_0_in_bridge_async_fifo_2" *) 
module v_vid_in_axi4s_0_v_vid_in_axi4s_v3_0_in_bridge_async_fifo_2
   (O1,
    wr_error,
    O2,
    O3,
    D,
    dout0_out,
    E,
    aclk,
    vid_io_in_clk,
    vid_io_in_ce,
    idf_de,
    aclken,
    aresetn,
    rst,
    I1,
    first_sof_reg,
    p_0_in6_in,
    m_axis_video_tready,
    din);
  output O1;
  output wr_error;
  output O2;
  output O3;
  output [82:0]D;
  output [1:0]dout0_out;
  output [0:0]E;
  input aclk;
  input vid_io_in_clk;
  input vid_io_in_ce;
  input idf_de;
  input aclken;
  input aresetn;
  input rst;
  input I1;
  input first_sof_reg;
  input p_0_in6_in;
  input m_axis_video_tready;
  input [82:0]din;

  wire [82:0]D;
  wire [0:0]E;
  wire I1;
  wire O1;
  wire O2;
  wire O3;
  wire ack_rd_dom_1;
  wire ack_rd_dom_2;
  wire ack_rd_dom_3;
  wire ack_wr_dom_1;
  wire ack_wr_dom_2;
  wire ack_wr_dom_3;
  wire aclk;
  wire aclken;
  wire aresetn;
  wire ce_rd_ptr_sample;
  wire ce_rd_ptr_wr_dom;
  wire ce_wr_ptr_rd_dom;
  wire ce_wr_ptr_sample;
  wire [82:0]din;
  wire [1:0]dout0_out;
  wire empty0;
  wire empty_comb;
  wire fifo_empty;
  wire fifo_eol;
  wire fifo_full;
  wire first_sof_reg;
  wire full_comb;
  wire full_frame;
  wire idf_de;
  wire [9:2]level_rd;
  wire m_axis_video_tready;
  wire n_0_fifo_ram_reg_0_i_1;
  wire \n_0_ptr_diff_rd_dom[3]_i_2 ;
  wire \n_0_ptr_diff_rd_dom[3]_i_3 ;
  wire \n_0_ptr_diff_rd_dom[3]_i_4 ;
  wire \n_0_ptr_diff_rd_dom[3]_i_5 ;
  wire \n_0_ptr_diff_rd_dom[7]_i_2 ;
  wire \n_0_ptr_diff_rd_dom[7]_i_3 ;
  wire \n_0_ptr_diff_rd_dom[7]_i_4 ;
  wire \n_0_ptr_diff_rd_dom[7]_i_5 ;
  wire \n_0_ptr_diff_rd_dom[9]_i_2 ;
  wire \n_0_ptr_diff_rd_dom[9]_i_3 ;
  wire \n_0_ptr_diff_rd_dom[9]_i_4 ;
  wire \n_0_ptr_diff_rd_dom[9]_i_5 ;
  wire \n_0_ptr_diff_rd_dom_reg[3]_i_1 ;
  wire \n_0_ptr_diff_rd_dom_reg[7]_i_1 ;
  wire n_0_ram_out_rd_error_i_1;
  wire n_0_rd_error_i_1;
  wire n_0_rd_error_i_3;
  wire \n_0_rd_ptr_reg[0]_i_1 ;
  wire \n_0_rd_ptr_reg[10]_i_1 ;
  wire \n_0_rd_ptr_reg[10]_i_2 ;
  wire \n_0_rd_ptr_reg[11]_i_1 ;
  wire \n_0_rd_ptr_reg[1]_i_1 ;
  wire \n_0_rd_ptr_reg[1]_i_2 ;
  wire \n_0_rd_ptr_reg[2]_i_1 ;
  wire \n_0_rd_ptr_reg[2]_i_2 ;
  wire \n_0_rd_ptr_reg[3]_i_1 ;
  wire \n_0_rd_ptr_reg[3]_i_2 ;
  wire \n_0_rd_ptr_reg[4]_i_1 ;
  wire \n_0_rd_ptr_reg[4]_i_2 ;
  wire \n_0_rd_ptr_reg[5]_i_1 ;
  wire \n_0_rd_ptr_reg[5]_i_2 ;
  wire \n_0_rd_ptr_reg[6]_i_1 ;
  wire \n_0_rd_ptr_reg[6]_i_2 ;
  wire \n_0_rd_ptr_reg[7]_i_1 ;
  wire \n_0_rd_ptr_reg[7]_i_2 ;
  wire \n_0_rd_ptr_reg[8]_i_1 ;
  wire \n_0_rd_ptr_reg[8]_i_2 ;
  wire \n_0_rd_ptr_reg[9]_i_1 ;
  wire \n_0_rd_ptr_reg[9]_i_2 ;
  wire \n_0_rd_ptr_reg_rep[0] ;
  wire \n_0_rd_ptr_reg_rep[1] ;
  wire \n_0_rd_ptr_reg_rep[2] ;
  wire \n_0_rd_ptr_reg_rep[3] ;
  wire \n_0_rd_ptr_reg_rep[3]_i_1 ;
  wire \n_0_rd_ptr_reg_rep[4] ;
  wire \n_0_rd_ptr_reg_rep[5] ;
  wire \n_0_rd_ptr_reg_rep[6] ;
  wire \n_0_rd_ptr_reg_rep[7] ;
  wire \n_0_rd_ptr_reg_rep[7]_i_1 ;
  wire \n_0_rd_ptr_reg_rep[8] ;
  wire \n_0_rd_ptr_reg_rep[9] ;
  wire \n_0_rd_ptr_rep[3]_i_2 ;
  wire \n_0_rd_ptr_rep[3]_i_3 ;
  wire \n_0_rd_ptr_rep[3]_i_4 ;
  wire \n_0_rd_ptr_rep[3]_i_5 ;
  wire \n_0_rd_ptr_rep[7]_i_2 ;
  wire \n_0_rd_ptr_rep[7]_i_3 ;
  wire \n_0_rd_ptr_rep[7]_i_4 ;
  wire \n_0_rd_ptr_rep[7]_i_5 ;
  wire \n_0_rd_ptr_rep[9]_i_1 ;
  wire \n_0_rd_ptr_rep[9]_i_4 ;
  wire \n_0_rd_ptr_rep[9]_i_5 ;
  wire \n_0_rd_ptr_rep[9]_i_6 ;
  wire \n_0_rd_ptr_rep[9]_i_7 ;
  wire \n_0_rd_ptr_rep[9]_i_8 ;
  wire \n_0_rd_ptr_wr_dom_reg[0] ;
  wire \n_0_rd_ptr_wr_dom_reg[10] ;
  wire \n_0_rd_ptr_wr_dom_reg[1] ;
  wire \n_0_rd_ptr_wr_dom_reg[2] ;
  wire \n_0_rd_ptr_wr_dom_reg[3] ;
  wire \n_0_rd_ptr_wr_dom_reg[4] ;
  wire \n_0_rd_ptr_wr_dom_reg[5] ;
  wire \n_0_rd_ptr_wr_dom_reg[6] ;
  wire \n_0_rd_ptr_wr_dom_reg[7] ;
  wire \n_0_rd_ptr_wr_dom_reg[8] ;
  wire \n_0_rd_ptr_wr_dom_reg[9] ;
  wire n_0_valid_i_2;
  wire n_0_wr_error_i_1;
  wire n_0_wr_error_i_10;
  wire n_0_wr_error_i_11;
  wire n_0_wr_error_i_12;
  wire n_0_wr_error_i_13;
  wire n_0_wr_error_i_14;
  wire n_0_wr_error_i_15;
  wire n_0_wr_error_i_4;
  wire n_0_wr_error_i_5;
  wire n_0_wr_error_i_6;
  wire n_0_wr_error_i_8;
  wire n_0_wr_error_i_9;
  wire n_0_wr_error_reg_i_3;
  wire n_0_wr_error_reg_i_7;
  wire \n_0_wr_ptr[0]_i_1 ;
  wire \n_0_wr_ptr[0]_i_3 ;
  wire \n_0_wr_ptr_reg[0]_i_2 ;
  wire \n_0_wr_ptr_reg[10]_i_1 ;
  wire \n_0_wr_ptr_reg[10]_i_2 ;
  wire \n_0_wr_ptr_reg[11]_i_1 ;
  wire \n_0_wr_ptr_reg[1]_i_1 ;
  wire \n_0_wr_ptr_reg[1]_i_2 ;
  wire \n_0_wr_ptr_reg[2]_i_1 ;
  wire \n_0_wr_ptr_reg[2]_i_2 ;
  wire \n_0_wr_ptr_reg[3]_i_1 ;
  wire \n_0_wr_ptr_reg[3]_i_2 ;
  wire \n_0_wr_ptr_reg[4]_i_1 ;
  wire \n_0_wr_ptr_reg[4]_i_2 ;
  wire \n_0_wr_ptr_reg[5]_i_1 ;
  wire \n_0_wr_ptr_reg[5]_i_2 ;
  wire \n_0_wr_ptr_reg[6]_i_1 ;
  wire \n_0_wr_ptr_reg[6]_i_2 ;
  wire \n_0_wr_ptr_reg[7]_i_1 ;
  wire \n_0_wr_ptr_reg[7]_i_2 ;
  wire \n_0_wr_ptr_reg[8]_i_1 ;
  wire \n_0_wr_ptr_reg[8]_i_2 ;
  wire \n_0_wr_ptr_reg[9]_i_1 ;
  wire \n_0_wr_ptr_reg[9]_i_2 ;
  wire \n_1_ptr_diff_rd_dom_reg[3]_i_1 ;
  wire \n_1_ptr_diff_rd_dom_reg[7]_i_1 ;
  wire \n_1_ptr_diff_rd_dom_reg[9]_i_1 ;
  wire \n_1_rd_ptr_reg_rep[3]_i_1 ;
  wire \n_1_rd_ptr_reg_rep[7]_i_1 ;
  wire \n_1_rd_ptr_reg_rep[9]_i_2 ;
  wire n_1_wr_error_reg_i_3;
  wire n_1_wr_error_reg_i_7;
  wire n_24_fifo_ram_reg_2;
  wire n_25_fifo_ram_reg_2;
  wire n_26_fifo_ram_reg_2;
  wire n_27_fifo_ram_reg_2;
  wire n_28_fifo_ram_reg_2;
  wire n_29_fifo_ram_reg_2;
  wire \n_2_ptr_diff_rd_dom_reg[3]_i_1 ;
  wire \n_2_ptr_diff_rd_dom_reg[7]_i_1 ;
  wire \n_2_ptr_diff_rd_dom_reg[9]_i_1 ;
  wire \n_2_rd_ptr_reg_rep[3]_i_1 ;
  wire \n_2_rd_ptr_reg_rep[7]_i_1 ;
  wire \n_2_rd_ptr_reg_rep[9]_i_2 ;
  wire n_2_wr_error_reg_i_2;
  wire n_2_wr_error_reg_i_3;
  wire n_2_wr_error_reg_i_7;
  wire n_30_fifo_ram_reg_2;
  wire n_31_fifo_ram_reg_2;
  wire n_36_fifo_ram_reg_0;
  wire n_36_fifo_ram_reg_1;
  wire n_37_fifo_ram_reg_0;
  wire n_37_fifo_ram_reg_1;
  wire n_38_fifo_ram_reg_0;
  wire n_38_fifo_ram_reg_1;
  wire n_39_fifo_ram_reg_0;
  wire n_39_fifo_ram_reg_1;
  wire \n_3_ptr_diff_rd_dom_reg[3]_i_1 ;
  wire \n_3_ptr_diff_rd_dom_reg[7]_i_1 ;
  wire \n_3_ptr_diff_rd_dom_reg[9]_i_1 ;
  wire \n_3_rd_ptr_reg_rep[3]_i_1 ;
  wire \n_3_rd_ptr_reg_rep[7]_i_1 ;
  wire \n_3_rd_ptr_reg_rep[9]_i_2 ;
  wire n_3_wr_error_reg_i_2;
  wire n_3_wr_error_reg_i_3;
  wire n_3_wr_error_reg_i_7;
  wire n_40_fifo_ram_reg_0;
  wire n_40_fifo_ram_reg_1;
  wire n_41_fifo_ram_reg_0;
  wire n_41_fifo_ram_reg_1;
  wire n_42_fifo_ram_reg_0;
  wire n_42_fifo_ram_reg_1;
  wire n_43_fifo_ram_reg_0;
  wire n_43_fifo_ram_reg_1;
  wire n_44_fifo_ram_reg_0;
  wire n_44_fifo_ram_reg_1;
  wire n_45_fifo_ram_reg_0;
  wire n_45_fifo_ram_reg_1;
  wire n_46_fifo_ram_reg_0;
  wire n_46_fifo_ram_reg_1;
  wire n_47_fifo_ram_reg_0;
  wire n_47_fifo_ram_reg_1;
  wire n_48_fifo_ram_reg_0;
  wire n_48_fifo_ram_reg_1;
  wire n_49_fifo_ram_reg_0;
  wire n_49_fifo_ram_reg_1;
  wire \n_4_rd_ptr_reg_rep[3]_i_1 ;
  wire \n_4_rd_ptr_reg_rep[7]_i_1 ;
  wire \n_4_rd_ptr_reg_rep[9]_i_2 ;
  wire n_4_wr_error_reg_i_3;
  wire n_4_wr_error_reg_i_7;
  wire n_50_fifo_ram_reg_0;
  wire n_50_fifo_ram_reg_1;
  wire n_51_fifo_ram_reg_0;
  wire n_51_fifo_ram_reg_1;
  wire n_52_fifo_ram_reg_0;
  wire n_52_fifo_ram_reg_1;
  wire n_53_fifo_ram_reg_0;
  wire n_53_fifo_ram_reg_1;
  wire n_54_fifo_ram_reg_0;
  wire n_54_fifo_ram_reg_1;
  wire n_55_fifo_ram_reg_0;
  wire n_55_fifo_ram_reg_1;
  wire n_56_fifo_ram_reg_0;
  wire n_56_fifo_ram_reg_1;
  wire n_57_fifo_ram_reg_0;
  wire n_57_fifo_ram_reg_1;
  wire n_58_fifo_ram_reg_0;
  wire n_58_fifo_ram_reg_1;
  wire n_59_fifo_ram_reg_0;
  wire n_59_fifo_ram_reg_1;
  wire \n_5_rd_ptr_reg_rep[3]_i_1 ;
  wire \n_5_rd_ptr_reg_rep[7]_i_1 ;
  wire \n_5_rd_ptr_reg_rep[9]_i_2 ;
  wire n_5_wr_error_reg_i_3;
  wire n_5_wr_error_reg_i_7;
  wire n_60_fifo_ram_reg_0;
  wire n_60_fifo_ram_reg_1;
  wire n_61_fifo_ram_reg_0;
  wire n_61_fifo_ram_reg_1;
  wire n_62_fifo_ram_reg_0;
  wire n_62_fifo_ram_reg_1;
  wire n_63_fifo_ram_reg_0;
  wire n_63_fifo_ram_reg_1;
  wire n_64_fifo_ram_reg_0;
  wire n_64_fifo_ram_reg_1;
  wire n_65_fifo_ram_reg_0;
  wire n_65_fifo_ram_reg_1;
  wire n_66_fifo_ram_reg_0;
  wire n_66_fifo_ram_reg_1;
  wire n_67_fifo_ram_reg_0;
  wire n_67_fifo_ram_reg_1;
  wire \n_6_rd_ptr_reg_rep[3]_i_1 ;
  wire \n_6_rd_ptr_reg_rep[7]_i_1 ;
  wire \n_6_rd_ptr_reg_rep[9]_i_2 ;
  wire n_6_wr_error_reg_i_2;
  wire n_6_wr_error_reg_i_3;
  wire n_6_wr_error_reg_i_7;
  wire n_72_fifo_ram_reg_0;
  wire n_72_fifo_ram_reg_1;
  wire n_73_fifo_ram_reg_0;
  wire n_73_fifo_ram_reg_1;
  wire n_74_fifo_ram_reg_0;
  wire n_74_fifo_ram_reg_1;
  wire n_75_fifo_ram_reg_0;
  wire n_75_fifo_ram_reg_1;
  wire \n_7_rd_ptr_reg_rep[3]_i_1 ;
  wire \n_7_rd_ptr_reg_rep[7]_i_1 ;
  wire \n_7_rd_ptr_reg_rep[9]_i_2 ;
  wire n_7_wr_error_reg_i_2;
  wire n_7_wr_error_reg_i_3;
  wire n_7_wr_error_reg_i_7;
  wire [0:0]p_0_in;
  wire p_0_in6_in;
  wire [11:0]ptr_diff_rd_dom_comb0_out;
  wire ram_out_rd_error;
  wire rd_en;
  wire rd_en0;
  wire [11:0]rd_ptr_reg;
  wire [10:0]rd_ptr_sample;
  wire rd_to_wr_req;
  wire req_rd_dom_1;
  wire req_rd_dom_2;
  wire req_rd_dom_3;
  wire req_wr_dom_1;
  wire req_wr_dom_2;
  wire req_wr_dom_3;
  wire rst;
  wire rst_rd_1;
  wire rst_rd_2;
  wire rst_wr_1;
  wire rst_wr_2;
  wire valid1_in;
  wire vid_io_in_ce;
  wire vid_io_in_clk;
  wire wr_error;
  wire [11:0]wr_ptr_rd_dom;
  wire [9:0]wr_ptr_reg;
  wire [11:10]wr_ptr_reg__0;
  wire [11:0]wr_ptr_sample;
  wire wr_to_rd_req;
  wire NLW_fifo_ram_reg_0_CASCADEOUTA_UNCONNECTED;
  wire NLW_fifo_ram_reg_0_CASCADEOUTB_UNCONNECTED;
  wire NLW_fifo_ram_reg_0_DBITERR_UNCONNECTED;
  wire NLW_fifo_ram_reg_0_INJECTDBITERR_UNCONNECTED;
  wire NLW_fifo_ram_reg_0_INJECTSBITERR_UNCONNECTED;
  wire NLW_fifo_ram_reg_0_SBITERR_UNCONNECTED;
  wire [31:0]NLW_fifo_ram_reg_0_DOADO_UNCONNECTED;
  wire [3:0]NLW_fifo_ram_reg_0_DOPADOP_UNCONNECTED;
  wire [7:0]NLW_fifo_ram_reg_0_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_fifo_ram_reg_0_RDADDRECC_UNCONNECTED;
  wire NLW_fifo_ram_reg_1_CASCADEOUTA_UNCONNECTED;
  wire NLW_fifo_ram_reg_1_CASCADEOUTB_UNCONNECTED;
  wire NLW_fifo_ram_reg_1_DBITERR_UNCONNECTED;
  wire NLW_fifo_ram_reg_1_INJECTDBITERR_UNCONNECTED;
  wire NLW_fifo_ram_reg_1_INJECTSBITERR_UNCONNECTED;
  wire NLW_fifo_ram_reg_1_SBITERR_UNCONNECTED;
  wire [31:0]NLW_fifo_ram_reg_1_DOADO_UNCONNECTED;
  wire [3:0]NLW_fifo_ram_reg_1_DOPADOP_UNCONNECTED;
  wire [7:0]NLW_fifo_ram_reg_1_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_fifo_ram_reg_1_RDADDRECC_UNCONNECTED;
  wire [15:0]NLW_fifo_ram_reg_2_DOADO_UNCONNECTED;
  wire [15:11]NLW_fifo_ram_reg_2_DOBDO_UNCONNECTED;
  wire [1:0]NLW_fifo_ram_reg_2_DOPADOP_UNCONNECTED;
  wire [1:0]NLW_fifo_ram_reg_2_DOPBDOP_UNCONNECTED;
  wire [3:3]\NLW_ptr_diff_rd_dom_reg[9]_i_1_CO_UNCONNECTED ;
  wire [3:2]\NLW_rd_ptr_reg[9]_i_2_CARRY4_CO_UNCONNECTED ;
  wire [3:3]\NLW_rd_ptr_reg[9]_i_2_CARRY4_DI_UNCONNECTED ;
  wire [3:3]\NLW_rd_ptr_reg_rep[9]_i_2_CO_UNCONNECTED ;
  wire [3:2]NLW_wr_error_reg_i_2_CO_UNCONNECTED;
  wire [3:3]NLW_wr_error_reg_i_2_O_UNCONNECTED;
  wire [3:2]\NLW_wr_ptr_reg[9]_i_2_CARRY4_CO_UNCONNECTED ;
  wire [3:3]\NLW_wr_ptr_reg[9]_i_2_CARRY4_DI_UNCONNECTED ;

(* ASYNC_REG *) 
   (* KEEP = "yes" *) 
   FDRE ack_rd_dom_1_reg
       (.C(aclk),
        .CE(1'b1),
        .D(req_wr_dom_3),
        .Q(ack_rd_dom_1),
        .R(rst_rd_2));
(* ASYNC_REG *) 
   (* KEEP = "yes" *) 
   FDRE ack_rd_dom_2_reg
       (.C(aclk),
        .CE(1'b1),
        .D(ack_rd_dom_1),
        .Q(ack_rd_dom_2),
        .R(rst_rd_2));
(* ASYNC_REG *) 
   (* KEEP = "yes" *) 
   FDRE ack_rd_dom_3_reg
       (.C(aclk),
        .CE(1'b1),
        .D(ack_rd_dom_2),
        .Q(ack_rd_dom_3),
        .R(rst_rd_2));
(* ASYNC_REG *) 
   (* KEEP = "yes" *) 
   FDRE ack_wr_dom_1_reg
       (.C(vid_io_in_clk),
        .CE(1'b1),
        .D(req_rd_dom_3),
        .Q(ack_wr_dom_1),
        .R(rst_wr_2));
(* ASYNC_REG *) 
   (* KEEP = "yes" *) 
   FDRE ack_wr_dom_2_reg
       (.C(vid_io_in_clk),
        .CE(1'b1),
        .D(ack_wr_dom_1),
        .Q(ack_wr_dom_2),
        .R(rst_wr_2));
(* ASYNC_REG *) 
   (* KEEP = "yes" *) 
   FDRE ack_wr_dom_3_reg
       (.C(vid_io_in_clk),
        .CE(1'b1),
        .D(ack_wr_dom_2),
        .Q(ack_wr_dom_3),
        .R(rst_wr_2));
LUT3 #(
    .INIT(8'hA8)) 
     empty_i_1
       (.I0(empty_comb),
        .I1(fifo_empty),
        .I2(rd_en),
        .O(empty0));
FDSE empty_reg
       (.C(aclk),
        .CE(1'b1),
        .D(empty0),
        .Q(fifo_empty),
        .S(rst_rd_2));
(* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
   (* RTL_RAM_BITS = "84992" *) 
   (* RTL_RAM_NAME = "fifo_ram" *) 
   (* bram_addr_begin = "0" *) 
   (* bram_addr_end = "1023" *) 
   (* bram_slice_begin = "0" *) 
   (* bram_slice_end = "35" *) 
   RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(36),
    .READ_WIDTH_B(36),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("NO_CHANGE"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(36),
    .WRITE_WIDTH_B(36)) 
     fifo_ram_reg_0
       (.ADDRARDADDR({1'b1,wr_ptr_reg,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,\n_0_rd_ptr_reg_rep[9] ,\n_0_rd_ptr_reg_rep[8] ,\n_0_rd_ptr_reg_rep[7] ,\n_0_rd_ptr_reg_rep[6] ,\n_0_rd_ptr_reg_rep[5] ,\n_0_rd_ptr_reg_rep[4] ,\n_0_rd_ptr_reg_rep[3] ,\n_0_rd_ptr_reg_rep[2] ,\n_0_rd_ptr_reg_rep[1] ,\n_0_rd_ptr_reg_rep[0] ,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(NLW_fifo_ram_reg_0_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_fifo_ram_reg_0_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(vid_io_in_clk),
        .CLKBWRCLK(aclk),
        .DBITERR(NLW_fifo_ram_reg_0_DBITERR_UNCONNECTED),
        .DIADI(din[31:0]),
        .DIBDI({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP(din[35:32]),
        .DIPBDIP({1'b1,1'b1,1'b1,1'b1}),
        .DOADO(NLW_fifo_ram_reg_0_DOADO_UNCONNECTED[31:0]),
        .DOBDO({n_36_fifo_ram_reg_0,n_37_fifo_ram_reg_0,n_38_fifo_ram_reg_0,n_39_fifo_ram_reg_0,n_40_fifo_ram_reg_0,n_41_fifo_ram_reg_0,n_42_fifo_ram_reg_0,n_43_fifo_ram_reg_0,n_44_fifo_ram_reg_0,n_45_fifo_ram_reg_0,n_46_fifo_ram_reg_0,n_47_fifo_ram_reg_0,n_48_fifo_ram_reg_0,n_49_fifo_ram_reg_0,n_50_fifo_ram_reg_0,n_51_fifo_ram_reg_0,n_52_fifo_ram_reg_0,n_53_fifo_ram_reg_0,n_54_fifo_ram_reg_0,n_55_fifo_ram_reg_0,n_56_fifo_ram_reg_0,n_57_fifo_ram_reg_0,n_58_fifo_ram_reg_0,n_59_fifo_ram_reg_0,n_60_fifo_ram_reg_0,n_61_fifo_ram_reg_0,n_62_fifo_ram_reg_0,n_63_fifo_ram_reg_0,n_64_fifo_ram_reg_0,n_65_fifo_ram_reg_0,n_66_fifo_ram_reg_0,n_67_fifo_ram_reg_0}),
        .DOPADOP(NLW_fifo_ram_reg_0_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP({n_72_fifo_ram_reg_0,n_73_fifo_ram_reg_0,n_74_fifo_ram_reg_0,n_75_fifo_ram_reg_0}),
        .ECCPARITY(NLW_fifo_ram_reg_0_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(idf_de),
        .ENBWREN(n_0_fifo_ram_reg_0_i_1),
        .INJECTDBITERR(NLW_fifo_ram_reg_0_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_fifo_ram_reg_0_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_fifo_ram_reg_0_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(rst_rd_2),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_fifo_ram_reg_0_SBITERR_UNCONNECTED),
        .WEA({vid_io_in_ce,vid_io_in_ce,vid_io_in_ce,vid_io_in_ce}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
LUT3 #(
    .INIT(8'hF8)) 
     fifo_ram_reg_0_i_1
       (.I0(aclken),
        .I1(rd_en),
        .I2(rst_rd_2),
        .O(n_0_fifo_ram_reg_0_i_1));
(* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
   (* RTL_RAM_BITS = "84992" *) 
   (* RTL_RAM_NAME = "fifo_ram" *) 
   (* bram_addr_begin = "0" *) 
   (* bram_addr_end = "1023" *) 
   (* bram_slice_begin = "36" *) 
   (* bram_slice_end = "71" *) 
   RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(36),
    .READ_WIDTH_B(36),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("NO_CHANGE"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(36),
    .WRITE_WIDTH_B(36)) 
     fifo_ram_reg_1
       (.ADDRARDADDR({1'b1,wr_ptr_reg,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,\n_0_rd_ptr_reg_rep[9] ,\n_0_rd_ptr_reg_rep[8] ,\n_0_rd_ptr_reg_rep[7] ,\n_0_rd_ptr_reg_rep[6] ,\n_0_rd_ptr_reg_rep[5] ,\n_0_rd_ptr_reg_rep[4] ,\n_0_rd_ptr_reg_rep[3] ,\n_0_rd_ptr_reg_rep[2] ,\n_0_rd_ptr_reg_rep[1] ,\n_0_rd_ptr_reg_rep[0] ,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(NLW_fifo_ram_reg_1_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_fifo_ram_reg_1_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(vid_io_in_clk),
        .CLKBWRCLK(aclk),
        .DBITERR(NLW_fifo_ram_reg_1_DBITERR_UNCONNECTED),
        .DIADI(din[67:36]),
        .DIBDI({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP(din[71:68]),
        .DIPBDIP({1'b1,1'b1,1'b1,1'b1}),
        .DOADO(NLW_fifo_ram_reg_1_DOADO_UNCONNECTED[31:0]),
        .DOBDO({n_36_fifo_ram_reg_1,n_37_fifo_ram_reg_1,n_38_fifo_ram_reg_1,n_39_fifo_ram_reg_1,n_40_fifo_ram_reg_1,n_41_fifo_ram_reg_1,n_42_fifo_ram_reg_1,n_43_fifo_ram_reg_1,n_44_fifo_ram_reg_1,n_45_fifo_ram_reg_1,n_46_fifo_ram_reg_1,n_47_fifo_ram_reg_1,n_48_fifo_ram_reg_1,n_49_fifo_ram_reg_1,n_50_fifo_ram_reg_1,n_51_fifo_ram_reg_1,n_52_fifo_ram_reg_1,n_53_fifo_ram_reg_1,n_54_fifo_ram_reg_1,n_55_fifo_ram_reg_1,n_56_fifo_ram_reg_1,n_57_fifo_ram_reg_1,n_58_fifo_ram_reg_1,n_59_fifo_ram_reg_1,n_60_fifo_ram_reg_1,n_61_fifo_ram_reg_1,n_62_fifo_ram_reg_1,n_63_fifo_ram_reg_1,n_64_fifo_ram_reg_1,n_65_fifo_ram_reg_1,n_66_fifo_ram_reg_1,n_67_fifo_ram_reg_1}),
        .DOPADOP(NLW_fifo_ram_reg_1_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP({n_72_fifo_ram_reg_1,n_73_fifo_ram_reg_1,n_74_fifo_ram_reg_1,n_75_fifo_ram_reg_1}),
        .ECCPARITY(NLW_fifo_ram_reg_1_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(idf_de),
        .ENBWREN(n_0_fifo_ram_reg_0_i_1),
        .INJECTDBITERR(NLW_fifo_ram_reg_1_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_fifo_ram_reg_1_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_fifo_ram_reg_1_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(rst_rd_2),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_fifo_ram_reg_1_SBITERR_UNCONNECTED),
        .WEA({vid_io_in_ce,vid_io_in_ce,vid_io_in_ce,vid_io_in_ce}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
(* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
   (* RTL_RAM_BITS = "84992" *) 
   (* RTL_RAM_NAME = "fifo_ram" *) 
   (* bram_addr_begin = "0" *) 
   (* bram_addr_end = "1023" *) 
   (* bram_slice_begin = "36" *) 
   (* bram_slice_end = "53" *) 
   RAMB18E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .INIT_A(18'h00000),
    .INIT_B(18'h00000),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(18),
    .READ_WIDTH_B(18),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(18'h00000),
    .SRVAL_B(18'h00000),
    .WRITE_MODE_A("NO_CHANGE"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(18),
    .WRITE_WIDTH_B(18)) 
     fifo_ram_reg_2
       (.ADDRARDADDR({wr_ptr_reg,1'b1,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({\n_0_rd_ptr_reg_rep[9] ,\n_0_rd_ptr_reg_rep[8] ,\n_0_rd_ptr_reg_rep[7] ,\n_0_rd_ptr_reg_rep[6] ,\n_0_rd_ptr_reg_rep[5] ,\n_0_rd_ptr_reg_rep[4] ,\n_0_rd_ptr_reg_rep[3] ,\n_0_rd_ptr_reg_rep[2] ,\n_0_rd_ptr_reg_rep[1] ,\n_0_rd_ptr_reg_rep[0] ,1'b1,1'b1,1'b1,1'b1}),
        .CLKARDCLK(vid_io_in_clk),
        .CLKBWRCLK(aclk),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,din[82:72]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0}),
        .DOADO(NLW_fifo_ram_reg_2_DOADO_UNCONNECTED[15:0]),
        .DOBDO({NLW_fifo_ram_reg_2_DOBDO_UNCONNECTED[15:11],dout0_out,fifo_eol,n_24_fifo_ram_reg_2,n_25_fifo_ram_reg_2,n_26_fifo_ram_reg_2,n_27_fifo_ram_reg_2,n_28_fifo_ram_reg_2,n_29_fifo_ram_reg_2,n_30_fifo_ram_reg_2,n_31_fifo_ram_reg_2}),
        .DOPADOP(NLW_fifo_ram_reg_2_DOPADOP_UNCONNECTED[1:0]),
        .DOPBDOP(NLW_fifo_ram_reg_2_DOPBDOP_UNCONNECTED[1:0]),
        .ENARDEN(idf_de),
        .ENBWREN(n_0_fifo_ram_reg_0_i_1),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(rst_rd_2),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .WEA({vid_io_in_ce,vid_io_in_ce}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0}));
FDRE full_reg
       (.C(vid_io_in_clk),
        .CE(1'b1),
        .D(full_comb),
        .Q(fifo_full),
        .R(rst_wr_2));
LUT2 #(
    .INIT(4'h9)) 
     \ptr_diff_rd_dom[3]_i_2 
       (.I0(wr_ptr_rd_dom[3]),
        .I1(rd_ptr_reg[3]),
        .O(\n_0_ptr_diff_rd_dom[3]_i_2 ));
LUT2 #(
    .INIT(4'h9)) 
     \ptr_diff_rd_dom[3]_i_3 
       (.I0(wr_ptr_rd_dom[2]),
        .I1(rd_ptr_reg[2]),
        .O(\n_0_ptr_diff_rd_dom[3]_i_3 ));
LUT2 #(
    .INIT(4'h9)) 
     \ptr_diff_rd_dom[3]_i_4 
       (.I0(wr_ptr_rd_dom[1]),
        .I1(rd_ptr_reg[1]),
        .O(\n_0_ptr_diff_rd_dom[3]_i_4 ));
LUT2 #(
    .INIT(4'h9)) 
     \ptr_diff_rd_dom[3]_i_5 
       (.I0(wr_ptr_rd_dom[0]),
        .I1(rd_ptr_reg[0]),
        .O(\n_0_ptr_diff_rd_dom[3]_i_5 ));
LUT2 #(
    .INIT(4'h9)) 
     \ptr_diff_rd_dom[7]_i_2 
       (.I0(wr_ptr_rd_dom[7]),
        .I1(rd_ptr_reg[7]),
        .O(\n_0_ptr_diff_rd_dom[7]_i_2 ));
LUT2 #(
    .INIT(4'h9)) 
     \ptr_diff_rd_dom[7]_i_3 
       (.I0(wr_ptr_rd_dom[6]),
        .I1(rd_ptr_reg[6]),
        .O(\n_0_ptr_diff_rd_dom[7]_i_3 ));
LUT2 #(
    .INIT(4'h9)) 
     \ptr_diff_rd_dom[7]_i_4 
       (.I0(wr_ptr_rd_dom[5]),
        .I1(rd_ptr_reg[5]),
        .O(\n_0_ptr_diff_rd_dom[7]_i_4 ));
LUT2 #(
    .INIT(4'h9)) 
     \ptr_diff_rd_dom[7]_i_5 
       (.I0(wr_ptr_rd_dom[4]),
        .I1(rd_ptr_reg[4]),
        .O(\n_0_ptr_diff_rd_dom[7]_i_5 ));
LUT2 #(
    .INIT(4'h9)) 
     \ptr_diff_rd_dom[9]_i_2 
       (.I0(wr_ptr_rd_dom[11]),
        .I1(rd_ptr_reg[11]),
        .O(\n_0_ptr_diff_rd_dom[9]_i_2 ));
LUT2 #(
    .INIT(4'h9)) 
     \ptr_diff_rd_dom[9]_i_3 
       (.I0(wr_ptr_rd_dom[10]),
        .I1(rd_ptr_reg[10]),
        .O(\n_0_ptr_diff_rd_dom[9]_i_3 ));
LUT2 #(
    .INIT(4'h9)) 
     \ptr_diff_rd_dom[9]_i_4 
       (.I0(wr_ptr_rd_dom[9]),
        .I1(rd_ptr_reg[9]),
        .O(\n_0_ptr_diff_rd_dom[9]_i_4 ));
LUT2 #(
    .INIT(4'h9)) 
     \ptr_diff_rd_dom[9]_i_5 
       (.I0(wr_ptr_rd_dom[8]),
        .I1(rd_ptr_reg[8]),
        .O(\n_0_ptr_diff_rd_dom[9]_i_5 ));
FDRE \ptr_diff_rd_dom_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(ptr_diff_rd_dom_comb0_out[2]),
        .Q(level_rd[2]),
        .R(rst_rd_2));
FDRE \ptr_diff_rd_dom_reg[3] 
       (.C(aclk),
        .CE(1'b1),
        .D(ptr_diff_rd_dom_comb0_out[3]),
        .Q(level_rd[3]),
        .R(rst_rd_2));
CARRY4 \ptr_diff_rd_dom_reg[3]_i_1 
       (.CI(1'b0),
        .CO({\n_0_ptr_diff_rd_dom_reg[3]_i_1 ,\n_1_ptr_diff_rd_dom_reg[3]_i_1 ,\n_2_ptr_diff_rd_dom_reg[3]_i_1 ,\n_3_ptr_diff_rd_dom_reg[3]_i_1 }),
        .CYINIT(1'b1),
        .DI(wr_ptr_rd_dom[3:0]),
        .O(ptr_diff_rd_dom_comb0_out[3:0]),
        .S({\n_0_ptr_diff_rd_dom[3]_i_2 ,\n_0_ptr_diff_rd_dom[3]_i_3 ,\n_0_ptr_diff_rd_dom[3]_i_4 ,\n_0_ptr_diff_rd_dom[3]_i_5 }));
FDRE \ptr_diff_rd_dom_reg[4] 
       (.C(aclk),
        .CE(1'b1),
        .D(ptr_diff_rd_dom_comb0_out[4]),
        .Q(level_rd[4]),
        .R(rst_rd_2));
FDRE \ptr_diff_rd_dom_reg[5] 
       (.C(aclk),
        .CE(1'b1),
        .D(ptr_diff_rd_dom_comb0_out[5]),
        .Q(level_rd[5]),
        .R(rst_rd_2));
FDRE \ptr_diff_rd_dom_reg[6] 
       (.C(aclk),
        .CE(1'b1),
        .D(ptr_diff_rd_dom_comb0_out[6]),
        .Q(level_rd[6]),
        .R(rst_rd_2));
FDRE \ptr_diff_rd_dom_reg[7] 
       (.C(aclk),
        .CE(1'b1),
        .D(ptr_diff_rd_dom_comb0_out[7]),
        .Q(level_rd[7]),
        .R(rst_rd_2));
CARRY4 \ptr_diff_rd_dom_reg[7]_i_1 
       (.CI(\n_0_ptr_diff_rd_dom_reg[3]_i_1 ),
        .CO({\n_0_ptr_diff_rd_dom_reg[7]_i_1 ,\n_1_ptr_diff_rd_dom_reg[7]_i_1 ,\n_2_ptr_diff_rd_dom_reg[7]_i_1 ,\n_3_ptr_diff_rd_dom_reg[7]_i_1 }),
        .CYINIT(1'b0),
        .DI(wr_ptr_rd_dom[7:4]),
        .O(ptr_diff_rd_dom_comb0_out[7:4]),
        .S({\n_0_ptr_diff_rd_dom[7]_i_2 ,\n_0_ptr_diff_rd_dom[7]_i_3 ,\n_0_ptr_diff_rd_dom[7]_i_4 ,\n_0_ptr_diff_rd_dom[7]_i_5 }));
FDRE \ptr_diff_rd_dom_reg[8] 
       (.C(aclk),
        .CE(1'b1),
        .D(ptr_diff_rd_dom_comb0_out[8]),
        .Q(level_rd[8]),
        .R(rst_rd_2));
FDRE \ptr_diff_rd_dom_reg[9] 
       (.C(aclk),
        .CE(1'b1),
        .D(ptr_diff_rd_dom_comb0_out[9]),
        .Q(level_rd[9]),
        .R(rst_rd_2));
CARRY4 \ptr_diff_rd_dom_reg[9]_i_1 
       (.CI(\n_0_ptr_diff_rd_dom_reg[7]_i_1 ),
        .CO({\NLW_ptr_diff_rd_dom_reg[9]_i_1_CO_UNCONNECTED [3],\n_1_ptr_diff_rd_dom_reg[9]_i_1 ,\n_2_ptr_diff_rd_dom_reg[9]_i_1 ,\n_3_ptr_diff_rd_dom_reg[9]_i_1 }),
        .CYINIT(1'b0),
        .DI({1'b0,wr_ptr_rd_dom[10:8]}),
        .O(ptr_diff_rd_dom_comb0_out[11:8]),
        .S({\n_0_ptr_diff_rd_dom[9]_i_2 ,\n_0_ptr_diff_rd_dom[9]_i_3 ,\n_0_ptr_diff_rd_dom[9]_i_4 ,\n_0_ptr_diff_rd_dom[9]_i_5 }));
LUT5 #(
    .INIT(32'hFFBF0080)) 
     ram_out_rd_error_i_1
       (.I0(empty_comb),
        .I1(rd_en),
        .I2(aclken),
        .I3(rst_rd_2),
        .I4(ram_out_rd_error),
        .O(n_0_ram_out_rd_error_i_1));
FDRE ram_out_rd_error_reg
       (.C(aclk),
        .CE(1'b1),
        .D(n_0_ram_out_rd_error_i_1),
        .Q(ram_out_rd_error),
        .R(1'b0));
LUT5 #(
    .INIT(32'hBAAA0000)) 
     \rd_data[0]_i_1 
       (.I0(first_sof_reg),
        .I1(dout0_out[1]),
        .I2(p_0_in6_in),
        .I3(dout0_out[0]),
        .I4(n_67_fifo_ram_reg_0),
        .O(D[0]));
LUT5 #(
    .INIT(32'hBAAA0000)) 
     \rd_data[10]_i_1 
       (.I0(first_sof_reg),
        .I1(dout0_out[1]),
        .I2(p_0_in6_in),
        .I3(dout0_out[0]),
        .I4(n_57_fifo_ram_reg_0),
        .O(D[10]));
LUT5 #(
    .INIT(32'hBAAA0000)) 
     \rd_data[11]_i_1 
       (.I0(first_sof_reg),
        .I1(dout0_out[1]),
        .I2(p_0_in6_in),
        .I3(dout0_out[0]),
        .I4(n_56_fifo_ram_reg_0),
        .O(D[11]));
LUT5 #(
    .INIT(32'hBAAA0000)) 
     \rd_data[12]_i_1 
       (.I0(first_sof_reg),
        .I1(dout0_out[1]),
        .I2(p_0_in6_in),
        .I3(dout0_out[0]),
        .I4(n_55_fifo_ram_reg_0),
        .O(D[12]));
LUT5 #(
    .INIT(32'hBAAA0000)) 
     \rd_data[13]_i_1 
       (.I0(first_sof_reg),
        .I1(dout0_out[1]),
        .I2(p_0_in6_in),
        .I3(dout0_out[0]),
        .I4(n_54_fifo_ram_reg_0),
        .O(D[13]));
LUT5 #(
    .INIT(32'hBAAA0000)) 
     \rd_data[14]_i_1 
       (.I0(first_sof_reg),
        .I1(dout0_out[1]),
        .I2(p_0_in6_in),
        .I3(dout0_out[0]),
        .I4(n_53_fifo_ram_reg_0),
        .O(D[14]));
LUT5 #(
    .INIT(32'hBAAA0000)) 
     \rd_data[15]_i_1 
       (.I0(first_sof_reg),
        .I1(dout0_out[1]),
        .I2(p_0_in6_in),
        .I3(dout0_out[0]),
        .I4(n_52_fifo_ram_reg_0),
        .O(D[15]));
LUT5 #(
    .INIT(32'hBAAA0000)) 
     \rd_data[16]_i_1 
       (.I0(first_sof_reg),
        .I1(dout0_out[1]),
        .I2(p_0_in6_in),
        .I3(dout0_out[0]),
        .I4(n_51_fifo_ram_reg_0),
        .O(D[16]));
LUT5 #(
    .INIT(32'hBAAA0000)) 
     \rd_data[17]_i_1 
       (.I0(first_sof_reg),
        .I1(dout0_out[1]),
        .I2(p_0_in6_in),
        .I3(dout0_out[0]),
        .I4(n_50_fifo_ram_reg_0),
        .O(D[17]));
LUT5 #(
    .INIT(32'hBAAA0000)) 
     \rd_data[18]_i_1 
       (.I0(first_sof_reg),
        .I1(dout0_out[1]),
        .I2(p_0_in6_in),
        .I3(dout0_out[0]),
        .I4(n_49_fifo_ram_reg_0),
        .O(D[18]));
LUT5 #(
    .INIT(32'hBAAA0000)) 
     \rd_data[19]_i_1 
       (.I0(first_sof_reg),
        .I1(dout0_out[1]),
        .I2(p_0_in6_in),
        .I3(dout0_out[0]),
        .I4(n_48_fifo_ram_reg_0),
        .O(D[19]));
LUT5 #(
    .INIT(32'hBAAA0000)) 
     \rd_data[1]_i_1 
       (.I0(first_sof_reg),
        .I1(dout0_out[1]),
        .I2(p_0_in6_in),
        .I3(dout0_out[0]),
        .I4(n_66_fifo_ram_reg_0),
        .O(D[1]));
LUT5 #(
    .INIT(32'hBAAA0000)) 
     \rd_data[20]_i_1 
       (.I0(first_sof_reg),
        .I1(dout0_out[1]),
        .I2(p_0_in6_in),
        .I3(dout0_out[0]),
        .I4(n_47_fifo_ram_reg_0),
        .O(D[20]));
LUT5 #(
    .INIT(32'hBAAA0000)) 
     \rd_data[21]_i_1 
       (.I0(first_sof_reg),
        .I1(dout0_out[1]),
        .I2(p_0_in6_in),
        .I3(dout0_out[0]),
        .I4(n_46_fifo_ram_reg_0),
        .O(D[21]));
LUT5 #(
    .INIT(32'hBAAA0000)) 
     \rd_data[22]_i_1 
       (.I0(first_sof_reg),
        .I1(dout0_out[1]),
        .I2(p_0_in6_in),
        .I3(dout0_out[0]),
        .I4(n_45_fifo_ram_reg_0),
        .O(D[22]));
LUT5 #(
    .INIT(32'hBAAA0000)) 
     \rd_data[23]_i_1 
       (.I0(first_sof_reg),
        .I1(dout0_out[1]),
        .I2(p_0_in6_in),
        .I3(dout0_out[0]),
        .I4(n_44_fifo_ram_reg_0),
        .O(D[23]));
LUT5 #(
    .INIT(32'hBAAA0000)) 
     \rd_data[24]_i_1 
       (.I0(first_sof_reg),
        .I1(dout0_out[1]),
        .I2(p_0_in6_in),
        .I3(dout0_out[0]),
        .I4(n_43_fifo_ram_reg_0),
        .O(D[24]));
LUT5 #(
    .INIT(32'hBAAA0000)) 
     \rd_data[25]_i_1 
       (.I0(first_sof_reg),
        .I1(dout0_out[1]),
        .I2(p_0_in6_in),
        .I3(dout0_out[0]),
        .I4(n_42_fifo_ram_reg_0),
        .O(D[25]));
LUT5 #(
    .INIT(32'hBAAA0000)) 
     \rd_data[26]_i_1 
       (.I0(first_sof_reg),
        .I1(dout0_out[1]),
        .I2(p_0_in6_in),
        .I3(dout0_out[0]),
        .I4(n_41_fifo_ram_reg_0),
        .O(D[26]));
LUT5 #(
    .INIT(32'hBAAA0000)) 
     \rd_data[27]_i_1 
       (.I0(first_sof_reg),
        .I1(dout0_out[1]),
        .I2(p_0_in6_in),
        .I3(dout0_out[0]),
        .I4(n_40_fifo_ram_reg_0),
        .O(D[27]));
LUT5 #(
    .INIT(32'hBAAA0000)) 
     \rd_data[28]_i_1 
       (.I0(first_sof_reg),
        .I1(dout0_out[1]),
        .I2(p_0_in6_in),
        .I3(dout0_out[0]),
        .I4(n_39_fifo_ram_reg_0),
        .O(D[28]));
LUT5 #(
    .INIT(32'hBAAA0000)) 
     \rd_data[29]_i_1 
       (.I0(first_sof_reg),
        .I1(dout0_out[1]),
        .I2(p_0_in6_in),
        .I3(dout0_out[0]),
        .I4(n_38_fifo_ram_reg_0),
        .O(D[29]));
LUT5 #(
    .INIT(32'hBAAA0000)) 
     \rd_data[2]_i_1 
       (.I0(first_sof_reg),
        .I1(dout0_out[1]),
        .I2(p_0_in6_in),
        .I3(dout0_out[0]),
        .I4(n_65_fifo_ram_reg_0),
        .O(D[2]));
LUT5 #(
    .INIT(32'hBAAA0000)) 
     \rd_data[30]_i_1 
       (.I0(first_sof_reg),
        .I1(dout0_out[1]),
        .I2(p_0_in6_in),
        .I3(dout0_out[0]),
        .I4(n_37_fifo_ram_reg_0),
        .O(D[30]));
LUT5 #(
    .INIT(32'hBAAA0000)) 
     \rd_data[31]_i_1 
       (.I0(first_sof_reg),
        .I1(dout0_out[1]),
        .I2(p_0_in6_in),
        .I3(dout0_out[0]),
        .I4(n_36_fifo_ram_reg_0),
        .O(D[31]));
LUT5 #(
    .INIT(32'hBAAA0000)) 
     \rd_data[32]_i_1 
       (.I0(first_sof_reg),
        .I1(dout0_out[1]),
        .I2(p_0_in6_in),
        .I3(dout0_out[0]),
        .I4(n_75_fifo_ram_reg_0),
        .O(D[32]));
LUT5 #(
    .INIT(32'hBAAA0000)) 
     \rd_data[33]_i_1 
       (.I0(first_sof_reg),
        .I1(dout0_out[1]),
        .I2(p_0_in6_in),
        .I3(dout0_out[0]),
        .I4(n_74_fifo_ram_reg_0),
        .O(D[33]));
LUT5 #(
    .INIT(32'hBAAA0000)) 
     \rd_data[34]_i_1 
       (.I0(first_sof_reg),
        .I1(dout0_out[1]),
        .I2(p_0_in6_in),
        .I3(dout0_out[0]),
        .I4(n_73_fifo_ram_reg_0),
        .O(D[34]));
LUT5 #(
    .INIT(32'hBAAA0000)) 
     \rd_data[35]_i_1 
       (.I0(first_sof_reg),
        .I1(dout0_out[1]),
        .I2(p_0_in6_in),
        .I3(dout0_out[0]),
        .I4(n_72_fifo_ram_reg_0),
        .O(D[35]));
LUT5 #(
    .INIT(32'hBAAA0000)) 
     \rd_data[36]_i_1 
       (.I0(first_sof_reg),
        .I1(dout0_out[1]),
        .I2(p_0_in6_in),
        .I3(dout0_out[0]),
        .I4(n_67_fifo_ram_reg_1),
        .O(D[36]));
LUT5 #(
    .INIT(32'hBAAA0000)) 
     \rd_data[37]_i_1 
       (.I0(first_sof_reg),
        .I1(dout0_out[1]),
        .I2(p_0_in6_in),
        .I3(dout0_out[0]),
        .I4(n_66_fifo_ram_reg_1),
        .O(D[37]));
LUT5 #(
    .INIT(32'hBAAA0000)) 
     \rd_data[38]_i_1 
       (.I0(first_sof_reg),
        .I1(dout0_out[1]),
        .I2(p_0_in6_in),
        .I3(dout0_out[0]),
        .I4(n_65_fifo_ram_reg_1),
        .O(D[38]));
LUT5 #(
    .INIT(32'hBAAA0000)) 
     \rd_data[39]_i_1 
       (.I0(first_sof_reg),
        .I1(dout0_out[1]),
        .I2(p_0_in6_in),
        .I3(dout0_out[0]),
        .I4(n_64_fifo_ram_reg_1),
        .O(D[39]));
LUT5 #(
    .INIT(32'hBAAA0000)) 
     \rd_data[3]_i_1 
       (.I0(first_sof_reg),
        .I1(dout0_out[1]),
        .I2(p_0_in6_in),
        .I3(dout0_out[0]),
        .I4(n_64_fifo_ram_reg_0),
        .O(D[3]));
LUT5 #(
    .INIT(32'hBAAA0000)) 
     \rd_data[40]_i_1 
       (.I0(first_sof_reg),
        .I1(dout0_out[1]),
        .I2(p_0_in6_in),
        .I3(dout0_out[0]),
        .I4(n_63_fifo_ram_reg_1),
        .O(D[40]));
LUT5 #(
    .INIT(32'hBAAA0000)) 
     \rd_data[41]_i_1 
       (.I0(first_sof_reg),
        .I1(dout0_out[1]),
        .I2(p_0_in6_in),
        .I3(dout0_out[0]),
        .I4(n_62_fifo_ram_reg_1),
        .O(D[41]));
LUT5 #(
    .INIT(32'hBAAA0000)) 
     \rd_data[42]_i_1 
       (.I0(first_sof_reg),
        .I1(dout0_out[1]),
        .I2(p_0_in6_in),
        .I3(dout0_out[0]),
        .I4(n_61_fifo_ram_reg_1),
        .O(D[42]));
LUT5 #(
    .INIT(32'hBAAA0000)) 
     \rd_data[43]_i_1 
       (.I0(first_sof_reg),
        .I1(dout0_out[1]),
        .I2(p_0_in6_in),
        .I3(dout0_out[0]),
        .I4(n_60_fifo_ram_reg_1),
        .O(D[43]));
LUT5 #(
    .INIT(32'hBAAA0000)) 
     \rd_data[44]_i_1 
       (.I0(first_sof_reg),
        .I1(dout0_out[1]),
        .I2(p_0_in6_in),
        .I3(dout0_out[0]),
        .I4(n_59_fifo_ram_reg_1),
        .O(D[44]));
LUT5 #(
    .INIT(32'hBAAA0000)) 
     \rd_data[45]_i_1 
       (.I0(first_sof_reg),
        .I1(dout0_out[1]),
        .I2(p_0_in6_in),
        .I3(dout0_out[0]),
        .I4(n_58_fifo_ram_reg_1),
        .O(D[45]));
LUT5 #(
    .INIT(32'hBAAA0000)) 
     \rd_data[46]_i_1 
       (.I0(first_sof_reg),
        .I1(dout0_out[1]),
        .I2(p_0_in6_in),
        .I3(dout0_out[0]),
        .I4(n_57_fifo_ram_reg_1),
        .O(D[46]));
LUT5 #(
    .INIT(32'hBAAA0000)) 
     \rd_data[47]_i_1 
       (.I0(first_sof_reg),
        .I1(dout0_out[1]),
        .I2(p_0_in6_in),
        .I3(dout0_out[0]),
        .I4(n_56_fifo_ram_reg_1),
        .O(D[47]));
LUT5 #(
    .INIT(32'hBAAA0000)) 
     \rd_data[48]_i_1 
       (.I0(first_sof_reg),
        .I1(dout0_out[1]),
        .I2(p_0_in6_in),
        .I3(dout0_out[0]),
        .I4(n_55_fifo_ram_reg_1),
        .O(D[48]));
LUT5 #(
    .INIT(32'hBAAA0000)) 
     \rd_data[49]_i_1 
       (.I0(first_sof_reg),
        .I1(dout0_out[1]),
        .I2(p_0_in6_in),
        .I3(dout0_out[0]),
        .I4(n_54_fifo_ram_reg_1),
        .O(D[49]));
(* SOFT_HLUTNM = "soft_lutpair0" *) 
   LUT5 #(
    .INIT(32'hBAAA0000)) 
     \rd_data[4]_i_1 
       (.I0(first_sof_reg),
        .I1(dout0_out[1]),
        .I2(p_0_in6_in),
        .I3(dout0_out[0]),
        .I4(n_63_fifo_ram_reg_0),
        .O(D[4]));
LUT5 #(
    .INIT(32'hBAAA0000)) 
     \rd_data[50]_i_1 
       (.I0(first_sof_reg),
        .I1(dout0_out[1]),
        .I2(p_0_in6_in),
        .I3(dout0_out[0]),
        .I4(n_53_fifo_ram_reg_1),
        .O(D[50]));
LUT5 #(
    .INIT(32'hBAAA0000)) 
     \rd_data[51]_i_1 
       (.I0(first_sof_reg),
        .I1(dout0_out[1]),
        .I2(p_0_in6_in),
        .I3(dout0_out[0]),
        .I4(n_52_fifo_ram_reg_1),
        .O(D[51]));
LUT5 #(
    .INIT(32'hBAAA0000)) 
     \rd_data[52]_i_1 
       (.I0(first_sof_reg),
        .I1(dout0_out[1]),
        .I2(p_0_in6_in),
        .I3(dout0_out[0]),
        .I4(n_51_fifo_ram_reg_1),
        .O(D[52]));
LUT5 #(
    .INIT(32'hBAAA0000)) 
     \rd_data[53]_i_1 
       (.I0(first_sof_reg),
        .I1(dout0_out[1]),
        .I2(p_0_in6_in),
        .I3(dout0_out[0]),
        .I4(n_50_fifo_ram_reg_1),
        .O(D[53]));
LUT5 #(
    .INIT(32'hBAAA0000)) 
     \rd_data[54]_i_1 
       (.I0(first_sof_reg),
        .I1(dout0_out[1]),
        .I2(p_0_in6_in),
        .I3(dout0_out[0]),
        .I4(n_49_fifo_ram_reg_1),
        .O(D[54]));
LUT5 #(
    .INIT(32'hBAAA0000)) 
     \rd_data[55]_i_1 
       (.I0(first_sof_reg),
        .I1(dout0_out[1]),
        .I2(p_0_in6_in),
        .I3(dout0_out[0]),
        .I4(n_48_fifo_ram_reg_1),
        .O(D[55]));
LUT5 #(
    .INIT(32'hBAAA0000)) 
     \rd_data[56]_i_1 
       (.I0(first_sof_reg),
        .I1(dout0_out[1]),
        .I2(p_0_in6_in),
        .I3(dout0_out[0]),
        .I4(n_47_fifo_ram_reg_1),
        .O(D[56]));
LUT5 #(
    .INIT(32'hBAAA0000)) 
     \rd_data[57]_i_1 
       (.I0(first_sof_reg),
        .I1(dout0_out[1]),
        .I2(p_0_in6_in),
        .I3(dout0_out[0]),
        .I4(n_46_fifo_ram_reg_1),
        .O(D[57]));
LUT5 #(
    .INIT(32'hBAAA0000)) 
     \rd_data[58]_i_1 
       (.I0(first_sof_reg),
        .I1(dout0_out[1]),
        .I2(p_0_in6_in),
        .I3(dout0_out[0]),
        .I4(n_45_fifo_ram_reg_1),
        .O(D[58]));
LUT5 #(
    .INIT(32'hBAAA0000)) 
     \rd_data[59]_i_1 
       (.I0(first_sof_reg),
        .I1(dout0_out[1]),
        .I2(p_0_in6_in),
        .I3(dout0_out[0]),
        .I4(n_44_fifo_ram_reg_1),
        .O(D[59]));
(* SOFT_HLUTNM = "soft_lutpair1" *) 
   LUT5 #(
    .INIT(32'hBAAA0000)) 
     \rd_data[5]_i_1 
       (.I0(first_sof_reg),
        .I1(dout0_out[1]),
        .I2(p_0_in6_in),
        .I3(dout0_out[0]),
        .I4(n_62_fifo_ram_reg_0),
        .O(D[5]));
LUT5 #(
    .INIT(32'hBAAA0000)) 
     \rd_data[60]_i_1 
       (.I0(first_sof_reg),
        .I1(dout0_out[1]),
        .I2(p_0_in6_in),
        .I3(dout0_out[0]),
        .I4(n_43_fifo_ram_reg_1),
        .O(D[60]));
LUT5 #(
    .INIT(32'hBAAA0000)) 
     \rd_data[61]_i_1 
       (.I0(first_sof_reg),
        .I1(dout0_out[1]),
        .I2(p_0_in6_in),
        .I3(dout0_out[0]),
        .I4(n_42_fifo_ram_reg_1),
        .O(D[61]));
LUT5 #(
    .INIT(32'hBAAA0000)) 
     \rd_data[62]_i_1 
       (.I0(first_sof_reg),
        .I1(dout0_out[1]),
        .I2(p_0_in6_in),
        .I3(dout0_out[0]),
        .I4(n_41_fifo_ram_reg_1),
        .O(D[62]));
LUT5 #(
    .INIT(32'hBAAA0000)) 
     \rd_data[63]_i_1 
       (.I0(first_sof_reg),
        .I1(dout0_out[1]),
        .I2(p_0_in6_in),
        .I3(dout0_out[0]),
        .I4(n_40_fifo_ram_reg_1),
        .O(D[63]));
LUT5 #(
    .INIT(32'hBAAA0000)) 
     \rd_data[64]_i_1 
       (.I0(first_sof_reg),
        .I1(dout0_out[1]),
        .I2(p_0_in6_in),
        .I3(dout0_out[0]),
        .I4(n_39_fifo_ram_reg_1),
        .O(D[64]));
LUT5 #(
    .INIT(32'hBAAA0000)) 
     \rd_data[65]_i_1 
       (.I0(first_sof_reg),
        .I1(dout0_out[1]),
        .I2(p_0_in6_in),
        .I3(dout0_out[0]),
        .I4(n_38_fifo_ram_reg_1),
        .O(D[65]));
LUT5 #(
    .INIT(32'hBAAA0000)) 
     \rd_data[66]_i_1 
       (.I0(first_sof_reg),
        .I1(dout0_out[1]),
        .I2(p_0_in6_in),
        .I3(dout0_out[0]),
        .I4(n_37_fifo_ram_reg_1),
        .O(D[66]));
LUT5 #(
    .INIT(32'hBAAA0000)) 
     \rd_data[67]_i_1 
       (.I0(first_sof_reg),
        .I1(dout0_out[1]),
        .I2(p_0_in6_in),
        .I3(dout0_out[0]),
        .I4(n_36_fifo_ram_reg_1),
        .O(D[67]));
LUT5 #(
    .INIT(32'hBAAA0000)) 
     \rd_data[68]_i_1 
       (.I0(first_sof_reg),
        .I1(dout0_out[1]),
        .I2(p_0_in6_in),
        .I3(dout0_out[0]),
        .I4(n_75_fifo_ram_reg_1),
        .O(D[68]));
LUT5 #(
    .INIT(32'hBAAA0000)) 
     \rd_data[69]_i_1 
       (.I0(first_sof_reg),
        .I1(dout0_out[1]),
        .I2(p_0_in6_in),
        .I3(dout0_out[0]),
        .I4(n_74_fifo_ram_reg_1),
        .O(D[69]));
(* SOFT_HLUTNM = "soft_lutpair2" *) 
   LUT5 #(
    .INIT(32'hBAAA0000)) 
     \rd_data[6]_i_1 
       (.I0(first_sof_reg),
        .I1(dout0_out[1]),
        .I2(p_0_in6_in),
        .I3(dout0_out[0]),
        .I4(n_61_fifo_ram_reg_0),
        .O(D[6]));
LUT5 #(
    .INIT(32'hBAAA0000)) 
     \rd_data[70]_i_1 
       (.I0(first_sof_reg),
        .I1(dout0_out[1]),
        .I2(p_0_in6_in),
        .I3(dout0_out[0]),
        .I4(n_73_fifo_ram_reg_1),
        .O(D[70]));
LUT5 #(
    .INIT(32'hBAAA0000)) 
     \rd_data[71]_i_1 
       (.I0(first_sof_reg),
        .I1(dout0_out[1]),
        .I2(p_0_in6_in),
        .I3(dout0_out[0]),
        .I4(n_72_fifo_ram_reg_1),
        .O(D[71]));
LUT5 #(
    .INIT(32'hBAAA0000)) 
     \rd_data[72]_i_1 
       (.I0(first_sof_reg),
        .I1(dout0_out[1]),
        .I2(p_0_in6_in),
        .I3(dout0_out[0]),
        .I4(n_31_fifo_ram_reg_2),
        .O(D[72]));
LUT5 #(
    .INIT(32'hBAAA0000)) 
     \rd_data[73]_i_1 
       (.I0(first_sof_reg),
        .I1(dout0_out[1]),
        .I2(p_0_in6_in),
        .I3(dout0_out[0]),
        .I4(n_30_fifo_ram_reg_2),
        .O(D[73]));
LUT5 #(
    .INIT(32'hBAAA0000)) 
     \rd_data[74]_i_1 
       (.I0(first_sof_reg),
        .I1(dout0_out[1]),
        .I2(p_0_in6_in),
        .I3(dout0_out[0]),
        .I4(n_29_fifo_ram_reg_2),
        .O(D[74]));
LUT5 #(
    .INIT(32'hBAAA0000)) 
     \rd_data[75]_i_1 
       (.I0(first_sof_reg),
        .I1(dout0_out[1]),
        .I2(p_0_in6_in),
        .I3(dout0_out[0]),
        .I4(n_28_fifo_ram_reg_2),
        .O(D[75]));
LUT5 #(
    .INIT(32'hBAAA0000)) 
     \rd_data[76]_i_1 
       (.I0(first_sof_reg),
        .I1(dout0_out[1]),
        .I2(p_0_in6_in),
        .I3(dout0_out[0]),
        .I4(n_27_fifo_ram_reg_2),
        .O(D[76]));
LUT5 #(
    .INIT(32'hBAAA0000)) 
     \rd_data[77]_i_1 
       (.I0(first_sof_reg),
        .I1(dout0_out[1]),
        .I2(p_0_in6_in),
        .I3(dout0_out[0]),
        .I4(n_26_fifo_ram_reg_2),
        .O(D[77]));
LUT5 #(
    .INIT(32'hBAAA0000)) 
     \rd_data[78]_i_1 
       (.I0(first_sof_reg),
        .I1(dout0_out[1]),
        .I2(p_0_in6_in),
        .I3(dout0_out[0]),
        .I4(n_25_fifo_ram_reg_2),
        .O(D[78]));
LUT2 #(
    .INIT(4'hB)) 
     \rd_data[79]_i_1 
       (.I0(rst),
        .I1(aresetn),
        .O(O1));
LUT6 #(
    .INIT(64'hA2AA2222A2AAA2AA)) 
     \rd_data[79]_i_2 
       (.I0(aclken),
        .I1(full_frame),
        .I2(m_axis_video_tready),
        .I3(I1),
        .I4(fifo_eol),
        .I5(fifo_empty),
        .O(E));
LUT5 #(
    .INIT(32'hBAAA0000)) 
     \rd_data[79]_i_3 
       (.I0(first_sof_reg),
        .I1(dout0_out[1]),
        .I2(p_0_in6_in),
        .I3(dout0_out[0]),
        .I4(n_24_fifo_ram_reg_2),
        .O(D[79]));
(* SOFT_HLUTNM = "soft_lutpair1" *) 
   LUT4 #(
    .INIT(16'hFF08)) 
     \rd_data[79]_i_4 
       (.I0(dout0_out[0]),
        .I1(p_0_in6_in),
        .I2(dout0_out[1]),
        .I3(first_sof_reg),
        .O(full_frame));
LUT5 #(
    .INIT(32'hBAAA0000)) 
     \rd_data[7]_i_1 
       (.I0(first_sof_reg),
        .I1(dout0_out[1]),
        .I2(p_0_in6_in),
        .I3(dout0_out[0]),
        .I4(n_60_fifo_ram_reg_0),
        .O(D[7]));
LUT5 #(
    .INIT(32'hBAAA0000)) 
     \rd_data[80]_i_1 
       (.I0(first_sof_reg),
        .I1(dout0_out[1]),
        .I2(p_0_in6_in),
        .I3(dout0_out[0]),
        .I4(fifo_eol),
        .O(D[80]));
(* SOFT_HLUTNM = "soft_lutpair0" *) 
   LUT4 #(
    .INIT(16'hBA00)) 
     \rd_data[81]_i_1 
       (.I0(first_sof_reg),
        .I1(dout0_out[1]),
        .I2(p_0_in6_in),
        .I3(dout0_out[0]),
        .O(D[81]));
(* SOFT_HLUTNM = "soft_lutpair2" *) 
   LUT2 #(
    .INIT(4'h8)) 
     \rd_data[82]_i_1 
       (.I0(first_sof_reg),
        .I1(dout0_out[1]),
        .O(D[82]));
LUT5 #(
    .INIT(32'hBAAA0000)) 
     \rd_data[8]_i_1 
       (.I0(first_sof_reg),
        .I1(dout0_out[1]),
        .I2(p_0_in6_in),
        .I3(dout0_out[0]),
        .I4(n_59_fifo_ram_reg_0),
        .O(D[8]));
LUT5 #(
    .INIT(32'hBAAA0000)) 
     \rd_data[9]_i_1 
       (.I0(first_sof_reg),
        .I1(dout0_out[1]),
        .I2(p_0_in6_in),
        .I3(dout0_out[0]),
        .I4(n_58_fifo_ram_reg_0),
        .O(D[9]));
LUT4 #(
    .INIT(16'hBF80)) 
     rd_error_i_1
       (.I0(ram_out_rd_error),
        .I1(aclken),
        .I2(rd_en),
        .I3(O2),
        .O(n_0_rd_error_i_1));
LUT6 #(
    .INIT(64'hBBBBBBBBBBB8B8B8)) 
     rd_error_i_2
       (.I0(rd_en0),
        .I1(full_frame),
        .I2(fifo_full),
        .I3(level_rd[2]),
        .I4(level_rd[3]),
        .I5(n_0_rd_error_i_3),
        .O(rd_en));
LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
     rd_error_i_3
       (.I0(level_rd[8]),
        .I1(level_rd[9]),
        .I2(level_rd[4]),
        .I3(level_rd[7]),
        .I4(level_rd[6]),
        .I5(level_rd[5]),
        .O(n_0_rd_error_i_3));
FDRE rd_error_reg
       (.C(aclk),
        .CE(1'b1),
        .D(n_0_rd_error_i_1),
        .Q(O2),
        .R(rst_rd_2));
LUT1 #(
    .INIT(2'h1)) 
     \rd_ptr[0]_i_2 
       (.I0(rd_ptr_reg[0]),
        .O(p_0_in));
FDRE #(
    .INIT(1'b0)) 
     \rd_ptr_reg[0] 
       (.C(aclk),
        .CE(\n_0_rd_ptr_rep[9]_i_1 ),
        .D(\n_0_rd_ptr_reg[0]_i_1 ),
        .Q(rd_ptr_reg[0]),
        .R(rst_rd_2));
FDRE #(
    .INIT(1'b0)) 
     \rd_ptr_reg[10] 
       (.C(aclk),
        .CE(\n_0_rd_ptr_rep[9]_i_1 ),
        .D(\n_0_rd_ptr_reg[10]_i_1 ),
        .Q(rd_ptr_reg[10]),
        .R(rst_rd_2));
FDRE #(
    .INIT(1'b0)) 
     \rd_ptr_reg[11] 
       (.C(aclk),
        .CE(\n_0_rd_ptr_rep[9]_i_1 ),
        .D(\n_0_rd_ptr_reg[11]_i_1 ),
        .Q(rd_ptr_reg[11]),
        .R(rst_rd_2));
FDRE #(
    .INIT(1'b0)) 
     \rd_ptr_reg[1] 
       (.C(aclk),
        .CE(\n_0_rd_ptr_rep[9]_i_1 ),
        .D(\n_0_rd_ptr_reg[1]_i_1 ),
        .Q(rd_ptr_reg[1]),
        .R(rst_rd_2));
(* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
   (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
   CARRY4 \rd_ptr_reg[1]_i_2_CARRY4 
       (.CI(1'b0),
        .CO({\n_0_rd_ptr_reg[4]_i_2 ,\n_0_rd_ptr_reg[3]_i_2 ,\n_0_rd_ptr_reg[2]_i_2 ,\n_0_rd_ptr_reg[1]_i_2 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\n_0_rd_ptr_reg[3]_i_1 ,\n_0_rd_ptr_reg[2]_i_1 ,\n_0_rd_ptr_reg[1]_i_1 ,\n_0_rd_ptr_reg[0]_i_1 }),
        .S({rd_ptr_reg[3:1],p_0_in}));
FDRE #(
    .INIT(1'b0)) 
     \rd_ptr_reg[2] 
       (.C(aclk),
        .CE(\n_0_rd_ptr_rep[9]_i_1 ),
        .D(\n_0_rd_ptr_reg[2]_i_1 ),
        .Q(rd_ptr_reg[2]),
        .R(rst_rd_2));
FDRE #(
    .INIT(1'b0)) 
     \rd_ptr_reg[3] 
       (.C(aclk),
        .CE(\n_0_rd_ptr_rep[9]_i_1 ),
        .D(\n_0_rd_ptr_reg[3]_i_1 ),
        .Q(rd_ptr_reg[3]),
        .R(rst_rd_2));
FDRE #(
    .INIT(1'b0)) 
     \rd_ptr_reg[4] 
       (.C(aclk),
        .CE(\n_0_rd_ptr_rep[9]_i_1 ),
        .D(\n_0_rd_ptr_reg[4]_i_1 ),
        .Q(rd_ptr_reg[4]),
        .R(rst_rd_2));
FDRE #(
    .INIT(1'b0)) 
     \rd_ptr_reg[5] 
       (.C(aclk),
        .CE(\n_0_rd_ptr_rep[9]_i_1 ),
        .D(\n_0_rd_ptr_reg[5]_i_1 ),
        .Q(rd_ptr_reg[5]),
        .R(rst_rd_2));
(* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
   (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
   CARRY4 \rd_ptr_reg[5]_i_2_CARRY4 
       (.CI(\n_0_rd_ptr_reg[4]_i_2 ),
        .CO({\n_0_rd_ptr_reg[8]_i_2 ,\n_0_rd_ptr_reg[7]_i_2 ,\n_0_rd_ptr_reg[6]_i_2 ,\n_0_rd_ptr_reg[5]_i_2 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\n_0_rd_ptr_reg[7]_i_1 ,\n_0_rd_ptr_reg[6]_i_1 ,\n_0_rd_ptr_reg[5]_i_1 ,\n_0_rd_ptr_reg[4]_i_1 }),
        .S(rd_ptr_reg[7:4]));
FDRE #(
    .INIT(1'b0)) 
     \rd_ptr_reg[6] 
       (.C(aclk),
        .CE(\n_0_rd_ptr_rep[9]_i_1 ),
        .D(\n_0_rd_ptr_reg[6]_i_1 ),
        .Q(rd_ptr_reg[6]),
        .R(rst_rd_2));
FDRE #(
    .INIT(1'b0)) 
     \rd_ptr_reg[7] 
       (.C(aclk),
        .CE(\n_0_rd_ptr_rep[9]_i_1 ),
        .D(\n_0_rd_ptr_reg[7]_i_1 ),
        .Q(rd_ptr_reg[7]),
        .R(rst_rd_2));
FDRE #(
    .INIT(1'b0)) 
     \rd_ptr_reg[8] 
       (.C(aclk),
        .CE(\n_0_rd_ptr_rep[9]_i_1 ),
        .D(\n_0_rd_ptr_reg[8]_i_1 ),
        .Q(rd_ptr_reg[8]),
        .R(rst_rd_2));
FDRE #(
    .INIT(1'b0)) 
     \rd_ptr_reg[9] 
       (.C(aclk),
        .CE(\n_0_rd_ptr_rep[9]_i_1 ),
        .D(\n_0_rd_ptr_reg[9]_i_1 ),
        .Q(rd_ptr_reg[9]),
        .R(rst_rd_2));
(* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
   (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
   CARRY4 \rd_ptr_reg[9]_i_2_CARRY4 
       (.CI(\n_0_rd_ptr_reg[8]_i_2 ),
        .CO({\NLW_rd_ptr_reg[9]_i_2_CARRY4_CO_UNCONNECTED [3:2],\n_0_rd_ptr_reg[10]_i_2 ,\n_0_rd_ptr_reg[9]_i_2 }),
        .CYINIT(1'b0),
        .DI({\NLW_rd_ptr_reg[9]_i_2_CARRY4_DI_UNCONNECTED [3],1'b0,1'b0,1'b0}),
        .O({\n_0_rd_ptr_reg[11]_i_1 ,\n_0_rd_ptr_reg[10]_i_1 ,\n_0_rd_ptr_reg[9]_i_1 ,\n_0_rd_ptr_reg[8]_i_1 }),
        .S(rd_ptr_reg[11:8]));
(* equivalent_register_removal = "no" *) 
   FDRE #(
    .INIT(1'b0)) 
     \rd_ptr_reg_rep[0] 
       (.C(aclk),
        .CE(\n_0_rd_ptr_rep[9]_i_1 ),
        .D(\n_7_rd_ptr_reg_rep[3]_i_1 ),
        .Q(\n_0_rd_ptr_reg_rep[0] ),
        .R(rst_rd_2));
(* equivalent_register_removal = "no" *) 
   FDRE #(
    .INIT(1'b0)) 
     \rd_ptr_reg_rep[1] 
       (.C(aclk),
        .CE(\n_0_rd_ptr_rep[9]_i_1 ),
        .D(\n_6_rd_ptr_reg_rep[3]_i_1 ),
        .Q(\n_0_rd_ptr_reg_rep[1] ),
        .R(rst_rd_2));
(* equivalent_register_removal = "no" *) 
   FDRE #(
    .INIT(1'b0)) 
     \rd_ptr_reg_rep[2] 
       (.C(aclk),
        .CE(\n_0_rd_ptr_rep[9]_i_1 ),
        .D(\n_5_rd_ptr_reg_rep[3]_i_1 ),
        .Q(\n_0_rd_ptr_reg_rep[2] ),
        .R(rst_rd_2));
(* equivalent_register_removal = "no" *) 
   FDRE #(
    .INIT(1'b0)) 
     \rd_ptr_reg_rep[3] 
       (.C(aclk),
        .CE(\n_0_rd_ptr_rep[9]_i_1 ),
        .D(\n_4_rd_ptr_reg_rep[3]_i_1 ),
        .Q(\n_0_rd_ptr_reg_rep[3] ),
        .R(rst_rd_2));
CARRY4 \rd_ptr_reg_rep[3]_i_1 
       (.CI(1'b0),
        .CO({\n_0_rd_ptr_reg_rep[3]_i_1 ,\n_1_rd_ptr_reg_rep[3]_i_1 ,\n_2_rd_ptr_reg_rep[3]_i_1 ,\n_3_rd_ptr_reg_rep[3]_i_1 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,rd_ptr_reg[0]}),
        .O({\n_4_rd_ptr_reg_rep[3]_i_1 ,\n_5_rd_ptr_reg_rep[3]_i_1 ,\n_6_rd_ptr_reg_rep[3]_i_1 ,\n_7_rd_ptr_reg_rep[3]_i_1 }),
        .S({\n_0_rd_ptr_rep[3]_i_2 ,\n_0_rd_ptr_rep[3]_i_3 ,\n_0_rd_ptr_rep[3]_i_4 ,\n_0_rd_ptr_rep[3]_i_5 }));
(* equivalent_register_removal = "no" *) 
   FDRE #(
    .INIT(1'b0)) 
     \rd_ptr_reg_rep[4] 
       (.C(aclk),
        .CE(\n_0_rd_ptr_rep[9]_i_1 ),
        .D(\n_7_rd_ptr_reg_rep[7]_i_1 ),
        .Q(\n_0_rd_ptr_reg_rep[4] ),
        .R(rst_rd_2));
(* equivalent_register_removal = "no" *) 
   FDRE #(
    .INIT(1'b0)) 
     \rd_ptr_reg_rep[5] 
       (.C(aclk),
        .CE(\n_0_rd_ptr_rep[9]_i_1 ),
        .D(\n_6_rd_ptr_reg_rep[7]_i_1 ),
        .Q(\n_0_rd_ptr_reg_rep[5] ),
        .R(rst_rd_2));
(* equivalent_register_removal = "no" *) 
   FDRE #(
    .INIT(1'b0)) 
     \rd_ptr_reg_rep[6] 
       (.C(aclk),
        .CE(\n_0_rd_ptr_rep[9]_i_1 ),
        .D(\n_5_rd_ptr_reg_rep[7]_i_1 ),
        .Q(\n_0_rd_ptr_reg_rep[6] ),
        .R(rst_rd_2));
(* equivalent_register_removal = "no" *) 
   FDRE #(
    .INIT(1'b0)) 
     \rd_ptr_reg_rep[7] 
       (.C(aclk),
        .CE(\n_0_rd_ptr_rep[9]_i_1 ),
        .D(\n_4_rd_ptr_reg_rep[7]_i_1 ),
        .Q(\n_0_rd_ptr_reg_rep[7] ),
        .R(rst_rd_2));
CARRY4 \rd_ptr_reg_rep[7]_i_1 
       (.CI(\n_0_rd_ptr_reg_rep[3]_i_1 ),
        .CO({\n_0_rd_ptr_reg_rep[7]_i_1 ,\n_1_rd_ptr_reg_rep[7]_i_1 ,\n_2_rd_ptr_reg_rep[7]_i_1 ,\n_3_rd_ptr_reg_rep[7]_i_1 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\n_4_rd_ptr_reg_rep[7]_i_1 ,\n_5_rd_ptr_reg_rep[7]_i_1 ,\n_6_rd_ptr_reg_rep[7]_i_1 ,\n_7_rd_ptr_reg_rep[7]_i_1 }),
        .S({\n_0_rd_ptr_rep[7]_i_2 ,\n_0_rd_ptr_rep[7]_i_3 ,\n_0_rd_ptr_rep[7]_i_4 ,\n_0_rd_ptr_rep[7]_i_5 }));
(* equivalent_register_removal = "no" *) 
   FDRE #(
    .INIT(1'b0)) 
     \rd_ptr_reg_rep[8] 
       (.C(aclk),
        .CE(\n_0_rd_ptr_rep[9]_i_1 ),
        .D(\n_7_rd_ptr_reg_rep[9]_i_2 ),
        .Q(\n_0_rd_ptr_reg_rep[8] ),
        .R(rst_rd_2));
(* equivalent_register_removal = "no" *) 
   FDRE #(
    .INIT(1'b0)) 
     \rd_ptr_reg_rep[9] 
       (.C(aclk),
        .CE(\n_0_rd_ptr_rep[9]_i_1 ),
        .D(\n_6_rd_ptr_reg_rep[9]_i_2 ),
        .Q(\n_0_rd_ptr_reg_rep[9] ),
        .R(rst_rd_2));
CARRY4 \rd_ptr_reg_rep[9]_i_2 
       (.CI(\n_0_rd_ptr_reg_rep[7]_i_1 ),
        .CO({\NLW_rd_ptr_reg_rep[9]_i_2_CO_UNCONNECTED [3],\n_1_rd_ptr_reg_rep[9]_i_2 ,\n_2_rd_ptr_reg_rep[9]_i_2 ,\n_3_rd_ptr_reg_rep[9]_i_2 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\n_4_rd_ptr_reg_rep[9]_i_2 ,\n_5_rd_ptr_reg_rep[9]_i_2 ,\n_6_rd_ptr_reg_rep[9]_i_2 ,\n_7_rd_ptr_reg_rep[9]_i_2 }),
        .S({\n_0_rd_ptr_rep[9]_i_4 ,\n_0_rd_ptr_rep[9]_i_5 ,\n_0_rd_ptr_rep[9]_i_6 ,\n_0_rd_ptr_rep[9]_i_7 }));
LUT1 #(
    .INIT(2'h2)) 
     \rd_ptr_rep[3]_i_2 
       (.I0(rd_ptr_reg[3]),
        .O(\n_0_rd_ptr_rep[3]_i_2 ));
LUT1 #(
    .INIT(2'h2)) 
     \rd_ptr_rep[3]_i_3 
       (.I0(rd_ptr_reg[2]),
        .O(\n_0_rd_ptr_rep[3]_i_3 ));
LUT1 #(
    .INIT(2'h2)) 
     \rd_ptr_rep[3]_i_4 
       (.I0(rd_ptr_reg[1]),
        .O(\n_0_rd_ptr_rep[3]_i_4 ));
LUT1 #(
    .INIT(2'h1)) 
     \rd_ptr_rep[3]_i_5 
       (.I0(rd_ptr_reg[0]),
        .O(\n_0_rd_ptr_rep[3]_i_5 ));
LUT1 #(
    .INIT(2'h2)) 
     \rd_ptr_rep[7]_i_2 
       (.I0(rd_ptr_reg[7]),
        .O(\n_0_rd_ptr_rep[7]_i_2 ));
LUT1 #(
    .INIT(2'h2)) 
     \rd_ptr_rep[7]_i_3 
       (.I0(rd_ptr_reg[6]),
        .O(\n_0_rd_ptr_rep[7]_i_3 ));
LUT1 #(
    .INIT(2'h2)) 
     \rd_ptr_rep[7]_i_4 
       (.I0(rd_ptr_reg[5]),
        .O(\n_0_rd_ptr_rep[7]_i_4 ));
LUT1 #(
    .INIT(2'h2)) 
     \rd_ptr_rep[7]_i_5 
       (.I0(rd_ptr_reg[4]),
        .O(\n_0_rd_ptr_rep[7]_i_5 ));
LUT3 #(
    .INIT(8'h08)) 
     \rd_ptr_rep[9]_i_1 
       (.I0(rd_en),
        .I1(aclken),
        .I2(empty_comb),
        .O(\n_0_rd_ptr_rep[9]_i_1 ));
LUT6 #(
    .INIT(64'h0000000100000000)) 
     \rd_ptr_rep[9]_i_3 
       (.I0(ptr_diff_rd_dom_comb0_out[11]),
        .I1(ptr_diff_rd_dom_comb0_out[9]),
        .I2(ptr_diff_rd_dom_comb0_out[10]),
        .I3(ptr_diff_rd_dom_comb0_out[7]),
        .I4(ptr_diff_rd_dom_comb0_out[8]),
        .I5(\n_0_rd_ptr_rep[9]_i_8 ),
        .O(empty_comb));
LUT1 #(
    .INIT(2'h2)) 
     \rd_ptr_rep[9]_i_4 
       (.I0(rd_ptr_reg[11]),
        .O(\n_0_rd_ptr_rep[9]_i_4 ));
LUT1 #(
    .INIT(2'h2)) 
     \rd_ptr_rep[9]_i_5 
       (.I0(rd_ptr_reg[10]),
        .O(\n_0_rd_ptr_rep[9]_i_5 ));
LUT1 #(
    .INIT(2'h2)) 
     \rd_ptr_rep[9]_i_6 
       (.I0(rd_ptr_reg[9]),
        .O(\n_0_rd_ptr_rep[9]_i_6 ));
LUT1 #(
    .INIT(2'h2)) 
     \rd_ptr_rep[9]_i_7 
       (.I0(rd_ptr_reg[8]),
        .O(\n_0_rd_ptr_rep[9]_i_7 ));
LUT6 #(
    .INIT(64'h0000000000000001)) 
     \rd_ptr_rep[9]_i_8 
       (.I0(ptr_diff_rd_dom_comb0_out[4]),
        .I1(ptr_diff_rd_dom_comb0_out[6]),
        .I2(ptr_diff_rd_dom_comb0_out[2]),
        .I3(ptr_diff_rd_dom_comb0_out[1]),
        .I4(ptr_diff_rd_dom_comb0_out[5]),
        .I5(ptr_diff_rd_dom_comb0_out[3]),
        .O(\n_0_rd_ptr_rep[9]_i_8 ));
LUT2 #(
    .INIT(4'h6)) 
     \rd_ptr_sample[10]_i_1 
       (.I0(ack_rd_dom_2),
        .I1(ack_rd_dom_3),
        .O(ce_rd_ptr_sample));
FDRE \rd_ptr_sample_reg[0] 
       (.C(aclk),
        .CE(ce_rd_ptr_sample),
        .D(rd_ptr_reg[0]),
        .Q(rd_ptr_sample[0]),
        .R(rst_rd_2));
FDRE \rd_ptr_sample_reg[10] 
       (.C(aclk),
        .CE(ce_rd_ptr_sample),
        .D(rd_ptr_reg[10]),
        .Q(rd_ptr_sample[10]),
        .R(rst_rd_2));
FDRE \rd_ptr_sample_reg[1] 
       (.C(aclk),
        .CE(ce_rd_ptr_sample),
        .D(rd_ptr_reg[1]),
        .Q(rd_ptr_sample[1]),
        .R(rst_rd_2));
FDRE \rd_ptr_sample_reg[2] 
       (.C(aclk),
        .CE(ce_rd_ptr_sample),
        .D(rd_ptr_reg[2]),
        .Q(rd_ptr_sample[2]),
        .R(rst_rd_2));
FDRE \rd_ptr_sample_reg[3] 
       (.C(aclk),
        .CE(ce_rd_ptr_sample),
        .D(rd_ptr_reg[3]),
        .Q(rd_ptr_sample[3]),
        .R(rst_rd_2));
FDRE \rd_ptr_sample_reg[4] 
       (.C(aclk),
        .CE(ce_rd_ptr_sample),
        .D(rd_ptr_reg[4]),
        .Q(rd_ptr_sample[4]),
        .R(rst_rd_2));
FDRE \rd_ptr_sample_reg[5] 
       (.C(aclk),
        .CE(ce_rd_ptr_sample),
        .D(rd_ptr_reg[5]),
        .Q(rd_ptr_sample[5]),
        .R(rst_rd_2));
FDRE \rd_ptr_sample_reg[6] 
       (.C(aclk),
        .CE(ce_rd_ptr_sample),
        .D(rd_ptr_reg[6]),
        .Q(rd_ptr_sample[6]),
        .R(rst_rd_2));
FDRE \rd_ptr_sample_reg[7] 
       (.C(aclk),
        .CE(ce_rd_ptr_sample),
        .D(rd_ptr_reg[7]),
        .Q(rd_ptr_sample[7]),
        .R(rst_rd_2));
FDRE \rd_ptr_sample_reg[8] 
       (.C(aclk),
        .CE(ce_rd_ptr_sample),
        .D(rd_ptr_reg[8]),
        .Q(rd_ptr_sample[8]),
        .R(rst_rd_2));
FDRE \rd_ptr_sample_reg[9] 
       (.C(aclk),
        .CE(ce_rd_ptr_sample),
        .D(rd_ptr_reg[9]),
        .Q(rd_ptr_sample[9]),
        .R(rst_rd_2));
LUT2 #(
    .INIT(4'h6)) 
     \rd_ptr_wr_dom[10]_i_1 
       (.I0(req_wr_dom_2),
        .I1(req_wr_dom_3),
        .O(ce_rd_ptr_wr_dom));
FDRE \rd_ptr_wr_dom_reg[0] 
       (.C(vid_io_in_clk),
        .CE(ce_rd_ptr_wr_dom),
        .D(rd_ptr_sample[0]),
        .Q(\n_0_rd_ptr_wr_dom_reg[0] ),
        .R(rst_wr_2));
FDRE \rd_ptr_wr_dom_reg[10] 
       (.C(vid_io_in_clk),
        .CE(ce_rd_ptr_wr_dom),
        .D(rd_ptr_sample[10]),
        .Q(\n_0_rd_ptr_wr_dom_reg[10] ),
        .R(rst_wr_2));
FDRE \rd_ptr_wr_dom_reg[1] 
       (.C(vid_io_in_clk),
        .CE(ce_rd_ptr_wr_dom),
        .D(rd_ptr_sample[1]),
        .Q(\n_0_rd_ptr_wr_dom_reg[1] ),
        .R(rst_wr_2));
FDRE \rd_ptr_wr_dom_reg[2] 
       (.C(vid_io_in_clk),
        .CE(ce_rd_ptr_wr_dom),
        .D(rd_ptr_sample[2]),
        .Q(\n_0_rd_ptr_wr_dom_reg[2] ),
        .R(rst_wr_2));
FDRE \rd_ptr_wr_dom_reg[3] 
       (.C(vid_io_in_clk),
        .CE(ce_rd_ptr_wr_dom),
        .D(rd_ptr_sample[3]),
        .Q(\n_0_rd_ptr_wr_dom_reg[3] ),
        .R(rst_wr_2));
FDRE \rd_ptr_wr_dom_reg[4] 
       (.C(vid_io_in_clk),
        .CE(ce_rd_ptr_wr_dom),
        .D(rd_ptr_sample[4]),
        .Q(\n_0_rd_ptr_wr_dom_reg[4] ),
        .R(rst_wr_2));
FDRE \rd_ptr_wr_dom_reg[5] 
       (.C(vid_io_in_clk),
        .CE(ce_rd_ptr_wr_dom),
        .D(rd_ptr_sample[5]),
        .Q(\n_0_rd_ptr_wr_dom_reg[5] ),
        .R(rst_wr_2));
FDRE \rd_ptr_wr_dom_reg[6] 
       (.C(vid_io_in_clk),
        .CE(ce_rd_ptr_wr_dom),
        .D(rd_ptr_sample[6]),
        .Q(\n_0_rd_ptr_wr_dom_reg[6] ),
        .R(rst_wr_2));
FDRE \rd_ptr_wr_dom_reg[7] 
       (.C(vid_io_in_clk),
        .CE(ce_rd_ptr_wr_dom),
        .D(rd_ptr_sample[7]),
        .Q(\n_0_rd_ptr_wr_dom_reg[7] ),
        .R(rst_wr_2));
FDRE \rd_ptr_wr_dom_reg[8] 
       (.C(vid_io_in_clk),
        .CE(ce_rd_ptr_wr_dom),
        .D(rd_ptr_sample[8]),
        .Q(\n_0_rd_ptr_wr_dom_reg[8] ),
        .R(rst_wr_2));
FDRE \rd_ptr_wr_dom_reg[9] 
       (.C(vid_io_in_clk),
        .CE(ce_rd_ptr_wr_dom),
        .D(rd_ptr_sample[9]),
        .Q(\n_0_rd_ptr_wr_dom_reg[9] ),
        .R(rst_wr_2));
LUT1 #(
    .INIT(2'h1)) 
     req_rd_dom_1_i_1
       (.I0(ack_wr_dom_3),
        .O(wr_to_rd_req));
(* ASYNC_REG *) 
   (* KEEP = "yes" *) 
   FDRE req_rd_dom_1_reg
       (.C(aclk),
        .CE(1'b1),
        .D(wr_to_rd_req),
        .Q(req_rd_dom_1),
        .R(rst_rd_2));
(* ASYNC_REG *) 
   (* KEEP = "yes" *) 
   FDRE req_rd_dom_2_reg
       (.C(aclk),
        .CE(1'b1),
        .D(req_rd_dom_1),
        .Q(req_rd_dom_2),
        .R(rst_rd_2));
(* ASYNC_REG *) 
   (* KEEP = "yes" *) 
   FDRE req_rd_dom_3_reg
       (.C(aclk),
        .CE(1'b1),
        .D(req_rd_dom_2),
        .Q(req_rd_dom_3),
        .R(rst_rd_2));
LUT1 #(
    .INIT(2'h1)) 
     req_wr_dom_1_i_1
       (.I0(ack_rd_dom_3),
        .O(rd_to_wr_req));
(* ASYNC_REG *) 
   (* KEEP = "yes" *) 
   FDRE req_wr_dom_1_reg
       (.C(vid_io_in_clk),
        .CE(1'b1),
        .D(rd_to_wr_req),
        .Q(req_wr_dom_1),
        .R(rst_wr_2));
(* ASYNC_REG *) 
   (* KEEP = "yes" *) 
   FDRE req_wr_dom_2_reg
       (.C(vid_io_in_clk),
        .CE(1'b1),
        .D(req_wr_dom_1),
        .Q(req_wr_dom_2),
        .R(rst_wr_2));
(* ASYNC_REG *) 
   (* KEEP = "yes" *) 
   FDRE req_wr_dom_3_reg
       (.C(vid_io_in_clk),
        .CE(1'b1),
        .D(req_wr_dom_2),
        .Q(req_wr_dom_3),
        .R(rst_wr_2));
(* ASYNC_REG *) 
   (* KEEP = "yes" *) 
   FDRE rst_rd_1_reg
       (.C(aclk),
        .CE(1'b1),
        .D(O1),
        .Q(rst_rd_1),
        .R(1'b0));
(* ASYNC_REG *) 
   (* KEEP = "yes" *) 
   FDRE rst_rd_2_reg
       (.C(aclk),
        .CE(1'b1),
        .D(rst_rd_1),
        .Q(rst_rd_2),
        .R(1'b0));
(* ASYNC_REG *) 
   (* KEEP = "yes" *) 
   FDRE rst_wr_1_reg
       (.C(vid_io_in_clk),
        .CE(1'b1),
        .D(O1),
        .Q(rst_wr_1),
        .R(1'b0));
(* ASYNC_REG *) 
   (* KEEP = "yes" *) 
   FDRE rst_wr_2_reg
       (.C(vid_io_in_clk),
        .CE(1'b1),
        .D(rst_wr_1),
        .Q(rst_wr_2),
        .R(1'b0));
LUT6 #(
    .INIT(64'h040C0C0C04000000)) 
     valid_i_1
       (.I0(n_0_valid_i_2),
        .I1(aresetn),
        .I2(rst),
        .I3(valid1_in),
        .I4(aclken),
        .I5(I1),
        .O(O3));
(* SOFT_HLUTNM = "soft_lutpair3" *) 
   LUT5 #(
    .INIT(32'hDFDF0FDF)) 
     valid_i_2
       (.I0(I1),
        .I1(m_axis_video_tready),
        .I2(full_frame),
        .I3(rd_en0),
        .I4(O2),
        .O(n_0_valid_i_2));
(* SOFT_HLUTNM = "soft_lutpair3" *) 
   LUT5 #(
    .INIT(32'hEFFFEEFF)) 
     valid_i_3
       (.I0(I1),
        .I1(m_axis_video_tready),
        .I2(O2),
        .I3(full_frame),
        .I4(rd_en0),
        .O(valid1_in));
LUT4 #(
    .INIT(16'hB0BB)) 
     valid_i_4
       (.I0(m_axis_video_tready),
        .I1(I1),
        .I2(fifo_eol),
        .I3(fifo_empty),
        .O(rd_en0));
LUT3 #(
    .INIT(8'hBA)) 
     wr_error_i_1
       (.I0(rst_wr_2),
        .I1(idf_de),
        .I2(vid_io_in_ce),
        .O(n_0_wr_error_i_1));
LUT2 #(
    .INIT(4'h9)) 
     wr_error_i_10
       (.I0(wr_ptr_reg[5]),
        .I1(\n_0_rd_ptr_wr_dom_reg[5] ),
        .O(n_0_wr_error_i_10));
LUT2 #(
    .INIT(4'h9)) 
     wr_error_i_11
       (.I0(wr_ptr_reg[4]),
        .I1(\n_0_rd_ptr_wr_dom_reg[4] ),
        .O(n_0_wr_error_i_11));
LUT2 #(
    .INIT(4'h9)) 
     wr_error_i_12
       (.I0(wr_ptr_reg[3]),
        .I1(\n_0_rd_ptr_wr_dom_reg[3] ),
        .O(n_0_wr_error_i_12));
LUT2 #(
    .INIT(4'h9)) 
     wr_error_i_13
       (.I0(wr_ptr_reg[2]),
        .I1(\n_0_rd_ptr_wr_dom_reg[2] ),
        .O(n_0_wr_error_i_13));
LUT2 #(
    .INIT(4'h9)) 
     wr_error_i_14
       (.I0(wr_ptr_reg[1]),
        .I1(\n_0_rd_ptr_wr_dom_reg[1] ),
        .O(n_0_wr_error_i_14));
LUT2 #(
    .INIT(4'h9)) 
     wr_error_i_15
       (.I0(wr_ptr_reg[0]),
        .I1(\n_0_rd_ptr_wr_dom_reg[0] ),
        .O(n_0_wr_error_i_15));
LUT2 #(
    .INIT(4'h9)) 
     wr_error_i_4
       (.I0(wr_ptr_reg__0[10]),
        .I1(\n_0_rd_ptr_wr_dom_reg[10] ),
        .O(n_0_wr_error_i_4));
LUT2 #(
    .INIT(4'h9)) 
     wr_error_i_5
       (.I0(wr_ptr_reg[9]),
        .I1(\n_0_rd_ptr_wr_dom_reg[9] ),
        .O(n_0_wr_error_i_5));
LUT2 #(
    .INIT(4'h9)) 
     wr_error_i_6
       (.I0(wr_ptr_reg[8]),
        .I1(\n_0_rd_ptr_wr_dom_reg[8] ),
        .O(n_0_wr_error_i_6));
LUT2 #(
    .INIT(4'h9)) 
     wr_error_i_8
       (.I0(wr_ptr_reg[7]),
        .I1(\n_0_rd_ptr_wr_dom_reg[7] ),
        .O(n_0_wr_error_i_8));
LUT2 #(
    .INIT(4'h9)) 
     wr_error_i_9
       (.I0(wr_ptr_reg[6]),
        .I1(\n_0_rd_ptr_wr_dom_reg[6] ),
        .O(n_0_wr_error_i_9));
FDRE wr_error_reg
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(full_comb),
        .Q(wr_error),
        .R(n_0_wr_error_i_1));
CARRY4 wr_error_reg_i_2
       (.CI(n_0_wr_error_reg_i_3),
        .CO({NLW_wr_error_reg_i_2_CO_UNCONNECTED[3:2],n_2_wr_error_reg_i_2,n_3_wr_error_reg_i_2}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,wr_ptr_reg[9:8]}),
        .O({NLW_wr_error_reg_i_2_O_UNCONNECTED[3],full_comb,n_6_wr_error_reg_i_2,n_7_wr_error_reg_i_2}),
        .S({1'b0,n_0_wr_error_i_4,n_0_wr_error_i_5,n_0_wr_error_i_6}));
CARRY4 wr_error_reg_i_3
       (.CI(n_0_wr_error_reg_i_7),
        .CO({n_0_wr_error_reg_i_3,n_1_wr_error_reg_i_3,n_2_wr_error_reg_i_3,n_3_wr_error_reg_i_3}),
        .CYINIT(1'b0),
        .DI(wr_ptr_reg[7:4]),
        .O({n_4_wr_error_reg_i_3,n_5_wr_error_reg_i_3,n_6_wr_error_reg_i_3,n_7_wr_error_reg_i_3}),
        .S({n_0_wr_error_i_8,n_0_wr_error_i_9,n_0_wr_error_i_10,n_0_wr_error_i_11}));
CARRY4 wr_error_reg_i_7
       (.CI(1'b0),
        .CO({n_0_wr_error_reg_i_7,n_1_wr_error_reg_i_7,n_2_wr_error_reg_i_7,n_3_wr_error_reg_i_7}),
        .CYINIT(1'b1),
        .DI(wr_ptr_reg[3:0]),
        .O({n_4_wr_error_reg_i_7,n_5_wr_error_reg_i_7,n_6_wr_error_reg_i_7,n_7_wr_error_reg_i_7}),
        .S({n_0_wr_error_i_12,n_0_wr_error_i_13,n_0_wr_error_i_14,n_0_wr_error_i_15}));
LUT3 #(
    .INIT(8'h40)) 
     \wr_ptr[0]_i_1 
       (.I0(full_comb),
        .I1(vid_io_in_ce),
        .I2(idf_de),
        .O(\n_0_wr_ptr[0]_i_1 ));
LUT1 #(
    .INIT(2'h1)) 
     \wr_ptr[0]_i_3 
       (.I0(wr_ptr_reg[0]),
        .O(\n_0_wr_ptr[0]_i_3 ));
LUT2 #(
    .INIT(4'h6)) 
     \wr_ptr_rd_dom[11]_i_1 
       (.I0(req_rd_dom_2),
        .I1(req_rd_dom_3),
        .O(ce_wr_ptr_rd_dom));
FDRE \wr_ptr_rd_dom_reg[0] 
       (.C(aclk),
        .CE(ce_wr_ptr_rd_dom),
        .D(wr_ptr_sample[0]),
        .Q(wr_ptr_rd_dom[0]),
        .R(rst_rd_2));
FDRE \wr_ptr_rd_dom_reg[10] 
       (.C(aclk),
        .CE(ce_wr_ptr_rd_dom),
        .D(wr_ptr_sample[10]),
        .Q(wr_ptr_rd_dom[10]),
        .R(rst_rd_2));
FDRE \wr_ptr_rd_dom_reg[11] 
       (.C(aclk),
        .CE(ce_wr_ptr_rd_dom),
        .D(wr_ptr_sample[11]),
        .Q(wr_ptr_rd_dom[11]),
        .R(rst_rd_2));
FDRE \wr_ptr_rd_dom_reg[1] 
       (.C(aclk),
        .CE(ce_wr_ptr_rd_dom),
        .D(wr_ptr_sample[1]),
        .Q(wr_ptr_rd_dom[1]),
        .R(rst_rd_2));
FDRE \wr_ptr_rd_dom_reg[2] 
       (.C(aclk),
        .CE(ce_wr_ptr_rd_dom),
        .D(wr_ptr_sample[2]),
        .Q(wr_ptr_rd_dom[2]),
        .R(rst_rd_2));
FDRE \wr_ptr_rd_dom_reg[3] 
       (.C(aclk),
        .CE(ce_wr_ptr_rd_dom),
        .D(wr_ptr_sample[3]),
        .Q(wr_ptr_rd_dom[3]),
        .R(rst_rd_2));
FDRE \wr_ptr_rd_dom_reg[4] 
       (.C(aclk),
        .CE(ce_wr_ptr_rd_dom),
        .D(wr_ptr_sample[4]),
        .Q(wr_ptr_rd_dom[4]),
        .R(rst_rd_2));
FDRE \wr_ptr_rd_dom_reg[5] 
       (.C(aclk),
        .CE(ce_wr_ptr_rd_dom),
        .D(wr_ptr_sample[5]),
        .Q(wr_ptr_rd_dom[5]),
        .R(rst_rd_2));
FDRE \wr_ptr_rd_dom_reg[6] 
       (.C(aclk),
        .CE(ce_wr_ptr_rd_dom),
        .D(wr_ptr_sample[6]),
        .Q(wr_ptr_rd_dom[6]),
        .R(rst_rd_2));
FDRE \wr_ptr_rd_dom_reg[7] 
       (.C(aclk),
        .CE(ce_wr_ptr_rd_dom),
        .D(wr_ptr_sample[7]),
        .Q(wr_ptr_rd_dom[7]),
        .R(rst_rd_2));
FDRE \wr_ptr_rd_dom_reg[8] 
       (.C(aclk),
        .CE(ce_wr_ptr_rd_dom),
        .D(wr_ptr_sample[8]),
        .Q(wr_ptr_rd_dom[8]),
        .R(rst_rd_2));
FDRE \wr_ptr_rd_dom_reg[9] 
       (.C(aclk),
        .CE(ce_wr_ptr_rd_dom),
        .D(wr_ptr_sample[9]),
        .Q(wr_ptr_rd_dom[9]),
        .R(rst_rd_2));
FDSE #(
    .INIT(1'b1)) 
     \wr_ptr_reg[0] 
       (.C(vid_io_in_clk),
        .CE(\n_0_wr_ptr[0]_i_1 ),
        .D(\n_0_wr_ptr_reg[0]_i_2 ),
        .Q(wr_ptr_reg[0]),
        .S(rst_wr_2));
FDRE #(
    .INIT(1'b0)) 
     \wr_ptr_reg[10] 
       (.C(vid_io_in_clk),
        .CE(\n_0_wr_ptr[0]_i_1 ),
        .D(\n_0_wr_ptr_reg[10]_i_1 ),
        .Q(wr_ptr_reg__0[10]),
        .R(rst_wr_2));
FDRE #(
    .INIT(1'b0)) 
     \wr_ptr_reg[11] 
       (.C(vid_io_in_clk),
        .CE(\n_0_wr_ptr[0]_i_1 ),
        .D(\n_0_wr_ptr_reg[11]_i_1 ),
        .Q(wr_ptr_reg__0[11]),
        .R(rst_wr_2));
FDRE #(
    .INIT(1'b0)) 
     \wr_ptr_reg[1] 
       (.C(vid_io_in_clk),
        .CE(\n_0_wr_ptr[0]_i_1 ),
        .D(\n_0_wr_ptr_reg[1]_i_1 ),
        .Q(wr_ptr_reg[1]),
        .R(rst_wr_2));
(* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
   (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
   CARRY4 \wr_ptr_reg[1]_i_2_CARRY4 
       (.CI(1'b0),
        .CO({\n_0_wr_ptr_reg[4]_i_2 ,\n_0_wr_ptr_reg[3]_i_2 ,\n_0_wr_ptr_reg[2]_i_2 ,\n_0_wr_ptr_reg[1]_i_2 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\n_0_wr_ptr_reg[3]_i_1 ,\n_0_wr_ptr_reg[2]_i_1 ,\n_0_wr_ptr_reg[1]_i_1 ,\n_0_wr_ptr_reg[0]_i_2 }),
        .S({wr_ptr_reg[3:1],\n_0_wr_ptr[0]_i_3 }));
FDRE #(
    .INIT(1'b0)) 
     \wr_ptr_reg[2] 
       (.C(vid_io_in_clk),
        .CE(\n_0_wr_ptr[0]_i_1 ),
        .D(\n_0_wr_ptr_reg[2]_i_1 ),
        .Q(wr_ptr_reg[2]),
        .R(rst_wr_2));
FDRE #(
    .INIT(1'b0)) 
     \wr_ptr_reg[3] 
       (.C(vid_io_in_clk),
        .CE(\n_0_wr_ptr[0]_i_1 ),
        .D(\n_0_wr_ptr_reg[3]_i_1 ),
        .Q(wr_ptr_reg[3]),
        .R(rst_wr_2));
FDRE #(
    .INIT(1'b0)) 
     \wr_ptr_reg[4] 
       (.C(vid_io_in_clk),
        .CE(\n_0_wr_ptr[0]_i_1 ),
        .D(\n_0_wr_ptr_reg[4]_i_1 ),
        .Q(wr_ptr_reg[4]),
        .R(rst_wr_2));
FDRE #(
    .INIT(1'b0)) 
     \wr_ptr_reg[5] 
       (.C(vid_io_in_clk),
        .CE(\n_0_wr_ptr[0]_i_1 ),
        .D(\n_0_wr_ptr_reg[5]_i_1 ),
        .Q(wr_ptr_reg[5]),
        .R(rst_wr_2));
(* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
   (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
   CARRY4 \wr_ptr_reg[5]_i_2_CARRY4 
       (.CI(\n_0_wr_ptr_reg[4]_i_2 ),
        .CO({\n_0_wr_ptr_reg[8]_i_2 ,\n_0_wr_ptr_reg[7]_i_2 ,\n_0_wr_ptr_reg[6]_i_2 ,\n_0_wr_ptr_reg[5]_i_2 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\n_0_wr_ptr_reg[7]_i_1 ,\n_0_wr_ptr_reg[6]_i_1 ,\n_0_wr_ptr_reg[5]_i_1 ,\n_0_wr_ptr_reg[4]_i_1 }),
        .S(wr_ptr_reg[7:4]));
FDRE #(
    .INIT(1'b0)) 
     \wr_ptr_reg[6] 
       (.C(vid_io_in_clk),
        .CE(\n_0_wr_ptr[0]_i_1 ),
        .D(\n_0_wr_ptr_reg[6]_i_1 ),
        .Q(wr_ptr_reg[6]),
        .R(rst_wr_2));
FDRE #(
    .INIT(1'b0)) 
     \wr_ptr_reg[7] 
       (.C(vid_io_in_clk),
        .CE(\n_0_wr_ptr[0]_i_1 ),
        .D(\n_0_wr_ptr_reg[7]_i_1 ),
        .Q(wr_ptr_reg[7]),
        .R(rst_wr_2));
FDRE #(
    .INIT(1'b0)) 
     \wr_ptr_reg[8] 
       (.C(vid_io_in_clk),
        .CE(\n_0_wr_ptr[0]_i_1 ),
        .D(\n_0_wr_ptr_reg[8]_i_1 ),
        .Q(wr_ptr_reg[8]),
        .R(rst_wr_2));
FDRE #(
    .INIT(1'b0)) 
     \wr_ptr_reg[9] 
       (.C(vid_io_in_clk),
        .CE(\n_0_wr_ptr[0]_i_1 ),
        .D(\n_0_wr_ptr_reg[9]_i_1 ),
        .Q(wr_ptr_reg[9]),
        .R(rst_wr_2));
(* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
   (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
   CARRY4 \wr_ptr_reg[9]_i_2_CARRY4 
       (.CI(\n_0_wr_ptr_reg[8]_i_2 ),
        .CO({\NLW_wr_ptr_reg[9]_i_2_CARRY4_CO_UNCONNECTED [3:2],\n_0_wr_ptr_reg[10]_i_2 ,\n_0_wr_ptr_reg[9]_i_2 }),
        .CYINIT(1'b0),
        .DI({\NLW_wr_ptr_reg[9]_i_2_CARRY4_DI_UNCONNECTED [3],1'b0,1'b0,1'b0}),
        .O({\n_0_wr_ptr_reg[11]_i_1 ,\n_0_wr_ptr_reg[10]_i_1 ,\n_0_wr_ptr_reg[9]_i_1 ,\n_0_wr_ptr_reg[8]_i_1 }),
        .S({wr_ptr_reg__0,wr_ptr_reg[9:8]}));
LUT2 #(
    .INIT(4'h6)) 
     \wr_ptr_sample[11]_i_1 
       (.I0(ack_wr_dom_2),
        .I1(ack_wr_dom_3),
        .O(ce_wr_ptr_sample));
FDRE \wr_ptr_sample_reg[0] 
       (.C(vid_io_in_clk),
        .CE(ce_wr_ptr_sample),
        .D(wr_ptr_reg[0]),
        .Q(wr_ptr_sample[0]),
        .R(rst_wr_2));
FDRE \wr_ptr_sample_reg[10] 
       (.C(vid_io_in_clk),
        .CE(ce_wr_ptr_sample),
        .D(wr_ptr_reg__0[10]),
        .Q(wr_ptr_sample[10]),
        .R(rst_wr_2));
FDRE \wr_ptr_sample_reg[11] 
       (.C(vid_io_in_clk),
        .CE(ce_wr_ptr_sample),
        .D(wr_ptr_reg__0[11]),
        .Q(wr_ptr_sample[11]),
        .R(rst_wr_2));
FDRE \wr_ptr_sample_reg[1] 
       (.C(vid_io_in_clk),
        .CE(ce_wr_ptr_sample),
        .D(wr_ptr_reg[1]),
        .Q(wr_ptr_sample[1]),
        .R(rst_wr_2));
FDRE \wr_ptr_sample_reg[2] 
       (.C(vid_io_in_clk),
        .CE(ce_wr_ptr_sample),
        .D(wr_ptr_reg[2]),
        .Q(wr_ptr_sample[2]),
        .R(rst_wr_2));
FDRE \wr_ptr_sample_reg[3] 
       (.C(vid_io_in_clk),
        .CE(ce_wr_ptr_sample),
        .D(wr_ptr_reg[3]),
        .Q(wr_ptr_sample[3]),
        .R(rst_wr_2));
FDRE \wr_ptr_sample_reg[4] 
       (.C(vid_io_in_clk),
        .CE(ce_wr_ptr_sample),
        .D(wr_ptr_reg[4]),
        .Q(wr_ptr_sample[4]),
        .R(rst_wr_2));
FDRE \wr_ptr_sample_reg[5] 
       (.C(vid_io_in_clk),
        .CE(ce_wr_ptr_sample),
        .D(wr_ptr_reg[5]),
        .Q(wr_ptr_sample[5]),
        .R(rst_wr_2));
FDRE \wr_ptr_sample_reg[6] 
       (.C(vid_io_in_clk),
        .CE(ce_wr_ptr_sample),
        .D(wr_ptr_reg[6]),
        .Q(wr_ptr_sample[6]),
        .R(rst_wr_2));
FDRE \wr_ptr_sample_reg[7] 
       (.C(vid_io_in_clk),
        .CE(ce_wr_ptr_sample),
        .D(wr_ptr_reg[7]),
        .Q(wr_ptr_sample[7]),
        .R(rst_wr_2));
FDRE \wr_ptr_sample_reg[8] 
       (.C(vid_io_in_clk),
        .CE(ce_wr_ptr_sample),
        .D(wr_ptr_reg[8]),
        .Q(wr_ptr_sample[8]),
        .R(rst_wr_2));
FDRE \wr_ptr_sample_reg[9] 
       (.C(vid_io_in_clk),
        .CE(ce_wr_ptr_sample),
        .D(wr_ptr_reg[9]),
        .Q(wr_ptr_sample[9]),
        .R(rst_wr_2));
endmodule

(* ORIG_REF_NAME = "v_vid_in_axi4s_v3_0_in_coupler" *) 
module v_vid_in_axi4s_0_v_vid_in_axi4s_v3_0_in_coupler
   (locked_1,
    wr_error,
    O1,
    O2,
    Q,
    aclk,
    vid_io_in_clk,
    vid_io_in_ce,
    aclken,
    axis_enable,
    I1,
    idf_de,
    aresetn,
    rst,
    m_axis_video_tready,
    din);
  output locked_1;
  output wr_error;
  output O1;
  output O2;
  output [82:0]Q;
  input aclk;
  input vid_io_in_clk;
  input vid_io_in_ce;
  input aclken;
  input axis_enable;
  input I1;
  input idf_de;
  input aresetn;
  input rst;
  input m_axis_video_tready;
  input [82:0]din;

  wire I1;
  wire O1;
  wire O2;
  wire [82:0]Q;
  wire aclk;
  wire aclken;
  wire aresetn;
  wire axis_enable;
  wire [82:0]din;
  wire first_sof_reg;
  wire idf_de;
  wire locked_1;
  wire locked_2;
  wire m_axis_video_tready;
  wire n_0_first_sof_reg_i_1;
  wire n_0_in_bridge_async_fifo_2_i;
  wire n_10_in_bridge_async_fifo_2_i;
  wire n_11_in_bridge_async_fifo_2_i;
  wire n_12_in_bridge_async_fifo_2_i;
  wire n_13_in_bridge_async_fifo_2_i;
  wire n_14_in_bridge_async_fifo_2_i;
  wire n_15_in_bridge_async_fifo_2_i;
  wire n_16_in_bridge_async_fifo_2_i;
  wire n_17_in_bridge_async_fifo_2_i;
  wire n_18_in_bridge_async_fifo_2_i;
  wire n_19_in_bridge_async_fifo_2_i;
  wire n_20_in_bridge_async_fifo_2_i;
  wire n_21_in_bridge_async_fifo_2_i;
  wire n_22_in_bridge_async_fifo_2_i;
  wire n_23_in_bridge_async_fifo_2_i;
  wire n_24_in_bridge_async_fifo_2_i;
  wire n_25_in_bridge_async_fifo_2_i;
  wire n_26_in_bridge_async_fifo_2_i;
  wire n_27_in_bridge_async_fifo_2_i;
  wire n_28_in_bridge_async_fifo_2_i;
  wire n_29_in_bridge_async_fifo_2_i;
  wire n_30_in_bridge_async_fifo_2_i;
  wire n_31_in_bridge_async_fifo_2_i;
  wire n_32_in_bridge_async_fifo_2_i;
  wire n_33_in_bridge_async_fifo_2_i;
  wire n_34_in_bridge_async_fifo_2_i;
  wire n_35_in_bridge_async_fifo_2_i;
  wire n_36_in_bridge_async_fifo_2_i;
  wire n_37_in_bridge_async_fifo_2_i;
  wire n_38_in_bridge_async_fifo_2_i;
  wire n_39_in_bridge_async_fifo_2_i;
  wire n_3_in_bridge_async_fifo_2_i;
  wire n_40_in_bridge_async_fifo_2_i;
  wire n_41_in_bridge_async_fifo_2_i;
  wire n_42_in_bridge_async_fifo_2_i;
  wire n_43_in_bridge_async_fifo_2_i;
  wire n_44_in_bridge_async_fifo_2_i;
  wire n_45_in_bridge_async_fifo_2_i;
  wire n_46_in_bridge_async_fifo_2_i;
  wire n_47_in_bridge_async_fifo_2_i;
  wire n_48_in_bridge_async_fifo_2_i;
  wire n_49_in_bridge_async_fifo_2_i;
  wire n_4_in_bridge_async_fifo_2_i;
  wire n_50_in_bridge_async_fifo_2_i;
  wire n_51_in_bridge_async_fifo_2_i;
  wire n_52_in_bridge_async_fifo_2_i;
  wire n_53_in_bridge_async_fifo_2_i;
  wire n_54_in_bridge_async_fifo_2_i;
  wire n_55_in_bridge_async_fifo_2_i;
  wire n_56_in_bridge_async_fifo_2_i;
  wire n_57_in_bridge_async_fifo_2_i;
  wire n_58_in_bridge_async_fifo_2_i;
  wire n_59_in_bridge_async_fifo_2_i;
  wire n_5_in_bridge_async_fifo_2_i;
  wire n_60_in_bridge_async_fifo_2_i;
  wire n_61_in_bridge_async_fifo_2_i;
  wire n_62_in_bridge_async_fifo_2_i;
  wire n_63_in_bridge_async_fifo_2_i;
  wire n_64_in_bridge_async_fifo_2_i;
  wire n_65_in_bridge_async_fifo_2_i;
  wire n_66_in_bridge_async_fifo_2_i;
  wire n_67_in_bridge_async_fifo_2_i;
  wire n_68_in_bridge_async_fifo_2_i;
  wire n_69_in_bridge_async_fifo_2_i;
  wire n_6_in_bridge_async_fifo_2_i;
  wire n_70_in_bridge_async_fifo_2_i;
  wire n_71_in_bridge_async_fifo_2_i;
  wire n_72_in_bridge_async_fifo_2_i;
  wire n_73_in_bridge_async_fifo_2_i;
  wire n_74_in_bridge_async_fifo_2_i;
  wire n_75_in_bridge_async_fifo_2_i;
  wire n_76_in_bridge_async_fifo_2_i;
  wire n_77_in_bridge_async_fifo_2_i;
  wire n_78_in_bridge_async_fifo_2_i;
  wire n_79_in_bridge_async_fifo_2_i;
  wire n_7_in_bridge_async_fifo_2_i;
  wire n_80_in_bridge_async_fifo_2_i;
  wire n_81_in_bridge_async_fifo_2_i;
  wire n_82_in_bridge_async_fifo_2_i;
  wire n_83_in_bridge_async_fifo_2_i;
  wire n_84_in_bridge_async_fifo_2_i;
  wire n_85_in_bridge_async_fifo_2_i;
  wire n_86_in_bridge_async_fifo_2_i;
  wire n_87_in_bridge_async_fifo_2_i;
  wire n_89_in_bridge_async_fifo_2_i;
  wire n_8_in_bridge_async_fifo_2_i;
  wire n_9_in_bridge_async_fifo_2_i;
  wire p_5_in;
  wire rst;
  wire vid_io_in_ce;
  wire vid_io_in_clk;
  wire wr_error;

LUT6 #(
    .INIT(64'h0000AE0000000000)) 
     first_sof_reg_i_1
       (.I0(first_sof_reg),
        .I1(p_5_in),
        .I2(n_87_in_bridge_async_fifo_2_i),
        .I3(locked_2),
        .I4(rst),
        .I5(aresetn),
        .O(n_0_first_sof_reg_i_1));
FDRE first_sof_reg_reg
       (.C(aclk),
        .CE(1'b1),
        .D(n_0_first_sof_reg_i_1),
        .Q(first_sof_reg),
        .R(1'b0));
v_vid_in_axi4s_0_v_vid_in_axi4s_v3_0_in_bridge_async_fifo_2 in_bridge_async_fifo_2_i
       (.D({n_4_in_bridge_async_fifo_2_i,n_5_in_bridge_async_fifo_2_i,n_6_in_bridge_async_fifo_2_i,n_7_in_bridge_async_fifo_2_i,n_8_in_bridge_async_fifo_2_i,n_9_in_bridge_async_fifo_2_i,n_10_in_bridge_async_fifo_2_i,n_11_in_bridge_async_fifo_2_i,n_12_in_bridge_async_fifo_2_i,n_13_in_bridge_async_fifo_2_i,n_14_in_bridge_async_fifo_2_i,n_15_in_bridge_async_fifo_2_i,n_16_in_bridge_async_fifo_2_i,n_17_in_bridge_async_fifo_2_i,n_18_in_bridge_async_fifo_2_i,n_19_in_bridge_async_fifo_2_i,n_20_in_bridge_async_fifo_2_i,n_21_in_bridge_async_fifo_2_i,n_22_in_bridge_async_fifo_2_i,n_23_in_bridge_async_fifo_2_i,n_24_in_bridge_async_fifo_2_i,n_25_in_bridge_async_fifo_2_i,n_26_in_bridge_async_fifo_2_i,n_27_in_bridge_async_fifo_2_i,n_28_in_bridge_async_fifo_2_i,n_29_in_bridge_async_fifo_2_i,n_30_in_bridge_async_fifo_2_i,n_31_in_bridge_async_fifo_2_i,n_32_in_bridge_async_fifo_2_i,n_33_in_bridge_async_fifo_2_i,n_34_in_bridge_async_fifo_2_i,n_35_in_bridge_async_fifo_2_i,n_36_in_bridge_async_fifo_2_i,n_37_in_bridge_async_fifo_2_i,n_38_in_bridge_async_fifo_2_i,n_39_in_bridge_async_fifo_2_i,n_40_in_bridge_async_fifo_2_i,n_41_in_bridge_async_fifo_2_i,n_42_in_bridge_async_fifo_2_i,n_43_in_bridge_async_fifo_2_i,n_44_in_bridge_async_fifo_2_i,n_45_in_bridge_async_fifo_2_i,n_46_in_bridge_async_fifo_2_i,n_47_in_bridge_async_fifo_2_i,n_48_in_bridge_async_fifo_2_i,n_49_in_bridge_async_fifo_2_i,n_50_in_bridge_async_fifo_2_i,n_51_in_bridge_async_fifo_2_i,n_52_in_bridge_async_fifo_2_i,n_53_in_bridge_async_fifo_2_i,n_54_in_bridge_async_fifo_2_i,n_55_in_bridge_async_fifo_2_i,n_56_in_bridge_async_fifo_2_i,n_57_in_bridge_async_fifo_2_i,n_58_in_bridge_async_fifo_2_i,n_59_in_bridge_async_fifo_2_i,n_60_in_bridge_async_fifo_2_i,n_61_in_bridge_async_fifo_2_i,n_62_in_bridge_async_fifo_2_i,n_63_in_bridge_async_fifo_2_i,n_64_in_bridge_async_fifo_2_i,n_65_in_bridge_async_fifo_2_i,n_66_in_bridge_async_fifo_2_i,n_67_in_bridge_async_fifo_2_i,n_68_in_bridge_async_fifo_2_i,n_69_in_bridge_async_fifo_2_i,n_70_in_bridge_async_fifo_2_i,n_71_in_bridge_async_fifo_2_i,n_72_in_bridge_async_fifo_2_i,n_73_in_bridge_async_fifo_2_i,n_74_in_bridge_async_fifo_2_i,n_75_in_bridge_async_fifo_2_i,n_76_in_bridge_async_fifo_2_i,n_77_in_bridge_async_fifo_2_i,n_78_in_bridge_async_fifo_2_i,n_79_in_bridge_async_fifo_2_i,n_80_in_bridge_async_fifo_2_i,n_81_in_bridge_async_fifo_2_i,n_82_in_bridge_async_fifo_2_i,n_83_in_bridge_async_fifo_2_i,n_84_in_bridge_async_fifo_2_i,n_85_in_bridge_async_fifo_2_i,n_86_in_bridge_async_fifo_2_i}),
        .E(n_89_in_bridge_async_fifo_2_i),
        .I1(O2),
        .O1(n_0_in_bridge_async_fifo_2_i),
        .O2(O1),
        .O3(n_3_in_bridge_async_fifo_2_i),
        .aclk(aclk),
        .aclken(aclken),
        .aresetn(aresetn),
        .din(din),
        .dout0_out({n_87_in_bridge_async_fifo_2_i,p_5_in}),
        .first_sof_reg(first_sof_reg),
        .idf_de(idf_de),
        .m_axis_video_tready(m_axis_video_tready),
        .p_0_in6_in(locked_2),
        .rst(rst),
        .vid_io_in_ce(vid_io_in_ce),
        .vid_io_in_clk(vid_io_in_clk),
        .wr_error(wr_error));
(* ASYNC_REG *) 
   (* KEEP = "yes" *) 
   FDRE #(
    .INIT(1'b0)) 
     locked_1_reg
       (.C(aclk),
        .CE(aclken),
        .D(axis_enable),
        .Q(locked_1),
        .R(n_0_in_bridge_async_fifo_2_i));
(* ASYNC_REG *) 
   (* KEEP = "yes" *) 
   FDRE #(
    .INIT(1'b0)) 
     locked_2_reg
       (.C(aclk),
        .CE(aclken),
        .D(I1),
        .Q(locked_2),
        .R(n_0_in_bridge_async_fifo_2_i));
FDRE \rd_data_reg[0] 
       (.C(aclk),
        .CE(n_89_in_bridge_async_fifo_2_i),
        .D(n_86_in_bridge_async_fifo_2_i),
        .Q(Q[0]),
        .R(n_0_in_bridge_async_fifo_2_i));
FDRE \rd_data_reg[10] 
       (.C(aclk),
        .CE(n_89_in_bridge_async_fifo_2_i),
        .D(n_76_in_bridge_async_fifo_2_i),
        .Q(Q[10]),
        .R(n_0_in_bridge_async_fifo_2_i));
FDRE \rd_data_reg[11] 
       (.C(aclk),
        .CE(n_89_in_bridge_async_fifo_2_i),
        .D(n_75_in_bridge_async_fifo_2_i),
        .Q(Q[11]),
        .R(n_0_in_bridge_async_fifo_2_i));
FDRE \rd_data_reg[12] 
       (.C(aclk),
        .CE(n_89_in_bridge_async_fifo_2_i),
        .D(n_74_in_bridge_async_fifo_2_i),
        .Q(Q[12]),
        .R(n_0_in_bridge_async_fifo_2_i));
FDRE \rd_data_reg[13] 
       (.C(aclk),
        .CE(n_89_in_bridge_async_fifo_2_i),
        .D(n_73_in_bridge_async_fifo_2_i),
        .Q(Q[13]),
        .R(n_0_in_bridge_async_fifo_2_i));
FDRE \rd_data_reg[14] 
       (.C(aclk),
        .CE(n_89_in_bridge_async_fifo_2_i),
        .D(n_72_in_bridge_async_fifo_2_i),
        .Q(Q[14]),
        .R(n_0_in_bridge_async_fifo_2_i));
FDRE \rd_data_reg[15] 
       (.C(aclk),
        .CE(n_89_in_bridge_async_fifo_2_i),
        .D(n_71_in_bridge_async_fifo_2_i),
        .Q(Q[15]),
        .R(n_0_in_bridge_async_fifo_2_i));
FDRE \rd_data_reg[16] 
       (.C(aclk),
        .CE(n_89_in_bridge_async_fifo_2_i),
        .D(n_70_in_bridge_async_fifo_2_i),
        .Q(Q[16]),
        .R(n_0_in_bridge_async_fifo_2_i));
FDRE \rd_data_reg[17] 
       (.C(aclk),
        .CE(n_89_in_bridge_async_fifo_2_i),
        .D(n_69_in_bridge_async_fifo_2_i),
        .Q(Q[17]),
        .R(n_0_in_bridge_async_fifo_2_i));
FDRE \rd_data_reg[18] 
       (.C(aclk),
        .CE(n_89_in_bridge_async_fifo_2_i),
        .D(n_68_in_bridge_async_fifo_2_i),
        .Q(Q[18]),
        .R(n_0_in_bridge_async_fifo_2_i));
FDRE \rd_data_reg[19] 
       (.C(aclk),
        .CE(n_89_in_bridge_async_fifo_2_i),
        .D(n_67_in_bridge_async_fifo_2_i),
        .Q(Q[19]),
        .R(n_0_in_bridge_async_fifo_2_i));
FDRE \rd_data_reg[1] 
       (.C(aclk),
        .CE(n_89_in_bridge_async_fifo_2_i),
        .D(n_85_in_bridge_async_fifo_2_i),
        .Q(Q[1]),
        .R(n_0_in_bridge_async_fifo_2_i));
FDRE \rd_data_reg[20] 
       (.C(aclk),
        .CE(n_89_in_bridge_async_fifo_2_i),
        .D(n_66_in_bridge_async_fifo_2_i),
        .Q(Q[20]),
        .R(n_0_in_bridge_async_fifo_2_i));
FDRE \rd_data_reg[21] 
       (.C(aclk),
        .CE(n_89_in_bridge_async_fifo_2_i),
        .D(n_65_in_bridge_async_fifo_2_i),
        .Q(Q[21]),
        .R(n_0_in_bridge_async_fifo_2_i));
FDRE \rd_data_reg[22] 
       (.C(aclk),
        .CE(n_89_in_bridge_async_fifo_2_i),
        .D(n_64_in_bridge_async_fifo_2_i),
        .Q(Q[22]),
        .R(n_0_in_bridge_async_fifo_2_i));
FDRE \rd_data_reg[23] 
       (.C(aclk),
        .CE(n_89_in_bridge_async_fifo_2_i),
        .D(n_63_in_bridge_async_fifo_2_i),
        .Q(Q[23]),
        .R(n_0_in_bridge_async_fifo_2_i));
FDRE \rd_data_reg[24] 
       (.C(aclk),
        .CE(n_89_in_bridge_async_fifo_2_i),
        .D(n_62_in_bridge_async_fifo_2_i),
        .Q(Q[24]),
        .R(n_0_in_bridge_async_fifo_2_i));
FDRE \rd_data_reg[25] 
       (.C(aclk),
        .CE(n_89_in_bridge_async_fifo_2_i),
        .D(n_61_in_bridge_async_fifo_2_i),
        .Q(Q[25]),
        .R(n_0_in_bridge_async_fifo_2_i));
FDRE \rd_data_reg[26] 
       (.C(aclk),
        .CE(n_89_in_bridge_async_fifo_2_i),
        .D(n_60_in_bridge_async_fifo_2_i),
        .Q(Q[26]),
        .R(n_0_in_bridge_async_fifo_2_i));
FDRE \rd_data_reg[27] 
       (.C(aclk),
        .CE(n_89_in_bridge_async_fifo_2_i),
        .D(n_59_in_bridge_async_fifo_2_i),
        .Q(Q[27]),
        .R(n_0_in_bridge_async_fifo_2_i));
FDRE \rd_data_reg[28] 
       (.C(aclk),
        .CE(n_89_in_bridge_async_fifo_2_i),
        .D(n_58_in_bridge_async_fifo_2_i),
        .Q(Q[28]),
        .R(n_0_in_bridge_async_fifo_2_i));
FDRE \rd_data_reg[29] 
       (.C(aclk),
        .CE(n_89_in_bridge_async_fifo_2_i),
        .D(n_57_in_bridge_async_fifo_2_i),
        .Q(Q[29]),
        .R(n_0_in_bridge_async_fifo_2_i));
FDRE \rd_data_reg[2] 
       (.C(aclk),
        .CE(n_89_in_bridge_async_fifo_2_i),
        .D(n_84_in_bridge_async_fifo_2_i),
        .Q(Q[2]),
        .R(n_0_in_bridge_async_fifo_2_i));
FDRE \rd_data_reg[30] 
       (.C(aclk),
        .CE(n_89_in_bridge_async_fifo_2_i),
        .D(n_56_in_bridge_async_fifo_2_i),
        .Q(Q[30]),
        .R(n_0_in_bridge_async_fifo_2_i));
FDRE \rd_data_reg[31] 
       (.C(aclk),
        .CE(n_89_in_bridge_async_fifo_2_i),
        .D(n_55_in_bridge_async_fifo_2_i),
        .Q(Q[31]),
        .R(n_0_in_bridge_async_fifo_2_i));
FDRE \rd_data_reg[32] 
       (.C(aclk),
        .CE(n_89_in_bridge_async_fifo_2_i),
        .D(n_54_in_bridge_async_fifo_2_i),
        .Q(Q[32]),
        .R(n_0_in_bridge_async_fifo_2_i));
FDRE \rd_data_reg[33] 
       (.C(aclk),
        .CE(n_89_in_bridge_async_fifo_2_i),
        .D(n_53_in_bridge_async_fifo_2_i),
        .Q(Q[33]),
        .R(n_0_in_bridge_async_fifo_2_i));
FDRE \rd_data_reg[34] 
       (.C(aclk),
        .CE(n_89_in_bridge_async_fifo_2_i),
        .D(n_52_in_bridge_async_fifo_2_i),
        .Q(Q[34]),
        .R(n_0_in_bridge_async_fifo_2_i));
FDRE \rd_data_reg[35] 
       (.C(aclk),
        .CE(n_89_in_bridge_async_fifo_2_i),
        .D(n_51_in_bridge_async_fifo_2_i),
        .Q(Q[35]),
        .R(n_0_in_bridge_async_fifo_2_i));
FDRE \rd_data_reg[36] 
       (.C(aclk),
        .CE(n_89_in_bridge_async_fifo_2_i),
        .D(n_50_in_bridge_async_fifo_2_i),
        .Q(Q[36]),
        .R(n_0_in_bridge_async_fifo_2_i));
FDRE \rd_data_reg[37] 
       (.C(aclk),
        .CE(n_89_in_bridge_async_fifo_2_i),
        .D(n_49_in_bridge_async_fifo_2_i),
        .Q(Q[37]),
        .R(n_0_in_bridge_async_fifo_2_i));
FDRE \rd_data_reg[38] 
       (.C(aclk),
        .CE(n_89_in_bridge_async_fifo_2_i),
        .D(n_48_in_bridge_async_fifo_2_i),
        .Q(Q[38]),
        .R(n_0_in_bridge_async_fifo_2_i));
FDRE \rd_data_reg[39] 
       (.C(aclk),
        .CE(n_89_in_bridge_async_fifo_2_i),
        .D(n_47_in_bridge_async_fifo_2_i),
        .Q(Q[39]),
        .R(n_0_in_bridge_async_fifo_2_i));
FDRE \rd_data_reg[3] 
       (.C(aclk),
        .CE(n_89_in_bridge_async_fifo_2_i),
        .D(n_83_in_bridge_async_fifo_2_i),
        .Q(Q[3]),
        .R(n_0_in_bridge_async_fifo_2_i));
FDRE \rd_data_reg[40] 
       (.C(aclk),
        .CE(n_89_in_bridge_async_fifo_2_i),
        .D(n_46_in_bridge_async_fifo_2_i),
        .Q(Q[40]),
        .R(n_0_in_bridge_async_fifo_2_i));
FDRE \rd_data_reg[41] 
       (.C(aclk),
        .CE(n_89_in_bridge_async_fifo_2_i),
        .D(n_45_in_bridge_async_fifo_2_i),
        .Q(Q[41]),
        .R(n_0_in_bridge_async_fifo_2_i));
FDRE \rd_data_reg[42] 
       (.C(aclk),
        .CE(n_89_in_bridge_async_fifo_2_i),
        .D(n_44_in_bridge_async_fifo_2_i),
        .Q(Q[42]),
        .R(n_0_in_bridge_async_fifo_2_i));
FDRE \rd_data_reg[43] 
       (.C(aclk),
        .CE(n_89_in_bridge_async_fifo_2_i),
        .D(n_43_in_bridge_async_fifo_2_i),
        .Q(Q[43]),
        .R(n_0_in_bridge_async_fifo_2_i));
FDRE \rd_data_reg[44] 
       (.C(aclk),
        .CE(n_89_in_bridge_async_fifo_2_i),
        .D(n_42_in_bridge_async_fifo_2_i),
        .Q(Q[44]),
        .R(n_0_in_bridge_async_fifo_2_i));
FDRE \rd_data_reg[45] 
       (.C(aclk),
        .CE(n_89_in_bridge_async_fifo_2_i),
        .D(n_41_in_bridge_async_fifo_2_i),
        .Q(Q[45]),
        .R(n_0_in_bridge_async_fifo_2_i));
FDRE \rd_data_reg[46] 
       (.C(aclk),
        .CE(n_89_in_bridge_async_fifo_2_i),
        .D(n_40_in_bridge_async_fifo_2_i),
        .Q(Q[46]),
        .R(n_0_in_bridge_async_fifo_2_i));
FDRE \rd_data_reg[47] 
       (.C(aclk),
        .CE(n_89_in_bridge_async_fifo_2_i),
        .D(n_39_in_bridge_async_fifo_2_i),
        .Q(Q[47]),
        .R(n_0_in_bridge_async_fifo_2_i));
FDRE \rd_data_reg[48] 
       (.C(aclk),
        .CE(n_89_in_bridge_async_fifo_2_i),
        .D(n_38_in_bridge_async_fifo_2_i),
        .Q(Q[48]),
        .R(n_0_in_bridge_async_fifo_2_i));
FDRE \rd_data_reg[49] 
       (.C(aclk),
        .CE(n_89_in_bridge_async_fifo_2_i),
        .D(n_37_in_bridge_async_fifo_2_i),
        .Q(Q[49]),
        .R(n_0_in_bridge_async_fifo_2_i));
FDRE \rd_data_reg[4] 
       (.C(aclk),
        .CE(n_89_in_bridge_async_fifo_2_i),
        .D(n_82_in_bridge_async_fifo_2_i),
        .Q(Q[4]),
        .R(n_0_in_bridge_async_fifo_2_i));
FDRE \rd_data_reg[50] 
       (.C(aclk),
        .CE(n_89_in_bridge_async_fifo_2_i),
        .D(n_36_in_bridge_async_fifo_2_i),
        .Q(Q[50]),
        .R(n_0_in_bridge_async_fifo_2_i));
FDRE \rd_data_reg[51] 
       (.C(aclk),
        .CE(n_89_in_bridge_async_fifo_2_i),
        .D(n_35_in_bridge_async_fifo_2_i),
        .Q(Q[51]),
        .R(n_0_in_bridge_async_fifo_2_i));
FDRE \rd_data_reg[52] 
       (.C(aclk),
        .CE(n_89_in_bridge_async_fifo_2_i),
        .D(n_34_in_bridge_async_fifo_2_i),
        .Q(Q[52]),
        .R(n_0_in_bridge_async_fifo_2_i));
FDRE \rd_data_reg[53] 
       (.C(aclk),
        .CE(n_89_in_bridge_async_fifo_2_i),
        .D(n_33_in_bridge_async_fifo_2_i),
        .Q(Q[53]),
        .R(n_0_in_bridge_async_fifo_2_i));
FDRE \rd_data_reg[54] 
       (.C(aclk),
        .CE(n_89_in_bridge_async_fifo_2_i),
        .D(n_32_in_bridge_async_fifo_2_i),
        .Q(Q[54]),
        .R(n_0_in_bridge_async_fifo_2_i));
FDRE \rd_data_reg[55] 
       (.C(aclk),
        .CE(n_89_in_bridge_async_fifo_2_i),
        .D(n_31_in_bridge_async_fifo_2_i),
        .Q(Q[55]),
        .R(n_0_in_bridge_async_fifo_2_i));
FDRE \rd_data_reg[56] 
       (.C(aclk),
        .CE(n_89_in_bridge_async_fifo_2_i),
        .D(n_30_in_bridge_async_fifo_2_i),
        .Q(Q[56]),
        .R(n_0_in_bridge_async_fifo_2_i));
FDRE \rd_data_reg[57] 
       (.C(aclk),
        .CE(n_89_in_bridge_async_fifo_2_i),
        .D(n_29_in_bridge_async_fifo_2_i),
        .Q(Q[57]),
        .R(n_0_in_bridge_async_fifo_2_i));
FDRE \rd_data_reg[58] 
       (.C(aclk),
        .CE(n_89_in_bridge_async_fifo_2_i),
        .D(n_28_in_bridge_async_fifo_2_i),
        .Q(Q[58]),
        .R(n_0_in_bridge_async_fifo_2_i));
FDRE \rd_data_reg[59] 
       (.C(aclk),
        .CE(n_89_in_bridge_async_fifo_2_i),
        .D(n_27_in_bridge_async_fifo_2_i),
        .Q(Q[59]),
        .R(n_0_in_bridge_async_fifo_2_i));
FDRE \rd_data_reg[5] 
       (.C(aclk),
        .CE(n_89_in_bridge_async_fifo_2_i),
        .D(n_81_in_bridge_async_fifo_2_i),
        .Q(Q[5]),
        .R(n_0_in_bridge_async_fifo_2_i));
FDRE \rd_data_reg[60] 
       (.C(aclk),
        .CE(n_89_in_bridge_async_fifo_2_i),
        .D(n_26_in_bridge_async_fifo_2_i),
        .Q(Q[60]),
        .R(n_0_in_bridge_async_fifo_2_i));
FDRE \rd_data_reg[61] 
       (.C(aclk),
        .CE(n_89_in_bridge_async_fifo_2_i),
        .D(n_25_in_bridge_async_fifo_2_i),
        .Q(Q[61]),
        .R(n_0_in_bridge_async_fifo_2_i));
FDRE \rd_data_reg[62] 
       (.C(aclk),
        .CE(n_89_in_bridge_async_fifo_2_i),
        .D(n_24_in_bridge_async_fifo_2_i),
        .Q(Q[62]),
        .R(n_0_in_bridge_async_fifo_2_i));
FDRE \rd_data_reg[63] 
       (.C(aclk),
        .CE(n_89_in_bridge_async_fifo_2_i),
        .D(n_23_in_bridge_async_fifo_2_i),
        .Q(Q[63]),
        .R(n_0_in_bridge_async_fifo_2_i));
FDRE \rd_data_reg[64] 
       (.C(aclk),
        .CE(n_89_in_bridge_async_fifo_2_i),
        .D(n_22_in_bridge_async_fifo_2_i),
        .Q(Q[64]),
        .R(n_0_in_bridge_async_fifo_2_i));
FDRE \rd_data_reg[65] 
       (.C(aclk),
        .CE(n_89_in_bridge_async_fifo_2_i),
        .D(n_21_in_bridge_async_fifo_2_i),
        .Q(Q[65]),
        .R(n_0_in_bridge_async_fifo_2_i));
FDRE \rd_data_reg[66] 
       (.C(aclk),
        .CE(n_89_in_bridge_async_fifo_2_i),
        .D(n_20_in_bridge_async_fifo_2_i),
        .Q(Q[66]),
        .R(n_0_in_bridge_async_fifo_2_i));
FDRE \rd_data_reg[67] 
       (.C(aclk),
        .CE(n_89_in_bridge_async_fifo_2_i),
        .D(n_19_in_bridge_async_fifo_2_i),
        .Q(Q[67]),
        .R(n_0_in_bridge_async_fifo_2_i));
FDRE \rd_data_reg[68] 
       (.C(aclk),
        .CE(n_89_in_bridge_async_fifo_2_i),
        .D(n_18_in_bridge_async_fifo_2_i),
        .Q(Q[68]),
        .R(n_0_in_bridge_async_fifo_2_i));
FDRE \rd_data_reg[69] 
       (.C(aclk),
        .CE(n_89_in_bridge_async_fifo_2_i),
        .D(n_17_in_bridge_async_fifo_2_i),
        .Q(Q[69]),
        .R(n_0_in_bridge_async_fifo_2_i));
FDRE \rd_data_reg[6] 
       (.C(aclk),
        .CE(n_89_in_bridge_async_fifo_2_i),
        .D(n_80_in_bridge_async_fifo_2_i),
        .Q(Q[6]),
        .R(n_0_in_bridge_async_fifo_2_i));
FDRE \rd_data_reg[70] 
       (.C(aclk),
        .CE(n_89_in_bridge_async_fifo_2_i),
        .D(n_16_in_bridge_async_fifo_2_i),
        .Q(Q[70]),
        .R(n_0_in_bridge_async_fifo_2_i));
FDRE \rd_data_reg[71] 
       (.C(aclk),
        .CE(n_89_in_bridge_async_fifo_2_i),
        .D(n_15_in_bridge_async_fifo_2_i),
        .Q(Q[71]),
        .R(n_0_in_bridge_async_fifo_2_i));
FDRE \rd_data_reg[72] 
       (.C(aclk),
        .CE(n_89_in_bridge_async_fifo_2_i),
        .D(n_14_in_bridge_async_fifo_2_i),
        .Q(Q[72]),
        .R(n_0_in_bridge_async_fifo_2_i));
FDRE \rd_data_reg[73] 
       (.C(aclk),
        .CE(n_89_in_bridge_async_fifo_2_i),
        .D(n_13_in_bridge_async_fifo_2_i),
        .Q(Q[73]),
        .R(n_0_in_bridge_async_fifo_2_i));
FDRE \rd_data_reg[74] 
       (.C(aclk),
        .CE(n_89_in_bridge_async_fifo_2_i),
        .D(n_12_in_bridge_async_fifo_2_i),
        .Q(Q[74]),
        .R(n_0_in_bridge_async_fifo_2_i));
FDRE \rd_data_reg[75] 
       (.C(aclk),
        .CE(n_89_in_bridge_async_fifo_2_i),
        .D(n_11_in_bridge_async_fifo_2_i),
        .Q(Q[75]),
        .R(n_0_in_bridge_async_fifo_2_i));
FDRE \rd_data_reg[76] 
       (.C(aclk),
        .CE(n_89_in_bridge_async_fifo_2_i),
        .D(n_10_in_bridge_async_fifo_2_i),
        .Q(Q[76]),
        .R(n_0_in_bridge_async_fifo_2_i));
FDRE \rd_data_reg[77] 
       (.C(aclk),
        .CE(n_89_in_bridge_async_fifo_2_i),
        .D(n_9_in_bridge_async_fifo_2_i),
        .Q(Q[77]),
        .R(n_0_in_bridge_async_fifo_2_i));
FDRE \rd_data_reg[78] 
       (.C(aclk),
        .CE(n_89_in_bridge_async_fifo_2_i),
        .D(n_8_in_bridge_async_fifo_2_i),
        .Q(Q[78]),
        .R(n_0_in_bridge_async_fifo_2_i));
FDRE \rd_data_reg[79] 
       (.C(aclk),
        .CE(n_89_in_bridge_async_fifo_2_i),
        .D(n_7_in_bridge_async_fifo_2_i),
        .Q(Q[79]),
        .R(n_0_in_bridge_async_fifo_2_i));
FDRE \rd_data_reg[7] 
       (.C(aclk),
        .CE(n_89_in_bridge_async_fifo_2_i),
        .D(n_79_in_bridge_async_fifo_2_i),
        .Q(Q[7]),
        .R(n_0_in_bridge_async_fifo_2_i));
FDRE \rd_data_reg[80] 
       (.C(aclk),
        .CE(n_89_in_bridge_async_fifo_2_i),
        .D(n_6_in_bridge_async_fifo_2_i),
        .Q(Q[80]),
        .R(n_0_in_bridge_async_fifo_2_i));
FDRE \rd_data_reg[81] 
       (.C(aclk),
        .CE(n_89_in_bridge_async_fifo_2_i),
        .D(n_5_in_bridge_async_fifo_2_i),
        .Q(Q[81]),
        .R(n_0_in_bridge_async_fifo_2_i));
FDRE \rd_data_reg[82] 
       (.C(aclk),
        .CE(n_89_in_bridge_async_fifo_2_i),
        .D(n_4_in_bridge_async_fifo_2_i),
        .Q(Q[82]),
        .R(n_0_in_bridge_async_fifo_2_i));
FDRE \rd_data_reg[8] 
       (.C(aclk),
        .CE(n_89_in_bridge_async_fifo_2_i),
        .D(n_78_in_bridge_async_fifo_2_i),
        .Q(Q[8]),
        .R(n_0_in_bridge_async_fifo_2_i));
FDRE \rd_data_reg[9] 
       (.C(aclk),
        .CE(n_89_in_bridge_async_fifo_2_i),
        .D(n_77_in_bridge_async_fifo_2_i),
        .Q(Q[9]),
        .R(n_0_in_bridge_async_fifo_2_i));
FDRE valid_reg
       (.C(aclk),
        .CE(1'b1),
        .D(n_3_in_bridge_async_fifo_2_i),
        .Q(O2),
        .R(1'b0));
endmodule

(* DowngradeIPIdentifiedWarnings = "yes" *) (* C_M_AXIS_VIDEO_DATA_WIDTH = "10" *) (* C_M_AXIS_VIDEO_FORMAT = "6" *) 
(* VID_IN_DATA_WIDTH = "80" *) (* C_M_AXIS_VIDEO_TDATA_WIDTH = "80" *) (* RAM_ADDR_BITS = "10" *) 
(* HYSTERESIS_LEVEL = "12" *) (* ORIG_REF_NAME = "v_vid_in_axi4s_v3_0_vid_in_axi4s_top" *) 
module v_vid_in_axi4s_0_v_vid_in_axi4s_v3_0_vid_in_axi4s_top
   (vid_io_in_clk,
    rst,
    vid_io_in_ce,
    vid_active_video,
    vid_vblank,
    vid_hblank,
    vid_vsync,
    vid_hsync,
    vid_field_id,
    vid_data,
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
    axis_enable);
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

  wire aclk;
  wire aclken;
  wire aresetn;
  wire axis_enable;
  wire empty;
  wire fid;
  wire [82:0]idf_data;
  wire idf_de;
  wire locked_1;
  wire [79:0]m_axis_video_tdata;
  wire m_axis_video_tlast;
  wire m_axis_video_tready;
  wire m_axis_video_tuser;
  wire m_axis_video_tvalid;
  wire rst;
  wire vid_active_video;
  wire [79:0]vid_data;
  wire vid_field_id;
  wire vid_hblank;
  wire vid_hsync;
  wire vid_io_in_ce;
  wire vid_io_in_clk;
  wire vid_vblank;
  wire vid_vsync;
  wire vtd_active_video;
  wire vtd_field_id;
  wire vtd_hblank;
  wire vtd_hsync;
  wire vtd_vblank;
  wire vtd_vsync;
  wire wr_error;

v_vid_in_axi4s_0_v_vid_in_axi4s_v3_0_in_coupler in_coupler_i
       (.I1(locked_1),
        .O1(empty),
        .O2(m_axis_video_tvalid),
        .Q({fid,m_axis_video_tuser,m_axis_video_tlast,m_axis_video_tdata}),
        .aclk(aclk),
        .aclken(aclken),
        .aresetn(aresetn),
        .axis_enable(axis_enable),
        .din(idf_data),
        .idf_de(idf_de),
        .locked_1(locked_1),
        .m_axis_video_tready(m_axis_video_tready),
        .rst(rst),
        .vid_io_in_ce(vid_io_in_ce),
        .vid_io_in_clk(vid_io_in_clk),
        .wr_error(wr_error));
v_vid_in_axi4s_0_v_vid_in_axi4s_v3_0_vid_in_formatter vid_in_formatter
       (.O1(vtd_active_video),
        .din(idf_data),
        .idf_de(idf_de),
        .vid_active_video(vid_active_video),
        .vid_data(vid_data),
        .vid_field_id(vid_field_id),
        .vid_hblank(vid_hblank),
        .vid_hsync(vid_hsync),
        .vid_io_in_ce(vid_io_in_ce),
        .vid_io_in_clk(vid_io_in_clk),
        .vid_vblank(vid_vblank),
        .vid_vsync(vid_vsync),
        .vtd_field_id(vtd_field_id),
        .vtd_hblank(vtd_hblank),
        .vtd_hsync(vtd_hsync),
        .vtd_vblank(vtd_vblank),
        .vtd_vsync(vtd_vsync));
endmodule

(* ORIG_REF_NAME = "v_vid_in_axi4s_v3_0_vid_in_formatter" *) 
module v_vid_in_axi4s_0_v_vid_in_axi4s_v3_0_vid_in_formatter
   (O1,
    vtd_vblank,
    vtd_hblank,
    vtd_vsync,
    vtd_hsync,
    vtd_field_id,
    din,
    idf_de,
    vid_io_in_ce,
    vid_active_video,
    vid_io_in_clk,
    vid_vblank,
    vid_hblank,
    vid_vsync,
    vid_hsync,
    vid_field_id,
    vid_data);
  output O1;
  output vtd_vblank;
  output vtd_hblank;
  output vtd_vsync;
  output vtd_hsync;
  output vtd_field_id;
  output [82:0]din;
  output idf_de;
  input vid_io_in_ce;
  input vid_active_video;
  input vid_io_in_clk;
  input vid_vblank;
  input vid_hblank;
  input vid_vsync;
  input vid_hsync;
  input vid_field_id;
  input [79:0]vid_data;

  wire O1;
  wire [79:0]data_1;
  wire [79:0]data_2;
  wire de_2;
  wire [82:0]din;
  wire field_id_2;
  wire idf_de;
  wire n_0_eol_i_1;
  wire n_0_vert_blanking_intvl_i_1;
  wire n_0_vert_blanking_intvl_reg;
  wire sof;
  wire sof0;
  wire v_blank_sync_1;
  wire v_blank_sync_2;
  wire vid_active_video;
  wire [79:0]vid_data;
  wire vid_field_id;
  wire vid_hblank;
  wire vid_hsync;
  wire vid_io_in_ce;
  wire vid_io_in_clk;
  wire vid_vblank;
  wire vid_vsync;
  wire vtd_field_id;
  wire vtd_hblank;
  wire vtd_hsync;
  wire vtd_vblank;
  wire vtd_vsync;

FDRE #(
    .INIT(1'b0)) 
     \data_1_reg[0] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(vid_data[0]),
        .Q(data_1[0]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \data_1_reg[10] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(vid_data[10]),
        .Q(data_1[10]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \data_1_reg[11] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(vid_data[11]),
        .Q(data_1[11]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \data_1_reg[12] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(vid_data[12]),
        .Q(data_1[12]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \data_1_reg[13] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(vid_data[13]),
        .Q(data_1[13]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \data_1_reg[14] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(vid_data[14]),
        .Q(data_1[14]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \data_1_reg[15] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(vid_data[15]),
        .Q(data_1[15]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \data_1_reg[16] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(vid_data[16]),
        .Q(data_1[16]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \data_1_reg[17] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(vid_data[17]),
        .Q(data_1[17]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \data_1_reg[18] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(vid_data[18]),
        .Q(data_1[18]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \data_1_reg[19] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(vid_data[19]),
        .Q(data_1[19]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \data_1_reg[1] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(vid_data[1]),
        .Q(data_1[1]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \data_1_reg[20] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(vid_data[20]),
        .Q(data_1[20]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \data_1_reg[21] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(vid_data[21]),
        .Q(data_1[21]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \data_1_reg[22] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(vid_data[22]),
        .Q(data_1[22]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \data_1_reg[23] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(vid_data[23]),
        .Q(data_1[23]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \data_1_reg[24] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(vid_data[24]),
        .Q(data_1[24]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \data_1_reg[25] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(vid_data[25]),
        .Q(data_1[25]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \data_1_reg[26] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(vid_data[26]),
        .Q(data_1[26]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \data_1_reg[27] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(vid_data[27]),
        .Q(data_1[27]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \data_1_reg[28] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(vid_data[28]),
        .Q(data_1[28]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \data_1_reg[29] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(vid_data[29]),
        .Q(data_1[29]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \data_1_reg[2] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(vid_data[2]),
        .Q(data_1[2]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \data_1_reg[30] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(vid_data[30]),
        .Q(data_1[30]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \data_1_reg[31] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(vid_data[31]),
        .Q(data_1[31]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \data_1_reg[32] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(vid_data[32]),
        .Q(data_1[32]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \data_1_reg[33] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(vid_data[33]),
        .Q(data_1[33]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \data_1_reg[34] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(vid_data[34]),
        .Q(data_1[34]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \data_1_reg[35] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(vid_data[35]),
        .Q(data_1[35]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \data_1_reg[36] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(vid_data[36]),
        .Q(data_1[36]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \data_1_reg[37] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(vid_data[37]),
        .Q(data_1[37]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \data_1_reg[38] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(vid_data[38]),
        .Q(data_1[38]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \data_1_reg[39] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(vid_data[39]),
        .Q(data_1[39]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \data_1_reg[3] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(vid_data[3]),
        .Q(data_1[3]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \data_1_reg[40] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(vid_data[40]),
        .Q(data_1[40]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \data_1_reg[41] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(vid_data[41]),
        .Q(data_1[41]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \data_1_reg[42] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(vid_data[42]),
        .Q(data_1[42]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \data_1_reg[43] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(vid_data[43]),
        .Q(data_1[43]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \data_1_reg[44] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(vid_data[44]),
        .Q(data_1[44]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \data_1_reg[45] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(vid_data[45]),
        .Q(data_1[45]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \data_1_reg[46] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(vid_data[46]),
        .Q(data_1[46]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \data_1_reg[47] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(vid_data[47]),
        .Q(data_1[47]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \data_1_reg[48] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(vid_data[48]),
        .Q(data_1[48]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \data_1_reg[49] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(vid_data[49]),
        .Q(data_1[49]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \data_1_reg[4] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(vid_data[4]),
        .Q(data_1[4]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \data_1_reg[50] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(vid_data[50]),
        .Q(data_1[50]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \data_1_reg[51] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(vid_data[51]),
        .Q(data_1[51]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \data_1_reg[52] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(vid_data[52]),
        .Q(data_1[52]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \data_1_reg[53] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(vid_data[53]),
        .Q(data_1[53]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \data_1_reg[54] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(vid_data[54]),
        .Q(data_1[54]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \data_1_reg[55] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(vid_data[55]),
        .Q(data_1[55]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \data_1_reg[56] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(vid_data[56]),
        .Q(data_1[56]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \data_1_reg[57] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(vid_data[57]),
        .Q(data_1[57]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \data_1_reg[58] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(vid_data[58]),
        .Q(data_1[58]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \data_1_reg[59] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(vid_data[59]),
        .Q(data_1[59]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \data_1_reg[5] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(vid_data[5]),
        .Q(data_1[5]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \data_1_reg[60] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(vid_data[60]),
        .Q(data_1[60]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \data_1_reg[61] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(vid_data[61]),
        .Q(data_1[61]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \data_1_reg[62] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(vid_data[62]),
        .Q(data_1[62]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \data_1_reg[63] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(vid_data[63]),
        .Q(data_1[63]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \data_1_reg[64] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(vid_data[64]),
        .Q(data_1[64]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \data_1_reg[65] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(vid_data[65]),
        .Q(data_1[65]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \data_1_reg[66] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(vid_data[66]),
        .Q(data_1[66]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \data_1_reg[67] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(vid_data[67]),
        .Q(data_1[67]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \data_1_reg[68] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(vid_data[68]),
        .Q(data_1[68]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \data_1_reg[69] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(vid_data[69]),
        .Q(data_1[69]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \data_1_reg[6] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(vid_data[6]),
        .Q(data_1[6]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \data_1_reg[70] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(vid_data[70]),
        .Q(data_1[70]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \data_1_reg[71] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(vid_data[71]),
        .Q(data_1[71]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \data_1_reg[72] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(vid_data[72]),
        .Q(data_1[72]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \data_1_reg[73] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(vid_data[73]),
        .Q(data_1[73]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \data_1_reg[74] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(vid_data[74]),
        .Q(data_1[74]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \data_1_reg[75] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(vid_data[75]),
        .Q(data_1[75]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \data_1_reg[76] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(vid_data[76]),
        .Q(data_1[76]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \data_1_reg[77] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(vid_data[77]),
        .Q(data_1[77]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \data_1_reg[78] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(vid_data[78]),
        .Q(data_1[78]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \data_1_reg[79] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(vid_data[79]),
        .Q(data_1[79]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \data_1_reg[7] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(vid_data[7]),
        .Q(data_1[7]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \data_1_reg[8] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(vid_data[8]),
        .Q(data_1[8]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \data_1_reg[9] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(vid_data[9]),
        .Q(data_1[9]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \data_2_reg[0] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(data_1[0]),
        .Q(data_2[0]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \data_2_reg[10] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(data_1[10]),
        .Q(data_2[10]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \data_2_reg[11] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(data_1[11]),
        .Q(data_2[11]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \data_2_reg[12] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(data_1[12]),
        .Q(data_2[12]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \data_2_reg[13] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(data_1[13]),
        .Q(data_2[13]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \data_2_reg[14] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(data_1[14]),
        .Q(data_2[14]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \data_2_reg[15] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(data_1[15]),
        .Q(data_2[15]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \data_2_reg[16] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(data_1[16]),
        .Q(data_2[16]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \data_2_reg[17] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(data_1[17]),
        .Q(data_2[17]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \data_2_reg[18] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(data_1[18]),
        .Q(data_2[18]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \data_2_reg[19] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(data_1[19]),
        .Q(data_2[19]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \data_2_reg[1] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(data_1[1]),
        .Q(data_2[1]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \data_2_reg[20] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(data_1[20]),
        .Q(data_2[20]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \data_2_reg[21] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(data_1[21]),
        .Q(data_2[21]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \data_2_reg[22] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(data_1[22]),
        .Q(data_2[22]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \data_2_reg[23] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(data_1[23]),
        .Q(data_2[23]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \data_2_reg[24] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(data_1[24]),
        .Q(data_2[24]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \data_2_reg[25] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(data_1[25]),
        .Q(data_2[25]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \data_2_reg[26] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(data_1[26]),
        .Q(data_2[26]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \data_2_reg[27] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(data_1[27]),
        .Q(data_2[27]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \data_2_reg[28] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(data_1[28]),
        .Q(data_2[28]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \data_2_reg[29] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(data_1[29]),
        .Q(data_2[29]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \data_2_reg[2] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(data_1[2]),
        .Q(data_2[2]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \data_2_reg[30] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(data_1[30]),
        .Q(data_2[30]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \data_2_reg[31] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(data_1[31]),
        .Q(data_2[31]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \data_2_reg[32] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(data_1[32]),
        .Q(data_2[32]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \data_2_reg[33] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(data_1[33]),
        .Q(data_2[33]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \data_2_reg[34] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(data_1[34]),
        .Q(data_2[34]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \data_2_reg[35] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(data_1[35]),
        .Q(data_2[35]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \data_2_reg[36] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(data_1[36]),
        .Q(data_2[36]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \data_2_reg[37] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(data_1[37]),
        .Q(data_2[37]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \data_2_reg[38] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(data_1[38]),
        .Q(data_2[38]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \data_2_reg[39] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(data_1[39]),
        .Q(data_2[39]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \data_2_reg[3] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(data_1[3]),
        .Q(data_2[3]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \data_2_reg[40] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(data_1[40]),
        .Q(data_2[40]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \data_2_reg[41] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(data_1[41]),
        .Q(data_2[41]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \data_2_reg[42] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(data_1[42]),
        .Q(data_2[42]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \data_2_reg[43] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(data_1[43]),
        .Q(data_2[43]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \data_2_reg[44] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(data_1[44]),
        .Q(data_2[44]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \data_2_reg[45] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(data_1[45]),
        .Q(data_2[45]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \data_2_reg[46] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(data_1[46]),
        .Q(data_2[46]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \data_2_reg[47] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(data_1[47]),
        .Q(data_2[47]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \data_2_reg[48] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(data_1[48]),
        .Q(data_2[48]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \data_2_reg[49] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(data_1[49]),
        .Q(data_2[49]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \data_2_reg[4] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(data_1[4]),
        .Q(data_2[4]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \data_2_reg[50] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(data_1[50]),
        .Q(data_2[50]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \data_2_reg[51] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(data_1[51]),
        .Q(data_2[51]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \data_2_reg[52] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(data_1[52]),
        .Q(data_2[52]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \data_2_reg[53] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(data_1[53]),
        .Q(data_2[53]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \data_2_reg[54] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(data_1[54]),
        .Q(data_2[54]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \data_2_reg[55] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(data_1[55]),
        .Q(data_2[55]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \data_2_reg[56] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(data_1[56]),
        .Q(data_2[56]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \data_2_reg[57] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(data_1[57]),
        .Q(data_2[57]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \data_2_reg[58] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(data_1[58]),
        .Q(data_2[58]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \data_2_reg[59] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(data_1[59]),
        .Q(data_2[59]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \data_2_reg[5] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(data_1[5]),
        .Q(data_2[5]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \data_2_reg[60] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(data_1[60]),
        .Q(data_2[60]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \data_2_reg[61] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(data_1[61]),
        .Q(data_2[61]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \data_2_reg[62] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(data_1[62]),
        .Q(data_2[62]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \data_2_reg[63] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(data_1[63]),
        .Q(data_2[63]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \data_2_reg[64] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(data_1[64]),
        .Q(data_2[64]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \data_2_reg[65] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(data_1[65]),
        .Q(data_2[65]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \data_2_reg[66] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(data_1[66]),
        .Q(data_2[66]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \data_2_reg[67] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(data_1[67]),
        .Q(data_2[67]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \data_2_reg[68] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(data_1[68]),
        .Q(data_2[68]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \data_2_reg[69] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(data_1[69]),
        .Q(data_2[69]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \data_2_reg[6] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(data_1[6]),
        .Q(data_2[6]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \data_2_reg[70] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(data_1[70]),
        .Q(data_2[70]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \data_2_reg[71] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(data_1[71]),
        .Q(data_2[71]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \data_2_reg[72] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(data_1[72]),
        .Q(data_2[72]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \data_2_reg[73] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(data_1[73]),
        .Q(data_2[73]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \data_2_reg[74] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(data_1[74]),
        .Q(data_2[74]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \data_2_reg[75] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(data_1[75]),
        .Q(data_2[75]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \data_2_reg[76] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(data_1[76]),
        .Q(data_2[76]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \data_2_reg[77] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(data_1[77]),
        .Q(data_2[77]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \data_2_reg[78] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(data_1[78]),
        .Q(data_2[78]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \data_2_reg[79] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(data_1[79]),
        .Q(data_2[79]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \data_2_reg[7] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(data_1[7]),
        .Q(data_2[7]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \data_2_reg[8] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(data_1[8]),
        .Q(data_2[8]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \data_2_reg[9] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(data_1[9]),
        .Q(data_2[9]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \data_3_reg[0] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(data_2[0]),
        .Q(din[0]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \data_3_reg[10] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(data_2[10]),
        .Q(din[10]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \data_3_reg[11] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(data_2[11]),
        .Q(din[11]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \data_3_reg[12] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(data_2[12]),
        .Q(din[12]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \data_3_reg[13] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(data_2[13]),
        .Q(din[13]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \data_3_reg[14] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(data_2[14]),
        .Q(din[14]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \data_3_reg[15] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(data_2[15]),
        .Q(din[15]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \data_3_reg[16] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(data_2[16]),
        .Q(din[16]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \data_3_reg[17] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(data_2[17]),
        .Q(din[17]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \data_3_reg[18] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(data_2[18]),
        .Q(din[18]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \data_3_reg[19] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(data_2[19]),
        .Q(din[19]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \data_3_reg[1] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(data_2[1]),
        .Q(din[1]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \data_3_reg[20] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(data_2[20]),
        .Q(din[20]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \data_3_reg[21] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(data_2[21]),
        .Q(din[21]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \data_3_reg[22] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(data_2[22]),
        .Q(din[22]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \data_3_reg[23] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(data_2[23]),
        .Q(din[23]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \data_3_reg[24] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(data_2[24]),
        .Q(din[24]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \data_3_reg[25] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(data_2[25]),
        .Q(din[25]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \data_3_reg[26] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(data_2[26]),
        .Q(din[26]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \data_3_reg[27] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(data_2[27]),
        .Q(din[27]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \data_3_reg[28] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(data_2[28]),
        .Q(din[28]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \data_3_reg[29] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(data_2[29]),
        .Q(din[29]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \data_3_reg[2] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(data_2[2]),
        .Q(din[2]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \data_3_reg[30] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(data_2[30]),
        .Q(din[30]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \data_3_reg[31] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(data_2[31]),
        .Q(din[31]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \data_3_reg[32] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(data_2[32]),
        .Q(din[32]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \data_3_reg[33] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(data_2[33]),
        .Q(din[33]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \data_3_reg[34] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(data_2[34]),
        .Q(din[34]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \data_3_reg[35] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(data_2[35]),
        .Q(din[35]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \data_3_reg[36] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(data_2[36]),
        .Q(din[36]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \data_3_reg[37] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(data_2[37]),
        .Q(din[37]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \data_3_reg[38] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(data_2[38]),
        .Q(din[38]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \data_3_reg[39] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(data_2[39]),
        .Q(din[39]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \data_3_reg[3] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(data_2[3]),
        .Q(din[3]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \data_3_reg[40] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(data_2[40]),
        .Q(din[40]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \data_3_reg[41] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(data_2[41]),
        .Q(din[41]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \data_3_reg[42] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(data_2[42]),
        .Q(din[42]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \data_3_reg[43] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(data_2[43]),
        .Q(din[43]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \data_3_reg[44] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(data_2[44]),
        .Q(din[44]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \data_3_reg[45] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(data_2[45]),
        .Q(din[45]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \data_3_reg[46] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(data_2[46]),
        .Q(din[46]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \data_3_reg[47] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(data_2[47]),
        .Q(din[47]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \data_3_reg[48] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(data_2[48]),
        .Q(din[48]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \data_3_reg[49] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(data_2[49]),
        .Q(din[49]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \data_3_reg[4] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(data_2[4]),
        .Q(din[4]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \data_3_reg[50] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(data_2[50]),
        .Q(din[50]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \data_3_reg[51] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(data_2[51]),
        .Q(din[51]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \data_3_reg[52] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(data_2[52]),
        .Q(din[52]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \data_3_reg[53] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(data_2[53]),
        .Q(din[53]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \data_3_reg[54] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(data_2[54]),
        .Q(din[54]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \data_3_reg[55] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(data_2[55]),
        .Q(din[55]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \data_3_reg[56] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(data_2[56]),
        .Q(din[56]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \data_3_reg[57] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(data_2[57]),
        .Q(din[57]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \data_3_reg[58] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(data_2[58]),
        .Q(din[58]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \data_3_reg[59] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(data_2[59]),
        .Q(din[59]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \data_3_reg[5] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(data_2[5]),
        .Q(din[5]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \data_3_reg[60] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(data_2[60]),
        .Q(din[60]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \data_3_reg[61] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(data_2[61]),
        .Q(din[61]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \data_3_reg[62] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(data_2[62]),
        .Q(din[62]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \data_3_reg[63] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(data_2[63]),
        .Q(din[63]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \data_3_reg[64] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(data_2[64]),
        .Q(din[64]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \data_3_reg[65] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(data_2[65]),
        .Q(din[65]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \data_3_reg[66] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(data_2[66]),
        .Q(din[66]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \data_3_reg[67] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(data_2[67]),
        .Q(din[67]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \data_3_reg[68] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(data_2[68]),
        .Q(din[68]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \data_3_reg[69] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(data_2[69]),
        .Q(din[69]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \data_3_reg[6] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(data_2[6]),
        .Q(din[6]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \data_3_reg[70] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(data_2[70]),
        .Q(din[70]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \data_3_reg[71] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(data_2[71]),
        .Q(din[71]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \data_3_reg[72] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(data_2[72]),
        .Q(din[72]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \data_3_reg[73] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(data_2[73]),
        .Q(din[73]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \data_3_reg[74] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(data_2[74]),
        .Q(din[74]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \data_3_reg[75] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(data_2[75]),
        .Q(din[75]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \data_3_reg[76] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(data_2[76]),
        .Q(din[76]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \data_3_reg[77] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(data_2[77]),
        .Q(din[77]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \data_3_reg[78] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(data_2[78]),
        .Q(din[78]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \data_3_reg[79] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(data_2[79]),
        .Q(din[79]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \data_3_reg[7] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(data_2[7]),
        .Q(din[7]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \data_3_reg[8] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(data_2[8]),
        .Q(din[8]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \data_3_reg[9] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(data_2[9]),
        .Q(din[9]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     de_1_reg
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(vid_active_video),
        .Q(O1),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     de_2_reg
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(O1),
        .Q(de_2),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     de_3_reg
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(de_2),
        .Q(idf_de),
        .R(1'b0));
(* SOFT_HLUTNM = "soft_lutpair4" *) 
   LUT2 #(
    .INIT(4'h2)) 
     eol_i_1
       (.I0(de_2),
        .I1(O1),
        .O(n_0_eol_i_1));
FDRE eol_reg
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(n_0_eol_i_1),
        .Q(din[80]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     field_id_1_reg
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(vid_field_id),
        .Q(vtd_field_id),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     field_id_2_reg
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(vtd_field_id),
        .Q(field_id_2),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     field_id_3_reg
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(field_id_2),
        .Q(din[82]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     hblank_1_reg
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(vid_hblank),
        .Q(vtd_hblank),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     hsync_1_reg
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(vid_hsync),
        .Q(vtd_hsync),
        .R(1'b0));
FDRE sof_1_reg
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(sof),
        .Q(din[81]),
        .R(1'b0));
(* SOFT_HLUTNM = "soft_lutpair4" *) 
   LUT3 #(
    .INIT(8'h40)) 
     sof_i_1
       (.I0(de_2),
        .I1(O1),
        .I2(n_0_vert_blanking_intvl_reg),
        .O(sof0));
FDRE sof_reg
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(sof0),
        .Q(sof),
        .R(1'b0));
LUT2 #(
    .INIT(4'hE)) 
     v_blank_sync_2_i_1
       (.I0(vtd_vblank),
        .I1(vtd_vsync),
        .O(v_blank_sync_1));
FDRE #(
    .INIT(1'b0)) 
     v_blank_sync_2_reg
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(v_blank_sync_1),
        .Q(v_blank_sync_2),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     vblank_1_reg
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(vid_vblank),
        .Q(vtd_vblank),
        .R(1'b0));
LUT6 #(
    .INIT(64'hB0B0F0F0FFB0F0F0)) 
     vert_blanking_intvl_i_1
       (.I0(de_2),
        .I1(O1),
        .I2(n_0_vert_blanking_intvl_reg),
        .I3(v_blank_sync_1),
        .I4(vid_io_in_ce),
        .I5(v_blank_sync_2),
        .O(n_0_vert_blanking_intvl_i_1));
FDRE #(
    .INIT(1'b0)) 
     vert_blanking_intvl_reg
       (.C(vid_io_in_clk),
        .CE(1'b1),
        .D(n_0_vert_blanking_intvl_i_1),
        .Q(n_0_vert_blanking_intvl_reg),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     vsync_1_reg
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(vid_vsync),
        .Q(vtd_vsync),
        .R(1'b0));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
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

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

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

endmodule
`endif
