//Copyright 1986-2014 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2014.4 (lin64) Build 1071353 Tue Nov 18 16:47:07 MST 2014
//Date        : Mon Jul  6 15:11:45 2015
//Host        : headlight-pc running 64-bit Ubuntu 12.04.5 LTS
//Command     : generate_target design_1.bd
//Design      : design_1
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_1
   (channel_x_clk_n,
    channel_x_clk_p,
    channel_x_data_n,
    channel_x_data_p,
    channel_y_clk_n,
    channel_y_clk_p,
    channel_y_data_n,
    channel_y_data_p,
    channel_z_clk_n,
    channel_z_clk_p,
    channel_z_data_n,
    channel_z_data_p,
    refclkin_clk_n,
    refclkin_clk_p,
    rst_n);
  input channel_x_clk_n;
  input channel_x_clk_p;
  input [3:0]channel_x_data_n;
  input [3:0]channel_x_data_p;
  input channel_y_clk_n;
  input channel_y_clk_p;
  input [3:0]channel_y_data_n;
  input [3:0]channel_y_data_p;
  input channel_z_clk_n;
  input channel_z_clk_p;
  input [3:0]channel_z_data_n;
  input [3:0]channel_z_data_p;
  input refclkin_clk_n;
  input refclkin_clk_p;
  input rst_n;

  wire [63:0]axis_dwidth_converter_0_m_axis_tdata;
  wire axis_dwidth_converter_0_m_axis_tlast;
  wire [7:0]axis_dwidth_converter_0_m_axis_tuser;
  wire axis_dwidth_converter_0_m_axis_tvalid;
  wire axis_dwidth_converter_0_s_axis_tready;
  wire [79:0]cameralink_to_axis_0_m_axis_video_tdata;
  wire cameralink_to_axis_0_m_axis_video_tlast;
  wire cameralink_to_axis_0_m_axis_video_tuser;
  wire cameralink_to_axis_0_m_axis_video_tvalid;
  wire cameralink_to_axis_0_refclk_out;
  wire channel_x_1_CLK_N;
  wire channel_x_1_CLK_P;
  wire [3:0]channel_x_1_DATA_N;
  wire [3:0]channel_x_1_DATA_P;
  wire channel_y_1_CLK_N;
  wire channel_y_1_CLK_P;
  wire [3:0]channel_y_1_DATA_N;
  wire [3:0]channel_y_1_DATA_P;
  wire channel_z_1_CLK_N;
  wire channel_z_1_CLK_P;
  wire [3:0]channel_z_1_DATA_N;
  wire [3:0]channel_z_1_DATA_P;
  wire clk_wiz_0_clk_out1;
  wire clk_wiz_0_locked;
  wire [15:0]hls_cropping_strm_0_dst_V_V_TDATA;
  wire hls_cropping_strm_0_dst_V_V_TVALID;
  wire [0:0]hls_cropping_strm_0_sof_o;
  wire hls_cropping_strm_0_src_V_V_TREADY;
  wire [63:0]hls_synchr_strm_0_dst_V_V_TDATA;
  wire hls_synchr_strm_0_dst_V_V_TVALID;
  wire hls_synchr_strm_0_src_V_V_TREADY;
  wire [0:0]hls_synchr_strm_0_start_sigo;
  wire hls_synchr_strm_0_start_sigo_ap_vld;
  wire [7:0]hls_threshold_0_dst_V_V_TDATA;
  wire hls_threshold_0_dst_V_V_TVALID;
  wire [0:0]hls_threshold_0_sof_o;
  wire hls_threshold_0_src_V_V_TREADY;
  wire refclkin_1_CLK_N;
  wire refclkin_1_CLK_P;
  wire rst_n_1;
  wire util_reduced_logic_0_Res;
  wire [9:0]xlconcat_0_dout;
  wire [0:0]xlconstant_0_dout;

  assign channel_x_1_CLK_N = channel_x_clk_n;
  assign channel_x_1_CLK_P = channel_x_clk_p;
  assign channel_x_1_DATA_N = channel_x_data_n[3:0];
  assign channel_x_1_DATA_P = channel_x_data_p[3:0];
  assign channel_y_1_CLK_N = channel_y_clk_n;
  assign channel_y_1_CLK_P = channel_y_clk_p;
  assign channel_y_1_DATA_N = channel_y_data_n[3:0];
  assign channel_y_1_DATA_P = channel_y_data_p[3:0];
  assign channel_z_1_CLK_N = channel_z_clk_n;
  assign channel_z_1_CLK_P = channel_z_clk_p;
  assign channel_z_1_DATA_N = channel_z_data_n[3:0];
  assign channel_z_1_DATA_P = channel_z_data_p[3:0];
  assign refclkin_1_CLK_N = refclkin_clk_n;
  assign refclkin_1_CLK_P = refclkin_clk_p;
  assign rst_n_1 = rst_n;
design_1_axis_dwidth_converter_0_0 axis_dwidth_converter_0
       (.aclk(clk_wiz_0_clk_out1),
        .aresetn(rst_n_1),
        .m_axis_tdata(axis_dwidth_converter_0_m_axis_tdata),
        .m_axis_tlast(axis_dwidth_converter_0_m_axis_tlast),
        .m_axis_tready(hls_synchr_strm_0_src_V_V_TREADY),
        .m_axis_tuser(axis_dwidth_converter_0_m_axis_tuser),
        .m_axis_tvalid(axis_dwidth_converter_0_m_axis_tvalid),
        .s_axis_tdata(cameralink_to_axis_0_m_axis_video_tdata),
        .s_axis_tlast(cameralink_to_axis_0_m_axis_video_tlast),
        .s_axis_tready(axis_dwidth_converter_0_s_axis_tready),
        .s_axis_tuser(xlconcat_0_dout),
        .s_axis_tvalid(cameralink_to_axis_0_m_axis_video_tvalid));
design_1_cameralink_to_axis_0_0 cameralink_to_axis_0
       (.aclk(clk_wiz_0_clk_out1),
        .aclken(clk_wiz_0_locked),
        .aresetn(rst_n_1),
        .axis_enable(clk_wiz_0_locked),
        .clkin1_n(channel_x_1_CLK_N),
        .clkin1_p(channel_x_1_CLK_P),
        .clkin2_n(channel_y_1_CLK_N),
        .clkin2_p(channel_y_1_CLK_P),
        .clkin3_n(channel_z_1_CLK_N),
        .clkin3_p(channel_z_1_CLK_P),
        .datain1_n(channel_x_1_DATA_N),
        .datain1_p(channel_x_1_DATA_P),
        .datain2_n(channel_y_1_DATA_N),
        .datain2_p(channel_y_1_DATA_P),
        .datain3_n(channel_z_1_DATA_N),
        .datain3_p(channel_z_1_DATA_P),
        .m_axis_video_tdata(cameralink_to_axis_0_m_axis_video_tdata),
        .m_axis_video_tlast(cameralink_to_axis_0_m_axis_video_tlast),
        .m_axis_video_tready(axis_dwidth_converter_0_s_axis_tready),
        .m_axis_video_tuser(cameralink_to_axis_0_m_axis_video_tuser),
        .m_axis_video_tvalid(cameralink_to_axis_0_m_axis_video_tvalid),
        .refclk_out(cameralink_to_axis_0_refclk_out),
        .refclkin_n(refclkin_1_CLK_N),
        .refclkin_p(refclkin_1_CLK_P),
        .rst_n(rst_n_1));
design_1_clk_wiz_0_0 clk_wiz_0
       (.clk_in1(cameralink_to_axis_0_refclk_out),
        .clk_out1(clk_wiz_0_clk_out1),
        .locked(clk_wiz_0_locked),
        .resetn(rst_n_1));
design_1_hls_cropping_strm_0_0 hls_cropping_strm_0
       (.ap_clk(clk_wiz_0_clk_out1),
        .ap_rst_n(rst_n_1),
        .dst_V_V_TDATA(hls_cropping_strm_0_dst_V_V_TDATA),
        .dst_V_V_TREADY(xlconstant_0_dout),
        .dst_V_V_TVALID(hls_cropping_strm_0_dst_V_V_TVALID),
        .sof_i(hls_threshold_0_sof_o),
        .sof_o(hls_cropping_strm_0_sof_o),
        .src_V_V_TDATA(hls_threshold_0_dst_V_V_TDATA),
        .src_V_V_TREADY(hls_cropping_strm_0_src_V_V_TREADY),
        .src_V_V_TVALID(hls_threshold_0_dst_V_V_TVALID));
design_1_hls_synchr_strm_0_1 hls_synchr_strm_0
       (.ap_clk(clk_wiz_0_clk_out1),
        .ap_rst_n(rst_n_1),
        .dst_V_V_TDATA(hls_synchr_strm_0_dst_V_V_TDATA),
        .dst_V_V_TREADY(hls_threshold_0_src_V_V_TREADY),
        .dst_V_V_TVALID(hls_synchr_strm_0_dst_V_V_TVALID),
        .src_V_V_TDATA(axis_dwidth_converter_0_m_axis_tdata),
        .src_V_V_TREADY(hls_synchr_strm_0_src_V_V_TREADY),
        .src_V_V_TVALID(axis_dwidth_converter_0_m_axis_tvalid),
        .start_sig(util_reduced_logic_0_Res),
        .start_sigo(hls_synchr_strm_0_start_sigo),
        .start_sigo_ap_vld(hls_synchr_strm_0_start_sigo_ap_vld));
design_1_hls_threshold_0_1 hls_threshold_0
       (.ap_clk(clk_wiz_0_clk_out1),
        .ap_rst_n(rst_n_1),
        .dst_V_V_TDATA(hls_threshold_0_dst_V_V_TDATA),
        .dst_V_V_TREADY(hls_cropping_strm_0_src_V_V_TREADY),
        .dst_V_V_TVALID(hls_threshold_0_dst_V_V_TVALID),
        .sof_i(hls_synchr_strm_0_start_sigo),
        .sof_o(hls_threshold_0_sof_o),
        .src_V_V_TDATA(hls_synchr_strm_0_dst_V_V_TDATA),
        .src_V_V_TREADY(hls_threshold_0_src_V_V_TREADY),
        .src_V_V_TVALID(hls_synchr_strm_0_dst_V_V_TVALID));
design_1_ila_0_1 ila_0
       (.clk(clk_wiz_0_clk_out1),
        .probe0(hls_synchr_strm_0_start_sigo),
        .probe1(hls_synchr_strm_0_start_sigo_ap_vld),
        .probe10(axis_dwidth_converter_0_m_axis_tlast),
        .probe11(clk_wiz_0_locked),
        .probe12(hls_cropping_strm_0_dst_V_V_TVALID),
        .probe13(hls_cropping_strm_0_sof_o),
        .probe14(hls_cropping_strm_0_dst_V_V_TDATA),
        .probe2(xlconcat_0_dout),
        .probe3(xlconcat_0_dout),
        .probe4(hls_threshold_0_dst_V_V_TDATA),
        .probe5(hls_threshold_0_sof_o),
        .probe6(hls_threshold_0_dst_V_V_TVALID),
        .probe7(axis_dwidth_converter_0_m_axis_tdata),
        .probe8(util_reduced_logic_0_Res),
        .probe9(axis_dwidth_converter_0_m_axis_tvalid));
design_1_util_reduced_logic_0_0 util_reduced_logic_0
       (.Op1(axis_dwidth_converter_0_m_axis_tuser),
        .Res(util_reduced_logic_0_Res));
design_1_xlconcat_0_0 xlconcat_0
       (.In0(cameralink_to_axis_0_m_axis_video_tuser),
        .In1(cameralink_to_axis_0_m_axis_video_tuser),
        .In2(cameralink_to_axis_0_m_axis_video_tuser),
        .In3(cameralink_to_axis_0_m_axis_video_tuser),
        .In4(cameralink_to_axis_0_m_axis_video_tuser),
        .In5(cameralink_to_axis_0_m_axis_video_tuser),
        .In6(cameralink_to_axis_0_m_axis_video_tuser),
        .In7(cameralink_to_axis_0_m_axis_video_tuser),
        .In8(cameralink_to_axis_0_m_axis_video_tuser),
        .In9(cameralink_to_axis_0_m_axis_video_tuser),
        .dout(xlconcat_0_dout));
design_1_xlconstant_0_0 xlconstant_0
       (.dout(xlconstant_0_dout));
endmodule
