//Copyright 1986-2014 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2014.4 (lin64) Build 1071353 Tue Nov 18 16:47:07 MST 2014
//Date        : Mon Jul  6 15:11:45 2015
//Host        : headlight-pc running 64-bit Ubuntu 12.04.5 LTS
//Command     : generate_target design_1_wrapper.bd
//Design      : design_1_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_1_wrapper
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

  wire channel_x_clk_n;
  wire channel_x_clk_p;
  wire [3:0]channel_x_data_n;
  wire [3:0]channel_x_data_p;
  wire channel_y_clk_n;
  wire channel_y_clk_p;
  wire [3:0]channel_y_data_n;
  wire [3:0]channel_y_data_p;
  wire channel_z_clk_n;
  wire channel_z_clk_p;
  wire [3:0]channel_z_data_n;
  wire [3:0]channel_z_data_p;
  wire refclkin_clk_n;
  wire refclkin_clk_p;
  wire rst_n;

design_1 design_1_i
       (.channel_x_clk_n(channel_x_clk_n),
        .channel_x_clk_p(channel_x_clk_p),
        .channel_x_data_n(channel_x_data_n),
        .channel_x_data_p(channel_x_data_p),
        .channel_y_clk_n(channel_y_clk_n),
        .channel_y_clk_p(channel_y_clk_p),
        .channel_y_data_n(channel_y_data_n),
        .channel_y_data_p(channel_y_data_p),
        .channel_z_clk_n(channel_z_clk_n),
        .channel_z_clk_p(channel_z_clk_p),
        .channel_z_data_n(channel_z_data_n),
        .channel_z_data_p(channel_z_data_p),
        .refclkin_clk_n(refclkin_clk_n),
        .refclkin_clk_p(refclkin_clk_p),
        .rst_n(rst_n));
endmodule
