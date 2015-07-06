#############################################################################
## Copyright (c) 2012-2015 Xilinx, Inc.
## This design is confidential and proprietary of Xilinx, All Rights Reserved.
##############################################################################
##   ____  ____
##  /   /\/   /
## /___/  \  /   Vendor: Xilinx
## \   \   \/    Version: 1.2
##  \   \        Filename: top5x2_7to1_ddr_rx.xdc
##  /   /        Date Last Modified:  21JAN2015
## /___/   /\    Date Created: 30JUN2012
## \   \  / ##  \___\/\___ ##
##Device: 	7 Series
##Purpose:  	SDR receiver timing constraints for Vivado
##
##Reference:	XAPP585.pdf
##
##Revision History:
##    Rev 1.0 - First created (nicks)
##    Rev 1.2 - Updated format (brandond)
##############################################################################
##
##  Disclaimer:
##
##		This disclaimer is not a license and does not grant any rights to the materials
##              distributed herewith. Except as otherwise provided in a valid license issued to you
##              by Xilinx, and to the maximum extent permitted by applicable law:
##              (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND WITH ALL FAULTS,
##              AND XILINX HEREBY DISCLAIMS ALL WARRANTIES AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY,
##              INCLUDING BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-INFRINGEMENT, OR
##              FITNESS FOR ANY PARTICULAR PURPOSE; and (2) Xilinx shall not be liable (whether in contract
##              or tort, including negligence, or under any other theory of liability) for any loss or damage
##              of any kind or nature related to, arising under or in connection with these materials,
##              including for any direct, or any indirect, special, incidental, or consequential loss
##              or damage (including loss of data, profits, goodwill, or any type of loss or damage suffered
##              as a result of any action brought by a third party) even if such damage or loss was
##              reasonably foreseeable or Xilinx had been advised of the possibility of the same.
##
##  Critical Applications:
##
##		Xilinx products are not designed or intended to be fail-safe, or for use in any application
##		requiring fail-safe performance, such as life-support or safety devices or systems,
##		Class III medical devices, nuclear facilities, applications related to the deployment of airbags,
##		or any other applications that could lead to death, personal injury, or severe property or
##		environmental damage (individually and collectively, "Critical Applications"). Customer assumes
##		the sole risk and liability of any use of Xilinx products in Critical Applications, subject only
##		to applicable laws and regulations governing limitations on product liability.
##
##  THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS PART OF THIS FILE AT ALL TIMES.
##
##############################################################################
#
# In sdc, all clocks are related by default. This differs from ucf, where clocks are unrelated unless specified otherwise.

# SDR receiver timing constraints

set_property CFGBVS VCCO [current_design]
set_property CONFIG_VOLTAGE 3.3 [current_design]

create_clock -period 20.833 -name channel_x_clk_p -add [get_ports channel_x_clk_p]
#create_clock -period 20.833 -name channel_y_clk_p -add [get_ports channel_y_clk_p]
#create_clock -period 20.833 -name channel_z_clk_p -add [get_ports channel_z_clk_p]

create_clock -period 5.000 -name refclkin_clk_p -add [get_ports refclkin_clk_p]

# Ignore false path from clock input to clock input serdes
set_false_path -from [get_ports channel_x_clk_p] -to [get_pins -hier -filter {name =~ *rx*iserdes_c?/DDLY}]
#set_false_path -from [get_clocks  clk_out1_design_1_clk_wiz_0_0] -to [get_clocks clk_out2_design_1_clk_wiz_0_0]
#set_false_path -from [get_clocks  clk_out2_design_1_clk_wiz_0_0] -to [get_clocks clk_out1_design_1_clk_wiz_0_0]
# Pin constraints
set_property IOSTANDARD LVDS_25 [get_ports channel_x_clk_p]
set_property DIFF_TERM TRUE [get_ports channel_x_clk_p]
set_property PACKAGE_PIN AC24 [get_ports channel_x_clk_n]
set_property IOSTANDARD LVDS_25 [get_ports channel_x_clk_n]
set_property DIFF_TERM TRUE [get_ports channel_x_clk_n]

set_property IOSTANDARD LVDS_25 [get_ports {channel_x_data_p[0]}]
set_property DIFF_TERM TRUE [get_ports {channel_x_data_p[0]}]
set_property PACKAGE_PIN AA23 [get_ports {channel_x_data_n[0]}]
set_property IOSTANDARD LVDS_25 [get_ports {channel_x_data_n[0]}]
set_property DIFF_TERM TRUE [get_ports {channel_x_data_n[0]}]
set_property IOSTANDARD LVDS_25 [get_ports {channel_x_data_p[1]}]
set_property DIFF_TERM TRUE [get_ports {channel_x_data_p[1]}]
set_property PACKAGE_PIN AF23 [get_ports {channel_x_data_n[1]}]
set_property IOSTANDARD LVDS_25 [get_ports {channel_x_data_n[1]}]
set_property DIFF_TERM TRUE [get_ports {channel_x_data_n[1]}]
set_property IOSTANDARD LVDS_25 [get_ports {channel_x_data_p[2]}]
set_property DIFF_TERM TRUE [get_ports {channel_x_data_p[2]}]
set_property PACKAGE_PIN AF22 [get_ports {channel_x_data_n[2]}]
set_property IOSTANDARD LVDS_25 [get_ports {channel_x_data_n[2]}]
set_property DIFF_TERM TRUE [get_ports {channel_x_data_n[2]}]
set_property IOSTANDARD LVDS_25 [get_ports {channel_x_data_p[3]}]
set_property DIFF_TERM TRUE [get_ports {channel_x_data_p[3]}]
set_property PACKAGE_PIN AB22 [get_ports {channel_x_data_n[3]}]
set_property IOSTANDARD LVDS_25 [get_ports {channel_x_data_n[3]}]
set_property DIFF_TERM TRUE [get_ports {channel_x_data_n[3]}]

set_property IOSTANDARD LVDS_25 [get_ports channel_y_clk_p]
set_property DIFF_TERM TRUE [get_ports channel_y_clk_p]
set_property PACKAGE_PIN AC22 [get_ports channel_y_clk_n]
set_property IOSTANDARD LVDS_25 [get_ports channel_y_clk_n]
set_property DIFF_TERM TRUE [get_ports channel_y_clk_n]

set_property IOSTANDARD LVDS_25 [get_ports {channel_y_data_p[0]}]
set_property DIFF_TERM TRUE [get_ports {channel_y_data_p[0]}]
set_property PACKAGE_PIN AF20 [get_ports {channel_y_data_n[0]}]
set_property IOSTANDARD LVDS_25 [get_ports {channel_y_data_n[0]}]
set_property DIFF_TERM TRUE [get_ports {channel_y_data_n[0]}]
set_property IOSTANDARD LVDS_25 [get_ports {channel_y_data_p[1]}]
set_property DIFF_TERM TRUE [get_ports {channel_y_data_p[1]}]
set_property PACKAGE_PIN AF18 [get_ports {channel_y_data_n[1]}]
set_property IOSTANDARD LVDS_25 [get_ports {channel_y_data_n[1]}]
set_property DIFF_TERM TRUE [get_ports {channel_y_data_n[1]}]
set_property IOSTANDARD LVDS_25 [get_ports {channel_y_data_p[2]}]
set_property DIFF_TERM TRUE [get_ports {channel_y_data_p[2]}]
set_property PACKAGE_PIN AE21 [get_ports {channel_y_data_n[2]}]
set_property IOSTANDARD LVDS_25 [get_ports {channel_y_data_n[2]}]
set_property DIFF_TERM TRUE [get_ports {channel_y_data_n[2]}]
set_property IOSTANDARD LVDS_25 [get_ports {channel_y_data_p[3]}]
set_property DIFF_TERM TRUE [get_ports {channel_y_data_p[3]}]
set_property PACKAGE_PIN AD19 [get_ports {channel_y_data_n[3]}]
set_property IOSTANDARD LVDS_25 [get_ports {channel_y_data_n[3]}]
set_property DIFF_TERM TRUE [get_ports {channel_y_data_n[3]}]

set_property IOSTANDARD LVDS_25 [get_ports channel_z_clk_p]
set_property DIFF_TERM TRUE [get_ports channel_z_clk_p]
set_property PACKAGE_PIN AD24 [get_ports channel_z_clk_n]
set_property IOSTANDARD LVDS_25 [get_ports channel_z_clk_n]
set_property DIFF_TERM TRUE [get_ports channel_z_clk_n]

set_property IOSTANDARD LVDS_25 [get_ports {channel_z_data_p[0]}]
set_property DIFF_TERM TRUE [get_ports {channel_z_data_p[0]}]
set_property PACKAGE_PIN AB25 [get_ports {channel_z_data_n[0]}]
set_property IOSTANDARD LVDS_25 [get_ports {channel_z_data_n[0]}]
set_property DIFF_TERM TRUE [get_ports {channel_z_data_n[0]}]
set_property IOSTANDARD LVDS_25 [get_ports {channel_z_data_p[1]}]
set_property DIFF_TERM TRUE [get_ports {channel_z_data_p[1]}]
set_property PACKAGE_PIN AC26 [get_ports {channel_z_data_n[1]}]
set_property IOSTANDARD LVDS_25 [get_ports {channel_z_data_n[1]}]
set_property DIFF_TERM TRUE [get_ports {channel_z_data_n[1]}]
set_property IOSTANDARD LVDS_25 [get_ports {channel_z_data_p[2]}]
set_property DIFF_TERM TRUE [get_ports {channel_z_data_p[2]}]
set_property PACKAGE_PIN AB24 [get_ports {channel_z_data_n[2]}]
set_property IOSTANDARD LVDS_25 [get_ports {channel_z_data_n[2]}]
set_property DIFF_TERM TRUE [get_ports {channel_z_data_n[2]}]
set_property IOSTANDARD LVDS_25 [get_ports {channel_z_data_p[3]}]
set_property DIFF_TERM TRUE [get_ports {channel_z_data_p[3]}]
set_property PACKAGE_PIN AD26 [get_ports {channel_z_data_n[3]}]
set_property IOSTANDARD LVDS_25 [get_ports {channel_z_data_n[3]}]
set_property DIFF_TERM TRUE [get_ports {channel_z_data_n[3]}]


set_property IOSTANDARD LVDS [get_ports refclkin_clk_p]
set_property DIFF_TERM TRUE [get_ports refclkin_clk_p]
set_property PACKAGE_PIN L4 [get_ports refclkin_clk_n]
set_property IOSTANDARD LVDS [get_ports refclkin_clk_n]
set_property DIFF_TERM TRUE [get_ports refclkin_clk_n]


set_property PACKAGE_PIN AE26 [get_ports rst_n]
set_property IOSTANDARD LVCMOS25 [get_ports rst_n]
#set_property IOSTANDARD LVCMOS18 [get_ports {data_out[27]}]
#set_property IOSTANDARD LVCMOS18 [get_ports {data_out[26]}]
#set_property IOSTANDARD LVCMOS18 [get_ports {data_out[25]}]
#set_property IOSTANDARD LVCMOS18 [get_ports {data_out[24]}]
#set_property IOSTANDARD LVCMOS18 [get_ports {data_out[23]}]
#set_property IOSTANDARD LVCMOS18 [get_ports {data_out[22]}]
#set_property IOSTANDARD LVCMOS18 [get_ports {data_out[21]}]
#set_property IOSTANDARD LVCMOS18 [get_ports {data_out[20]}]
#set_property IOSTANDARD LVCMOS18 [get_ports {data_out[19]}]
#set_property IOSTANDARD LVCMOS18 [get_ports {data_out[18]}]
#set_property IOSTANDARD LVCMOS18 [get_ports {data_out[17]}]
#set_property IOSTANDARD LVCMOS18 [get_ports {data_out[16]}]
#set_property IOSTANDARD LVCMOS18 [get_ports {data_out[15]}]
#set_property IOSTANDARD LVCMOS18 [get_ports {data_out[14]}]
#set_property IOSTANDARD LVCMOS18 [get_ports {data_out[13]}]
#set_property IOSTANDARD LVCMOS18 [get_ports {data_out[12]}]
#set_property IOSTANDARD LVCMOS18 [get_ports {data_out[11]}]
#set_property IOSTANDARD LVCMOS18 [get_ports {data_out[10]}]
#set_property IOSTANDARD LVCMOS18 [get_ports {data_out[9]}]
#set_property IOSTANDARD LVCMOS18 [get_ports {data_out[8]}]
#set_property IOSTANDARD LVCMOS18 [get_ports {data_out[7]}]
#set_property IOSTANDARD LVCMOS18 [get_ports {data_out[6]}]
#set_property IOSTANDARD LVCMOS18 [get_ports {data_out[5]}]
#set_property IOSTANDARD LVCMOS18 [get_ports {data_out[4]}]
#set_property IOSTANDARD LVCMOS18 [get_ports {data_out[3]}]
#set_property IOSTANDARD LVCMOS18 [get_ports {data_out[2]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {data_out[1]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {data_out[0]}]
#
#set_property PACKAGE_PIN M7 [get_ports {data_out[27]}]
#set_property PACKAGE_PIN L7 [get_ports {data_out[26]}]
#set_property PACKAGE_PIN H8 [get_ports {data_out[25]}]
#set_property PACKAGE_PIN J8 [get_ports {data_out[24]}]
#set_property PACKAGE_PIN N7 [get_ports {data_out[23]}]
#set_property PACKAGE_PIN N6 [get_ports {data_out[22]}]
#set_property PACKAGE_PIN K8 [get_ports {data_out[21]}]
#set_property PACKAGE_PIN K7 [get_ports {data_out[20]}]
#set_property PACKAGE_PIN M8 [get_ports {data_out[19]}]
#set_property PACKAGE_PIN L8 [get_ports {data_out[18]}]
#set_property PACKAGE_PIN K6 [get_ports {data_out[17]}]
#set_property PACKAGE_PIN J6 [get_ports {data_out[16]}]
#set_property PACKAGE_PIN N3 [get_ports {data_out[15]}]
#set_property PACKAGE_PIN N2 [get_ports {data_out[14]}]
#set_property PACKAGE_PIN M2 [get_ports {data_out[13]}]
#set_property PACKAGE_PIN L2 [get_ports {data_out[12]}]
#set_property PACKAGE_PIN H3 [get_ports {data_out[11]}]
#set_property PACKAGE_PIN H4 [get_ports {data_out[10]}]
#set_property PACKAGE_PIN J1 [get_ports {data_out[9]}]
#set_property PACKAGE_PIN H1 [get_ports {data_out[8]}]
#set_property PACKAGE_PIN H2 [get_ports {data_out[7]}]
#set_property PACKAGE_PIN G1 [get_ports {data_out[6]}]
#set_property PACKAGE_PIN K1 [get_ports {data_out[5]}]
#set_property PACKAGE_PIN K2 [get_ports {data_out[4]}]
#set_property PACKAGE_PIN F3 [get_ports {data_out[3]}]
#set_property PACKAGE_PIN F4 [get_ports {data_out[2]}]
#set_property PACKAGE_PIN Y11 [get_ports {data_out[1]}]
#set_property PACKAGE_PIN AA10 [get_ports {data_out[0]}]
#
#set_property IOSTANDARD LVCMOS25 [get_ports {rst_n}]
#set_property PACKAGE_PIN AE26 [get_ports {rst_n}]
#
#set_property IOSTANDARD LVCMOS33 [get_ports {rx_mmcm_lckd}]
#set_property PACKAGE_PIN Y12 [get_ports {rx_mmcm_lckd}]

#set_property IOSTANDARD LVCMOS33 [get_ports {clk_out}]
#set_property PACKAGE_PIN Y10 [get_ports {clk_out}]

#set_clock_groups -name processor -asynchronous -group [get_clocks clk_fpga_0]
set_clock_groups -name cameralink -asynchronous -group [get_clocks {rx_mmcmout_x1 rx_mmcmout_xs channel_x_clk_p}]
set_clock_groups -name refclock -asynchronous -group [get_clocks refclkin_clk_p]

