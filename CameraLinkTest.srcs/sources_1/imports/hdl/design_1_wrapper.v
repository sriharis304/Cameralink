//Copyright 1986-2014 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2014.4 (lin64) Build 1071353 Tue Nov 18 16:47:07 MST 2014
//Date        : Thu Jun 11 17:14:30 2015
//Host        : headlight-pc running 64-bit Ubuntu 12.04.5 LTS
//Command     : generate_target design_1_wrapper.bd
//Design      : design_1_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_1_wrapper
   (rst_n);
  input rst_n;

  wire rst_n;

design_1 design_1_i
       (.rst_n(rst_n));
endmodule
