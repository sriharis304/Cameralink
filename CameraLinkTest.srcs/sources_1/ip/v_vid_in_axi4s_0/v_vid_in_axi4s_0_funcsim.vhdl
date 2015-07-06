-- Copyright 1986-2014 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2014.4 (lin64) Build 1071353 Tue Nov 18 16:47:07 MST 2014
-- Date        : Thu Jun 11 20:41:27 2015
-- Host        : headlight-pc running 64-bit Ubuntu 12.04.5 LTS
-- Command     : write_vhdl -force -mode funcsim
--               /home/subhagato/Codes/smartheadlight_fpga/CameraLinkToAXI_IP/CameraLinkToAXI.srcs/sources_1/ip/v_vid_in_axi4s_0/v_vid_in_axi4s_0_funcsim.vhdl
-- Design      : v_vid_in_axi4s_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z030fbg676-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity v_vid_in_axi4s_0_v_vid_in_axi4s_v3_0_in_bridge_async_fifo_2 is
  port (
    O1 : out STD_LOGIC;
    wr_error : out STD_LOGIC;
    O2 : out STD_LOGIC;
    O3 : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 82 downto 0 );
    dout0_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    aclk : in STD_LOGIC;
    vid_io_in_clk : in STD_LOGIC;
    vid_io_in_ce : in STD_LOGIC;
    idf_de : in STD_LOGIC;
    aclken : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    rst : in STD_LOGIC;
    I1 : in STD_LOGIC;
    first_sof_reg : in STD_LOGIC;
    p_0_in6_in : in STD_LOGIC;
    m_axis_video_tready : in STD_LOGIC;
    din : in STD_LOGIC_VECTOR ( 82 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of v_vid_in_axi4s_0_v_vid_in_axi4s_v3_0_in_bridge_async_fifo_2 : entity is "v_vid_in_axi4s_v3_0_in_bridge_async_fifo_2";
end v_vid_in_axi4s_0_v_vid_in_axi4s_v3_0_in_bridge_async_fifo_2;

architecture STRUCTURE of v_vid_in_axi4s_0_v_vid_in_axi4s_v3_0_in_bridge_async_fifo_2 is
  signal \^o1\ : STD_LOGIC;
  signal \^o2\ : STD_LOGIC;
  signal ack_rd_dom_1 : STD_LOGIC;
  signal ack_rd_dom_2 : STD_LOGIC;
  signal ack_rd_dom_3 : STD_LOGIC;
  signal ack_wr_dom_1 : STD_LOGIC;
  signal ack_wr_dom_2 : STD_LOGIC;
  signal ack_wr_dom_3 : STD_LOGIC;
  signal ce_rd_ptr_sample : STD_LOGIC;
  signal ce_rd_ptr_wr_dom : STD_LOGIC;
  signal ce_wr_ptr_rd_dom : STD_LOGIC;
  signal ce_wr_ptr_sample : STD_LOGIC;
  signal \^dout0_out\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal empty0 : STD_LOGIC;
  signal empty_comb : STD_LOGIC;
  signal fifo_empty : STD_LOGIC;
  signal fifo_eol : STD_LOGIC;
  signal fifo_full : STD_LOGIC;
  signal full_comb : STD_LOGIC;
  signal full_frame : STD_LOGIC;
  signal level_rd : STD_LOGIC_VECTOR ( 9 downto 2 );
  signal n_0_fifo_ram_reg_0_i_1 : STD_LOGIC;
  signal \n_0_ptr_diff_rd_dom[3]_i_2\ : STD_LOGIC;
  signal \n_0_ptr_diff_rd_dom[3]_i_3\ : STD_LOGIC;
  signal \n_0_ptr_diff_rd_dom[3]_i_4\ : STD_LOGIC;
  signal \n_0_ptr_diff_rd_dom[3]_i_5\ : STD_LOGIC;
  signal \n_0_ptr_diff_rd_dom[7]_i_2\ : STD_LOGIC;
  signal \n_0_ptr_diff_rd_dom[7]_i_3\ : STD_LOGIC;
  signal \n_0_ptr_diff_rd_dom[7]_i_4\ : STD_LOGIC;
  signal \n_0_ptr_diff_rd_dom[7]_i_5\ : STD_LOGIC;
  signal \n_0_ptr_diff_rd_dom[9]_i_2\ : STD_LOGIC;
  signal \n_0_ptr_diff_rd_dom[9]_i_3\ : STD_LOGIC;
  signal \n_0_ptr_diff_rd_dom[9]_i_4\ : STD_LOGIC;
  signal \n_0_ptr_diff_rd_dom[9]_i_5\ : STD_LOGIC;
  signal \n_0_ptr_diff_rd_dom_reg[3]_i_1\ : STD_LOGIC;
  signal \n_0_ptr_diff_rd_dom_reg[7]_i_1\ : STD_LOGIC;
  signal n_0_ram_out_rd_error_i_1 : STD_LOGIC;
  signal n_0_rd_error_i_1 : STD_LOGIC;
  signal n_0_rd_error_i_3 : STD_LOGIC;
  signal \n_0_rd_ptr_reg[0]_i_1\ : STD_LOGIC;
  signal \n_0_rd_ptr_reg[10]_i_1\ : STD_LOGIC;
  signal \n_0_rd_ptr_reg[10]_i_2\ : STD_LOGIC;
  signal \n_0_rd_ptr_reg[11]_i_1\ : STD_LOGIC;
  signal \n_0_rd_ptr_reg[1]_i_1\ : STD_LOGIC;
  signal \n_0_rd_ptr_reg[1]_i_2\ : STD_LOGIC;
  signal \n_0_rd_ptr_reg[2]_i_1\ : STD_LOGIC;
  signal \n_0_rd_ptr_reg[2]_i_2\ : STD_LOGIC;
  signal \n_0_rd_ptr_reg[3]_i_1\ : STD_LOGIC;
  signal \n_0_rd_ptr_reg[3]_i_2\ : STD_LOGIC;
  signal \n_0_rd_ptr_reg[4]_i_1\ : STD_LOGIC;
  signal \n_0_rd_ptr_reg[4]_i_2\ : STD_LOGIC;
  signal \n_0_rd_ptr_reg[5]_i_1\ : STD_LOGIC;
  signal \n_0_rd_ptr_reg[5]_i_2\ : STD_LOGIC;
  signal \n_0_rd_ptr_reg[6]_i_1\ : STD_LOGIC;
  signal \n_0_rd_ptr_reg[6]_i_2\ : STD_LOGIC;
  signal \n_0_rd_ptr_reg[7]_i_1\ : STD_LOGIC;
  signal \n_0_rd_ptr_reg[7]_i_2\ : STD_LOGIC;
  signal \n_0_rd_ptr_reg[8]_i_1\ : STD_LOGIC;
  signal \n_0_rd_ptr_reg[8]_i_2\ : STD_LOGIC;
  signal \n_0_rd_ptr_reg[9]_i_1\ : STD_LOGIC;
  signal \n_0_rd_ptr_reg[9]_i_2\ : STD_LOGIC;
  signal \n_0_rd_ptr_reg_rep[0]\ : STD_LOGIC;
  signal \n_0_rd_ptr_reg_rep[1]\ : STD_LOGIC;
  signal \n_0_rd_ptr_reg_rep[2]\ : STD_LOGIC;
  signal \n_0_rd_ptr_reg_rep[3]\ : STD_LOGIC;
  signal \n_0_rd_ptr_reg_rep[3]_i_1\ : STD_LOGIC;
  signal \n_0_rd_ptr_reg_rep[4]\ : STD_LOGIC;
  signal \n_0_rd_ptr_reg_rep[5]\ : STD_LOGIC;
  signal \n_0_rd_ptr_reg_rep[6]\ : STD_LOGIC;
  signal \n_0_rd_ptr_reg_rep[7]\ : STD_LOGIC;
  signal \n_0_rd_ptr_reg_rep[7]_i_1\ : STD_LOGIC;
  signal \n_0_rd_ptr_reg_rep[8]\ : STD_LOGIC;
  signal \n_0_rd_ptr_reg_rep[9]\ : STD_LOGIC;
  signal \n_0_rd_ptr_rep[3]_i_2\ : STD_LOGIC;
  signal \n_0_rd_ptr_rep[3]_i_3\ : STD_LOGIC;
  signal \n_0_rd_ptr_rep[3]_i_4\ : STD_LOGIC;
  signal \n_0_rd_ptr_rep[3]_i_5\ : STD_LOGIC;
  signal \n_0_rd_ptr_rep[7]_i_2\ : STD_LOGIC;
  signal \n_0_rd_ptr_rep[7]_i_3\ : STD_LOGIC;
  signal \n_0_rd_ptr_rep[7]_i_4\ : STD_LOGIC;
  signal \n_0_rd_ptr_rep[7]_i_5\ : STD_LOGIC;
  signal \n_0_rd_ptr_rep[9]_i_1\ : STD_LOGIC;
  signal \n_0_rd_ptr_rep[9]_i_4\ : STD_LOGIC;
  signal \n_0_rd_ptr_rep[9]_i_5\ : STD_LOGIC;
  signal \n_0_rd_ptr_rep[9]_i_6\ : STD_LOGIC;
  signal \n_0_rd_ptr_rep[9]_i_7\ : STD_LOGIC;
  signal \n_0_rd_ptr_rep[9]_i_8\ : STD_LOGIC;
  signal \n_0_rd_ptr_wr_dom_reg[0]\ : STD_LOGIC;
  signal \n_0_rd_ptr_wr_dom_reg[10]\ : STD_LOGIC;
  signal \n_0_rd_ptr_wr_dom_reg[1]\ : STD_LOGIC;
  signal \n_0_rd_ptr_wr_dom_reg[2]\ : STD_LOGIC;
  signal \n_0_rd_ptr_wr_dom_reg[3]\ : STD_LOGIC;
  signal \n_0_rd_ptr_wr_dom_reg[4]\ : STD_LOGIC;
  signal \n_0_rd_ptr_wr_dom_reg[5]\ : STD_LOGIC;
  signal \n_0_rd_ptr_wr_dom_reg[6]\ : STD_LOGIC;
  signal \n_0_rd_ptr_wr_dom_reg[7]\ : STD_LOGIC;
  signal \n_0_rd_ptr_wr_dom_reg[8]\ : STD_LOGIC;
  signal \n_0_rd_ptr_wr_dom_reg[9]\ : STD_LOGIC;
  signal n_0_valid_i_2 : STD_LOGIC;
  signal n_0_wr_error_i_1 : STD_LOGIC;
  signal n_0_wr_error_i_10 : STD_LOGIC;
  signal n_0_wr_error_i_11 : STD_LOGIC;
  signal n_0_wr_error_i_12 : STD_LOGIC;
  signal n_0_wr_error_i_13 : STD_LOGIC;
  signal n_0_wr_error_i_14 : STD_LOGIC;
  signal n_0_wr_error_i_15 : STD_LOGIC;
  signal n_0_wr_error_i_4 : STD_LOGIC;
  signal n_0_wr_error_i_5 : STD_LOGIC;
  signal n_0_wr_error_i_6 : STD_LOGIC;
  signal n_0_wr_error_i_8 : STD_LOGIC;
  signal n_0_wr_error_i_9 : STD_LOGIC;
  signal n_0_wr_error_reg_i_3 : STD_LOGIC;
  signal n_0_wr_error_reg_i_7 : STD_LOGIC;
  signal \n_0_wr_ptr[0]_i_1\ : STD_LOGIC;
  signal \n_0_wr_ptr[0]_i_3\ : STD_LOGIC;
  signal \n_0_wr_ptr_reg[0]_i_2\ : STD_LOGIC;
  signal \n_0_wr_ptr_reg[10]_i_1\ : STD_LOGIC;
  signal \n_0_wr_ptr_reg[10]_i_2\ : STD_LOGIC;
  signal \n_0_wr_ptr_reg[11]_i_1\ : STD_LOGIC;
  signal \n_0_wr_ptr_reg[1]_i_1\ : STD_LOGIC;
  signal \n_0_wr_ptr_reg[1]_i_2\ : STD_LOGIC;
  signal \n_0_wr_ptr_reg[2]_i_1\ : STD_LOGIC;
  signal \n_0_wr_ptr_reg[2]_i_2\ : STD_LOGIC;
  signal \n_0_wr_ptr_reg[3]_i_1\ : STD_LOGIC;
  signal \n_0_wr_ptr_reg[3]_i_2\ : STD_LOGIC;
  signal \n_0_wr_ptr_reg[4]_i_1\ : STD_LOGIC;
  signal \n_0_wr_ptr_reg[4]_i_2\ : STD_LOGIC;
  signal \n_0_wr_ptr_reg[5]_i_1\ : STD_LOGIC;
  signal \n_0_wr_ptr_reg[5]_i_2\ : STD_LOGIC;
  signal \n_0_wr_ptr_reg[6]_i_1\ : STD_LOGIC;
  signal \n_0_wr_ptr_reg[6]_i_2\ : STD_LOGIC;
  signal \n_0_wr_ptr_reg[7]_i_1\ : STD_LOGIC;
  signal \n_0_wr_ptr_reg[7]_i_2\ : STD_LOGIC;
  signal \n_0_wr_ptr_reg[8]_i_1\ : STD_LOGIC;
  signal \n_0_wr_ptr_reg[8]_i_2\ : STD_LOGIC;
  signal \n_0_wr_ptr_reg[9]_i_1\ : STD_LOGIC;
  signal \n_0_wr_ptr_reg[9]_i_2\ : STD_LOGIC;
  signal \n_1_ptr_diff_rd_dom_reg[3]_i_1\ : STD_LOGIC;
  signal \n_1_ptr_diff_rd_dom_reg[7]_i_1\ : STD_LOGIC;
  signal \n_1_ptr_diff_rd_dom_reg[9]_i_1\ : STD_LOGIC;
  signal \n_1_rd_ptr_reg_rep[3]_i_1\ : STD_LOGIC;
  signal \n_1_rd_ptr_reg_rep[7]_i_1\ : STD_LOGIC;
  signal \n_1_rd_ptr_reg_rep[9]_i_2\ : STD_LOGIC;
  signal n_1_wr_error_reg_i_3 : STD_LOGIC;
  signal n_1_wr_error_reg_i_7 : STD_LOGIC;
  signal n_24_fifo_ram_reg_2 : STD_LOGIC;
  signal n_25_fifo_ram_reg_2 : STD_LOGIC;
  signal n_26_fifo_ram_reg_2 : STD_LOGIC;
  signal n_27_fifo_ram_reg_2 : STD_LOGIC;
  signal n_28_fifo_ram_reg_2 : STD_LOGIC;
  signal n_29_fifo_ram_reg_2 : STD_LOGIC;
  signal \n_2_ptr_diff_rd_dom_reg[3]_i_1\ : STD_LOGIC;
  signal \n_2_ptr_diff_rd_dom_reg[7]_i_1\ : STD_LOGIC;
  signal \n_2_ptr_diff_rd_dom_reg[9]_i_1\ : STD_LOGIC;
  signal \n_2_rd_ptr_reg_rep[3]_i_1\ : STD_LOGIC;
  signal \n_2_rd_ptr_reg_rep[7]_i_1\ : STD_LOGIC;
  signal \n_2_rd_ptr_reg_rep[9]_i_2\ : STD_LOGIC;
  signal n_2_wr_error_reg_i_2 : STD_LOGIC;
  signal n_2_wr_error_reg_i_3 : STD_LOGIC;
  signal n_2_wr_error_reg_i_7 : STD_LOGIC;
  signal n_30_fifo_ram_reg_2 : STD_LOGIC;
  signal n_31_fifo_ram_reg_2 : STD_LOGIC;
  signal n_36_fifo_ram_reg_0 : STD_LOGIC;
  signal n_36_fifo_ram_reg_1 : STD_LOGIC;
  signal n_37_fifo_ram_reg_0 : STD_LOGIC;
  signal n_37_fifo_ram_reg_1 : STD_LOGIC;
  signal n_38_fifo_ram_reg_0 : STD_LOGIC;
  signal n_38_fifo_ram_reg_1 : STD_LOGIC;
  signal n_39_fifo_ram_reg_0 : STD_LOGIC;
  signal n_39_fifo_ram_reg_1 : STD_LOGIC;
  signal \n_3_ptr_diff_rd_dom_reg[3]_i_1\ : STD_LOGIC;
  signal \n_3_ptr_diff_rd_dom_reg[7]_i_1\ : STD_LOGIC;
  signal \n_3_ptr_diff_rd_dom_reg[9]_i_1\ : STD_LOGIC;
  signal \n_3_rd_ptr_reg_rep[3]_i_1\ : STD_LOGIC;
  signal \n_3_rd_ptr_reg_rep[7]_i_1\ : STD_LOGIC;
  signal \n_3_rd_ptr_reg_rep[9]_i_2\ : STD_LOGIC;
  signal n_3_wr_error_reg_i_2 : STD_LOGIC;
  signal n_3_wr_error_reg_i_3 : STD_LOGIC;
  signal n_3_wr_error_reg_i_7 : STD_LOGIC;
  signal n_40_fifo_ram_reg_0 : STD_LOGIC;
  signal n_40_fifo_ram_reg_1 : STD_LOGIC;
  signal n_41_fifo_ram_reg_0 : STD_LOGIC;
  signal n_41_fifo_ram_reg_1 : STD_LOGIC;
  signal n_42_fifo_ram_reg_0 : STD_LOGIC;
  signal n_42_fifo_ram_reg_1 : STD_LOGIC;
  signal n_43_fifo_ram_reg_0 : STD_LOGIC;
  signal n_43_fifo_ram_reg_1 : STD_LOGIC;
  signal n_44_fifo_ram_reg_0 : STD_LOGIC;
  signal n_44_fifo_ram_reg_1 : STD_LOGIC;
  signal n_45_fifo_ram_reg_0 : STD_LOGIC;
  signal n_45_fifo_ram_reg_1 : STD_LOGIC;
  signal n_46_fifo_ram_reg_0 : STD_LOGIC;
  signal n_46_fifo_ram_reg_1 : STD_LOGIC;
  signal n_47_fifo_ram_reg_0 : STD_LOGIC;
  signal n_47_fifo_ram_reg_1 : STD_LOGIC;
  signal n_48_fifo_ram_reg_0 : STD_LOGIC;
  signal n_48_fifo_ram_reg_1 : STD_LOGIC;
  signal n_49_fifo_ram_reg_0 : STD_LOGIC;
  signal n_49_fifo_ram_reg_1 : STD_LOGIC;
  signal \n_4_rd_ptr_reg_rep[3]_i_1\ : STD_LOGIC;
  signal \n_4_rd_ptr_reg_rep[7]_i_1\ : STD_LOGIC;
  signal \n_4_rd_ptr_reg_rep[9]_i_2\ : STD_LOGIC;
  signal n_4_wr_error_reg_i_3 : STD_LOGIC;
  signal n_4_wr_error_reg_i_7 : STD_LOGIC;
  signal n_50_fifo_ram_reg_0 : STD_LOGIC;
  signal n_50_fifo_ram_reg_1 : STD_LOGIC;
  signal n_51_fifo_ram_reg_0 : STD_LOGIC;
  signal n_51_fifo_ram_reg_1 : STD_LOGIC;
  signal n_52_fifo_ram_reg_0 : STD_LOGIC;
  signal n_52_fifo_ram_reg_1 : STD_LOGIC;
  signal n_53_fifo_ram_reg_0 : STD_LOGIC;
  signal n_53_fifo_ram_reg_1 : STD_LOGIC;
  signal n_54_fifo_ram_reg_0 : STD_LOGIC;
  signal n_54_fifo_ram_reg_1 : STD_LOGIC;
  signal n_55_fifo_ram_reg_0 : STD_LOGIC;
  signal n_55_fifo_ram_reg_1 : STD_LOGIC;
  signal n_56_fifo_ram_reg_0 : STD_LOGIC;
  signal n_56_fifo_ram_reg_1 : STD_LOGIC;
  signal n_57_fifo_ram_reg_0 : STD_LOGIC;
  signal n_57_fifo_ram_reg_1 : STD_LOGIC;
  signal n_58_fifo_ram_reg_0 : STD_LOGIC;
  signal n_58_fifo_ram_reg_1 : STD_LOGIC;
  signal n_59_fifo_ram_reg_0 : STD_LOGIC;
  signal n_59_fifo_ram_reg_1 : STD_LOGIC;
  signal \n_5_rd_ptr_reg_rep[3]_i_1\ : STD_LOGIC;
  signal \n_5_rd_ptr_reg_rep[7]_i_1\ : STD_LOGIC;
  signal \n_5_rd_ptr_reg_rep[9]_i_2\ : STD_LOGIC;
  signal n_5_wr_error_reg_i_3 : STD_LOGIC;
  signal n_5_wr_error_reg_i_7 : STD_LOGIC;
  signal n_60_fifo_ram_reg_0 : STD_LOGIC;
  signal n_60_fifo_ram_reg_1 : STD_LOGIC;
  signal n_61_fifo_ram_reg_0 : STD_LOGIC;
  signal n_61_fifo_ram_reg_1 : STD_LOGIC;
  signal n_62_fifo_ram_reg_0 : STD_LOGIC;
  signal n_62_fifo_ram_reg_1 : STD_LOGIC;
  signal n_63_fifo_ram_reg_0 : STD_LOGIC;
  signal n_63_fifo_ram_reg_1 : STD_LOGIC;
  signal n_64_fifo_ram_reg_0 : STD_LOGIC;
  signal n_64_fifo_ram_reg_1 : STD_LOGIC;
  signal n_65_fifo_ram_reg_0 : STD_LOGIC;
  signal n_65_fifo_ram_reg_1 : STD_LOGIC;
  signal n_66_fifo_ram_reg_0 : STD_LOGIC;
  signal n_66_fifo_ram_reg_1 : STD_LOGIC;
  signal n_67_fifo_ram_reg_0 : STD_LOGIC;
  signal n_67_fifo_ram_reg_1 : STD_LOGIC;
  signal \n_6_rd_ptr_reg_rep[3]_i_1\ : STD_LOGIC;
  signal \n_6_rd_ptr_reg_rep[7]_i_1\ : STD_LOGIC;
  signal \n_6_rd_ptr_reg_rep[9]_i_2\ : STD_LOGIC;
  signal n_6_wr_error_reg_i_2 : STD_LOGIC;
  signal n_6_wr_error_reg_i_3 : STD_LOGIC;
  signal n_6_wr_error_reg_i_7 : STD_LOGIC;
  signal n_72_fifo_ram_reg_0 : STD_LOGIC;
  signal n_72_fifo_ram_reg_1 : STD_LOGIC;
  signal n_73_fifo_ram_reg_0 : STD_LOGIC;
  signal n_73_fifo_ram_reg_1 : STD_LOGIC;
  signal n_74_fifo_ram_reg_0 : STD_LOGIC;
  signal n_74_fifo_ram_reg_1 : STD_LOGIC;
  signal n_75_fifo_ram_reg_0 : STD_LOGIC;
  signal n_75_fifo_ram_reg_1 : STD_LOGIC;
  signal \n_7_rd_ptr_reg_rep[3]_i_1\ : STD_LOGIC;
  signal \n_7_rd_ptr_reg_rep[7]_i_1\ : STD_LOGIC;
  signal \n_7_rd_ptr_reg_rep[9]_i_2\ : STD_LOGIC;
  signal n_7_wr_error_reg_i_2 : STD_LOGIC;
  signal n_7_wr_error_reg_i_3 : STD_LOGIC;
  signal n_7_wr_error_reg_i_7 : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 0 to 0 );
  signal ptr_diff_rd_dom_comb0_out : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal ram_out_rd_error : STD_LOGIC;
  signal rd_en : STD_LOGIC;
  signal rd_en0 : STD_LOGIC;
  signal rd_ptr_reg : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal rd_ptr_sample : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal rd_to_wr_req : STD_LOGIC;
  signal req_rd_dom_1 : STD_LOGIC;
  signal req_rd_dom_2 : STD_LOGIC;
  signal req_rd_dom_3 : STD_LOGIC;
  signal req_wr_dom_1 : STD_LOGIC;
  signal req_wr_dom_2 : STD_LOGIC;
  signal req_wr_dom_3 : STD_LOGIC;
  signal rst_rd_1 : STD_LOGIC;
  signal rst_rd_2 : STD_LOGIC;
  signal rst_wr_1 : STD_LOGIC;
  signal rst_wr_2 : STD_LOGIC;
  signal valid1_in : STD_LOGIC;
  signal wr_ptr_rd_dom : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal wr_ptr_reg : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \wr_ptr_reg__0\ : STD_LOGIC_VECTOR ( 11 downto 10 );
  signal wr_ptr_sample : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal wr_to_rd_req : STD_LOGIC;
  signal NLW_fifo_ram_reg_0_CASCADEOUTA_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_ram_reg_0_CASCADEOUTB_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_ram_reg_0_DBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_ram_reg_0_INJECTDBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_ram_reg_0_INJECTSBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_ram_reg_0_SBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_ram_reg_0_DOADO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_fifo_ram_reg_0_DOPADOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_fifo_ram_reg_0_ECCPARITY_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_fifo_ram_reg_0_RDADDRECC_UNCONNECTED : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal NLW_fifo_ram_reg_1_CASCADEOUTA_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_ram_reg_1_CASCADEOUTB_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_ram_reg_1_DBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_ram_reg_1_INJECTDBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_ram_reg_1_INJECTSBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_ram_reg_1_SBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_ram_reg_1_DOADO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_fifo_ram_reg_1_DOPADOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_fifo_ram_reg_1_ECCPARITY_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_fifo_ram_reg_1_RDADDRECC_UNCONNECTED : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal NLW_fifo_ram_reg_2_DOADO_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_fifo_ram_reg_2_DOBDO_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 11 );
  signal NLW_fifo_ram_reg_2_DOPADOP_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_fifo_ram_reg_2_DOPBDOP_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \NLW_ptr_diff_rd_dom_reg[9]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_rd_ptr_reg[9]_i_2_CARRY4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_rd_ptr_reg[9]_i_2_CARRY4_DI_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_rd_ptr_reg_rep[9]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal NLW_wr_error_reg_i_2_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal NLW_wr_error_reg_i_2_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_wr_ptr_reg[9]_i_2_CARRY4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_wr_ptr_reg[9]_i_2_CARRY4_DI_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of ack_rd_dom_1_reg : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of ack_rd_dom_1_reg : label is "yes";
  attribute ASYNC_REG of ack_rd_dom_2_reg : label is std.standard.true;
  attribute KEEP of ack_rd_dom_2_reg : label is "yes";
  attribute ASYNC_REG of ack_rd_dom_3_reg : label is std.standard.true;
  attribute KEEP of ack_rd_dom_3_reg : label is "yes";
  attribute ASYNC_REG of ack_wr_dom_1_reg : label is std.standard.true;
  attribute KEEP of ack_wr_dom_1_reg : label is "yes";
  attribute ASYNC_REG of ack_wr_dom_2_reg : label is std.standard.true;
  attribute KEEP of ack_wr_dom_2_reg : label is "yes";
  attribute ASYNC_REG of ack_wr_dom_3_reg : label is std.standard.true;
  attribute KEEP of ack_wr_dom_3_reg : label is "yes";
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of fifo_ram_reg_0 : label is "{SYNTH-6 {cell *THIS*}}";
  attribute RTL_RAM_BITS : integer;
  attribute RTL_RAM_BITS of fifo_ram_reg_0 : label is 84992;
  attribute RTL_RAM_NAME : string;
  attribute RTL_RAM_NAME of fifo_ram_reg_0 : label is "fifo_ram";
  attribute bram_addr_begin : integer;
  attribute bram_addr_begin of fifo_ram_reg_0 : label is 0;
  attribute bram_addr_end : integer;
  attribute bram_addr_end of fifo_ram_reg_0 : label is 1023;
  attribute bram_slice_begin : integer;
  attribute bram_slice_begin of fifo_ram_reg_0 : label is 0;
  attribute bram_slice_end : integer;
  attribute bram_slice_end of fifo_ram_reg_0 : label is 35;
  attribute METHODOLOGY_DRC_VIOS of fifo_ram_reg_1 : label is "{SYNTH-6 {cell *THIS*}}";
  attribute RTL_RAM_BITS of fifo_ram_reg_1 : label is 84992;
  attribute RTL_RAM_NAME of fifo_ram_reg_1 : label is "fifo_ram";
  attribute bram_addr_begin of fifo_ram_reg_1 : label is 0;
  attribute bram_addr_end of fifo_ram_reg_1 : label is 1023;
  attribute bram_slice_begin of fifo_ram_reg_1 : label is 36;
  attribute bram_slice_end of fifo_ram_reg_1 : label is 71;
  attribute METHODOLOGY_DRC_VIOS of fifo_ram_reg_2 : label is "{SYNTH-6 {cell *THIS*}}";
  attribute RTL_RAM_BITS of fifo_ram_reg_2 : label is 84992;
  attribute RTL_RAM_NAME of fifo_ram_reg_2 : label is "fifo_ram";
  attribute bram_addr_begin of fifo_ram_reg_2 : label is 0;
  attribute bram_addr_end of fifo_ram_reg_2 : label is 1023;
  attribute bram_slice_begin of fifo_ram_reg_2 : label is 36;
  attribute bram_slice_end of fifo_ram_reg_2 : label is 53;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \rd_data[4]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \rd_data[5]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \rd_data[6]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \rd_data[79]_i_4\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \rd_data[81]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \rd_data[82]_i_1\ : label is "soft_lutpair2";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \rd_ptr_reg[1]_i_2_CARRY4\ : label is "(MUXCY,XORCY)";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of \rd_ptr_reg[1]_i_2_CARRY4\ : label is "LO:O";
  attribute XILINX_LEGACY_PRIM of \rd_ptr_reg[5]_i_2_CARRY4\ : label is "(MUXCY,XORCY)";
  attribute XILINX_TRANSFORM_PINMAP of \rd_ptr_reg[5]_i_2_CARRY4\ : label is "LO:O";
  attribute XILINX_LEGACY_PRIM of \rd_ptr_reg[9]_i_2_CARRY4\ : label is "(MUXCY,XORCY)";
  attribute XILINX_TRANSFORM_PINMAP of \rd_ptr_reg[9]_i_2_CARRY4\ : label is "LO:O";
  attribute equivalent_register_removal : string;
  attribute equivalent_register_removal of \rd_ptr_reg_rep[0]\ : label is "no";
  attribute equivalent_register_removal of \rd_ptr_reg_rep[1]\ : label is "no";
  attribute equivalent_register_removal of \rd_ptr_reg_rep[2]\ : label is "no";
  attribute equivalent_register_removal of \rd_ptr_reg_rep[3]\ : label is "no";
  attribute equivalent_register_removal of \rd_ptr_reg_rep[4]\ : label is "no";
  attribute equivalent_register_removal of \rd_ptr_reg_rep[5]\ : label is "no";
  attribute equivalent_register_removal of \rd_ptr_reg_rep[6]\ : label is "no";
  attribute equivalent_register_removal of \rd_ptr_reg_rep[7]\ : label is "no";
  attribute equivalent_register_removal of \rd_ptr_reg_rep[8]\ : label is "no";
  attribute equivalent_register_removal of \rd_ptr_reg_rep[9]\ : label is "no";
  attribute ASYNC_REG of req_rd_dom_1_reg : label is std.standard.true;
  attribute KEEP of req_rd_dom_1_reg : label is "yes";
  attribute ASYNC_REG of req_rd_dom_2_reg : label is std.standard.true;
  attribute KEEP of req_rd_dom_2_reg : label is "yes";
  attribute ASYNC_REG of req_rd_dom_3_reg : label is std.standard.true;
  attribute KEEP of req_rd_dom_3_reg : label is "yes";
  attribute ASYNC_REG of req_wr_dom_1_reg : label is std.standard.true;
  attribute KEEP of req_wr_dom_1_reg : label is "yes";
  attribute ASYNC_REG of req_wr_dom_2_reg : label is std.standard.true;
  attribute KEEP of req_wr_dom_2_reg : label is "yes";
  attribute ASYNC_REG of req_wr_dom_3_reg : label is std.standard.true;
  attribute KEEP of req_wr_dom_3_reg : label is "yes";
  attribute ASYNC_REG of rst_rd_1_reg : label is std.standard.true;
  attribute KEEP of rst_rd_1_reg : label is "yes";
  attribute ASYNC_REG of rst_rd_2_reg : label is std.standard.true;
  attribute KEEP of rst_rd_2_reg : label is "yes";
  attribute ASYNC_REG of rst_wr_1_reg : label is std.standard.true;
  attribute KEEP of rst_wr_1_reg : label is "yes";
  attribute ASYNC_REG of rst_wr_2_reg : label is std.standard.true;
  attribute KEEP of rst_wr_2_reg : label is "yes";
  attribute SOFT_HLUTNM of valid_i_2 : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of valid_i_3 : label is "soft_lutpair3";
  attribute XILINX_LEGACY_PRIM of \wr_ptr_reg[1]_i_2_CARRY4\ : label is "(MUXCY,XORCY)";
  attribute XILINX_TRANSFORM_PINMAP of \wr_ptr_reg[1]_i_2_CARRY4\ : label is "LO:O";
  attribute XILINX_LEGACY_PRIM of \wr_ptr_reg[5]_i_2_CARRY4\ : label is "(MUXCY,XORCY)";
  attribute XILINX_TRANSFORM_PINMAP of \wr_ptr_reg[5]_i_2_CARRY4\ : label is "LO:O";
  attribute XILINX_LEGACY_PRIM of \wr_ptr_reg[9]_i_2_CARRY4\ : label is "(MUXCY,XORCY)";
  attribute XILINX_TRANSFORM_PINMAP of \wr_ptr_reg[9]_i_2_CARRY4\ : label is "LO:O";
begin
  O1 <= \^o1\;
  O2 <= \^o2\;
  dout0_out(1 downto 0) <= \^dout0_out\(1 downto 0);
ack_rd_dom_1_reg: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => '1',
      D => req_wr_dom_3,
      Q => ack_rd_dom_1,
      R => rst_rd_2
    );
ack_rd_dom_2_reg: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => '1',
      D => ack_rd_dom_1,
      Q => ack_rd_dom_2,
      R => rst_rd_2
    );
ack_rd_dom_3_reg: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => '1',
      D => ack_rd_dom_2,
      Q => ack_rd_dom_3,
      R => rst_rd_2
    );
ack_wr_dom_1_reg: unisim.vcomponents.FDRE
    port map (
      C => vid_io_in_clk,
      CE => '1',
      D => req_rd_dom_3,
      Q => ack_wr_dom_1,
      R => rst_wr_2
    );
ack_wr_dom_2_reg: unisim.vcomponents.FDRE
    port map (
      C => vid_io_in_clk,
      CE => '1',
      D => ack_wr_dom_1,
      Q => ack_wr_dom_2,
      R => rst_wr_2
    );
ack_wr_dom_3_reg: unisim.vcomponents.FDRE
    port map (
      C => vid_io_in_clk,
      CE => '1',
      D => ack_wr_dom_2,
      Q => ack_wr_dom_3,
      R => rst_wr_2
    );
empty_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
    port map (
      I0 => empty_comb,
      I1 => fifo_empty,
      I2 => rd_en,
      O => empty0
    );
empty_reg: unisim.vcomponents.FDSE
    port map (
      C => aclk,
      CE => '1',
      D => empty0,
      Q => fifo_empty,
      S => rst_rd_2
    );
fifo_ram_reg_0: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 36,
      READ_WIDTH_B => 36,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "NO_CHANGE",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 36,
      WRITE_WIDTH_B => 36
    )
    port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 5) => wr_ptr_reg(9 downto 0),
      ADDRARDADDR(4) => '1',
      ADDRARDADDR(3) => '1',
      ADDRARDADDR(2) => '1',
      ADDRARDADDR(1) => '1',
      ADDRARDADDR(0) => '1',
      ADDRBWRADDR(15) => '1',
      ADDRBWRADDR(14) => \n_0_rd_ptr_reg_rep[9]\,
      ADDRBWRADDR(13) => \n_0_rd_ptr_reg_rep[8]\,
      ADDRBWRADDR(12) => \n_0_rd_ptr_reg_rep[7]\,
      ADDRBWRADDR(11) => \n_0_rd_ptr_reg_rep[6]\,
      ADDRBWRADDR(10) => \n_0_rd_ptr_reg_rep[5]\,
      ADDRBWRADDR(9) => \n_0_rd_ptr_reg_rep[4]\,
      ADDRBWRADDR(8) => \n_0_rd_ptr_reg_rep[3]\,
      ADDRBWRADDR(7) => \n_0_rd_ptr_reg_rep[2]\,
      ADDRBWRADDR(6) => \n_0_rd_ptr_reg_rep[1]\,
      ADDRBWRADDR(5) => \n_0_rd_ptr_reg_rep[0]\,
      ADDRBWRADDR(4) => '1',
      ADDRBWRADDR(3) => '1',
      ADDRBWRADDR(2) => '1',
      ADDRBWRADDR(1) => '1',
      ADDRBWRADDR(0) => '1',
      CASCADEINA => '1',
      CASCADEINB => '1',
      CASCADEOUTA => NLW_fifo_ram_reg_0_CASCADEOUTA_UNCONNECTED,
      CASCADEOUTB => NLW_fifo_ram_reg_0_CASCADEOUTB_UNCONNECTED,
      CLKARDCLK => vid_io_in_clk,
      CLKBWRCLK => aclk,
      DBITERR => NLW_fifo_ram_reg_0_DBITERR_UNCONNECTED,
      DIADI(31 downto 0) => din(31 downto 0),
      DIBDI(31) => '1',
      DIBDI(30) => '1',
      DIBDI(29) => '1',
      DIBDI(28) => '1',
      DIBDI(27) => '1',
      DIBDI(26) => '1',
      DIBDI(25) => '1',
      DIBDI(24) => '1',
      DIBDI(23) => '1',
      DIBDI(22) => '1',
      DIBDI(21) => '1',
      DIBDI(20) => '1',
      DIBDI(19) => '1',
      DIBDI(18) => '1',
      DIBDI(17) => '1',
      DIBDI(16) => '1',
      DIBDI(15) => '1',
      DIBDI(14) => '1',
      DIBDI(13) => '1',
      DIBDI(12) => '1',
      DIBDI(11) => '1',
      DIBDI(10) => '1',
      DIBDI(9) => '1',
      DIBDI(8) => '1',
      DIBDI(7) => '1',
      DIBDI(6) => '1',
      DIBDI(5) => '1',
      DIBDI(4) => '1',
      DIBDI(3) => '1',
      DIBDI(2) => '1',
      DIBDI(1) => '1',
      DIBDI(0) => '1',
      DIPADIP(3 downto 0) => din(35 downto 32),
      DIPBDIP(3) => '1',
      DIPBDIP(2) => '1',
      DIPBDIP(1) => '1',
      DIPBDIP(0) => '1',
      DOADO(31 downto 0) => NLW_fifo_ram_reg_0_DOADO_UNCONNECTED(31 downto 0),
      DOBDO(31) => n_36_fifo_ram_reg_0,
      DOBDO(30) => n_37_fifo_ram_reg_0,
      DOBDO(29) => n_38_fifo_ram_reg_0,
      DOBDO(28) => n_39_fifo_ram_reg_0,
      DOBDO(27) => n_40_fifo_ram_reg_0,
      DOBDO(26) => n_41_fifo_ram_reg_0,
      DOBDO(25) => n_42_fifo_ram_reg_0,
      DOBDO(24) => n_43_fifo_ram_reg_0,
      DOBDO(23) => n_44_fifo_ram_reg_0,
      DOBDO(22) => n_45_fifo_ram_reg_0,
      DOBDO(21) => n_46_fifo_ram_reg_0,
      DOBDO(20) => n_47_fifo_ram_reg_0,
      DOBDO(19) => n_48_fifo_ram_reg_0,
      DOBDO(18) => n_49_fifo_ram_reg_0,
      DOBDO(17) => n_50_fifo_ram_reg_0,
      DOBDO(16) => n_51_fifo_ram_reg_0,
      DOBDO(15) => n_52_fifo_ram_reg_0,
      DOBDO(14) => n_53_fifo_ram_reg_0,
      DOBDO(13) => n_54_fifo_ram_reg_0,
      DOBDO(12) => n_55_fifo_ram_reg_0,
      DOBDO(11) => n_56_fifo_ram_reg_0,
      DOBDO(10) => n_57_fifo_ram_reg_0,
      DOBDO(9) => n_58_fifo_ram_reg_0,
      DOBDO(8) => n_59_fifo_ram_reg_0,
      DOBDO(7) => n_60_fifo_ram_reg_0,
      DOBDO(6) => n_61_fifo_ram_reg_0,
      DOBDO(5) => n_62_fifo_ram_reg_0,
      DOBDO(4) => n_63_fifo_ram_reg_0,
      DOBDO(3) => n_64_fifo_ram_reg_0,
      DOBDO(2) => n_65_fifo_ram_reg_0,
      DOBDO(1) => n_66_fifo_ram_reg_0,
      DOBDO(0) => n_67_fifo_ram_reg_0,
      DOPADOP(3 downto 0) => NLW_fifo_ram_reg_0_DOPADOP_UNCONNECTED(3 downto 0),
      DOPBDOP(3) => n_72_fifo_ram_reg_0,
      DOPBDOP(2) => n_73_fifo_ram_reg_0,
      DOPBDOP(1) => n_74_fifo_ram_reg_0,
      DOPBDOP(0) => n_75_fifo_ram_reg_0,
      ECCPARITY(7 downto 0) => NLW_fifo_ram_reg_0_ECCPARITY_UNCONNECTED(7 downto 0),
      ENARDEN => idf_de,
      ENBWREN => n_0_fifo_ram_reg_0_i_1,
      INJECTDBITERR => NLW_fifo_ram_reg_0_INJECTDBITERR_UNCONNECTED,
      INJECTSBITERR => NLW_fifo_ram_reg_0_INJECTSBITERR_UNCONNECTED,
      RDADDRECC(8 downto 0) => NLW_fifo_ram_reg_0_RDADDRECC_UNCONNECTED(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => rst_rd_2,
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => NLW_fifo_ram_reg_0_SBITERR_UNCONNECTED,
      WEA(3) => vid_io_in_ce,
      WEA(2) => vid_io_in_ce,
      WEA(1) => vid_io_in_ce,
      WEA(0) => vid_io_in_ce,
      WEBWE(7) => '0',
      WEBWE(6) => '0',
      WEBWE(5) => '0',
      WEBWE(4) => '0',
      WEBWE(3) => '0',
      WEBWE(2) => '0',
      WEBWE(1) => '0',
      WEBWE(0) => '0'
    );
fifo_ram_reg_0_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
    port map (
      I0 => aclken,
      I1 => rd_en,
      I2 => rst_rd_2,
      O => n_0_fifo_ram_reg_0_i_1
    );
fifo_ram_reg_1: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 36,
      READ_WIDTH_B => 36,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "NO_CHANGE",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 36,
      WRITE_WIDTH_B => 36
    )
    port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 5) => wr_ptr_reg(9 downto 0),
      ADDRARDADDR(4) => '1',
      ADDRARDADDR(3) => '1',
      ADDRARDADDR(2) => '1',
      ADDRARDADDR(1) => '1',
      ADDRARDADDR(0) => '1',
      ADDRBWRADDR(15) => '1',
      ADDRBWRADDR(14) => \n_0_rd_ptr_reg_rep[9]\,
      ADDRBWRADDR(13) => \n_0_rd_ptr_reg_rep[8]\,
      ADDRBWRADDR(12) => \n_0_rd_ptr_reg_rep[7]\,
      ADDRBWRADDR(11) => \n_0_rd_ptr_reg_rep[6]\,
      ADDRBWRADDR(10) => \n_0_rd_ptr_reg_rep[5]\,
      ADDRBWRADDR(9) => \n_0_rd_ptr_reg_rep[4]\,
      ADDRBWRADDR(8) => \n_0_rd_ptr_reg_rep[3]\,
      ADDRBWRADDR(7) => \n_0_rd_ptr_reg_rep[2]\,
      ADDRBWRADDR(6) => \n_0_rd_ptr_reg_rep[1]\,
      ADDRBWRADDR(5) => \n_0_rd_ptr_reg_rep[0]\,
      ADDRBWRADDR(4) => '1',
      ADDRBWRADDR(3) => '1',
      ADDRBWRADDR(2) => '1',
      ADDRBWRADDR(1) => '1',
      ADDRBWRADDR(0) => '1',
      CASCADEINA => '1',
      CASCADEINB => '1',
      CASCADEOUTA => NLW_fifo_ram_reg_1_CASCADEOUTA_UNCONNECTED,
      CASCADEOUTB => NLW_fifo_ram_reg_1_CASCADEOUTB_UNCONNECTED,
      CLKARDCLK => vid_io_in_clk,
      CLKBWRCLK => aclk,
      DBITERR => NLW_fifo_ram_reg_1_DBITERR_UNCONNECTED,
      DIADI(31 downto 0) => din(67 downto 36),
      DIBDI(31) => '1',
      DIBDI(30) => '1',
      DIBDI(29) => '1',
      DIBDI(28) => '1',
      DIBDI(27) => '1',
      DIBDI(26) => '1',
      DIBDI(25) => '1',
      DIBDI(24) => '1',
      DIBDI(23) => '1',
      DIBDI(22) => '1',
      DIBDI(21) => '1',
      DIBDI(20) => '1',
      DIBDI(19) => '1',
      DIBDI(18) => '1',
      DIBDI(17) => '1',
      DIBDI(16) => '1',
      DIBDI(15) => '1',
      DIBDI(14) => '1',
      DIBDI(13) => '1',
      DIBDI(12) => '1',
      DIBDI(11) => '1',
      DIBDI(10) => '1',
      DIBDI(9) => '1',
      DIBDI(8) => '1',
      DIBDI(7) => '1',
      DIBDI(6) => '1',
      DIBDI(5) => '1',
      DIBDI(4) => '1',
      DIBDI(3) => '1',
      DIBDI(2) => '1',
      DIBDI(1) => '1',
      DIBDI(0) => '1',
      DIPADIP(3 downto 0) => din(71 downto 68),
      DIPBDIP(3) => '1',
      DIPBDIP(2) => '1',
      DIPBDIP(1) => '1',
      DIPBDIP(0) => '1',
      DOADO(31 downto 0) => NLW_fifo_ram_reg_1_DOADO_UNCONNECTED(31 downto 0),
      DOBDO(31) => n_36_fifo_ram_reg_1,
      DOBDO(30) => n_37_fifo_ram_reg_1,
      DOBDO(29) => n_38_fifo_ram_reg_1,
      DOBDO(28) => n_39_fifo_ram_reg_1,
      DOBDO(27) => n_40_fifo_ram_reg_1,
      DOBDO(26) => n_41_fifo_ram_reg_1,
      DOBDO(25) => n_42_fifo_ram_reg_1,
      DOBDO(24) => n_43_fifo_ram_reg_1,
      DOBDO(23) => n_44_fifo_ram_reg_1,
      DOBDO(22) => n_45_fifo_ram_reg_1,
      DOBDO(21) => n_46_fifo_ram_reg_1,
      DOBDO(20) => n_47_fifo_ram_reg_1,
      DOBDO(19) => n_48_fifo_ram_reg_1,
      DOBDO(18) => n_49_fifo_ram_reg_1,
      DOBDO(17) => n_50_fifo_ram_reg_1,
      DOBDO(16) => n_51_fifo_ram_reg_1,
      DOBDO(15) => n_52_fifo_ram_reg_1,
      DOBDO(14) => n_53_fifo_ram_reg_1,
      DOBDO(13) => n_54_fifo_ram_reg_1,
      DOBDO(12) => n_55_fifo_ram_reg_1,
      DOBDO(11) => n_56_fifo_ram_reg_1,
      DOBDO(10) => n_57_fifo_ram_reg_1,
      DOBDO(9) => n_58_fifo_ram_reg_1,
      DOBDO(8) => n_59_fifo_ram_reg_1,
      DOBDO(7) => n_60_fifo_ram_reg_1,
      DOBDO(6) => n_61_fifo_ram_reg_1,
      DOBDO(5) => n_62_fifo_ram_reg_1,
      DOBDO(4) => n_63_fifo_ram_reg_1,
      DOBDO(3) => n_64_fifo_ram_reg_1,
      DOBDO(2) => n_65_fifo_ram_reg_1,
      DOBDO(1) => n_66_fifo_ram_reg_1,
      DOBDO(0) => n_67_fifo_ram_reg_1,
      DOPADOP(3 downto 0) => NLW_fifo_ram_reg_1_DOPADOP_UNCONNECTED(3 downto 0),
      DOPBDOP(3) => n_72_fifo_ram_reg_1,
      DOPBDOP(2) => n_73_fifo_ram_reg_1,
      DOPBDOP(1) => n_74_fifo_ram_reg_1,
      DOPBDOP(0) => n_75_fifo_ram_reg_1,
      ECCPARITY(7 downto 0) => NLW_fifo_ram_reg_1_ECCPARITY_UNCONNECTED(7 downto 0),
      ENARDEN => idf_de,
      ENBWREN => n_0_fifo_ram_reg_0_i_1,
      INJECTDBITERR => NLW_fifo_ram_reg_1_INJECTDBITERR_UNCONNECTED,
      INJECTSBITERR => NLW_fifo_ram_reg_1_INJECTSBITERR_UNCONNECTED,
      RDADDRECC(8 downto 0) => NLW_fifo_ram_reg_1_RDADDRECC_UNCONNECTED(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => rst_rd_2,
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => NLW_fifo_ram_reg_1_SBITERR_UNCONNECTED,
      WEA(3) => vid_io_in_ce,
      WEA(2) => vid_io_in_ce,
      WEA(1) => vid_io_in_ce,
      WEA(0) => vid_io_in_ce,
      WEBWE(7) => '0',
      WEBWE(6) => '0',
      WEBWE(5) => '0',
      WEBWE(4) => '0',
      WEBWE(3) => '0',
      WEBWE(2) => '0',
      WEBWE(1) => '0',
      WEBWE(0) => '0'
    );
fifo_ram_reg_2: unisim.vcomponents.RAMB18E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      INIT_A => X"00000",
      INIT_B => X"00000",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 18,
      READ_WIDTH_B => 18,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"00000",
      SRVAL_B => X"00000",
      WRITE_MODE_A => "NO_CHANGE",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 18,
      WRITE_WIDTH_B => 18
    )
    port map (
      ADDRARDADDR(13 downto 4) => wr_ptr_reg(9 downto 0),
      ADDRARDADDR(3) => '1',
      ADDRARDADDR(2) => '1',
      ADDRARDADDR(1) => '1',
      ADDRARDADDR(0) => '1',
      ADDRBWRADDR(13) => \n_0_rd_ptr_reg_rep[9]\,
      ADDRBWRADDR(12) => \n_0_rd_ptr_reg_rep[8]\,
      ADDRBWRADDR(11) => \n_0_rd_ptr_reg_rep[7]\,
      ADDRBWRADDR(10) => \n_0_rd_ptr_reg_rep[6]\,
      ADDRBWRADDR(9) => \n_0_rd_ptr_reg_rep[5]\,
      ADDRBWRADDR(8) => \n_0_rd_ptr_reg_rep[4]\,
      ADDRBWRADDR(7) => \n_0_rd_ptr_reg_rep[3]\,
      ADDRBWRADDR(6) => \n_0_rd_ptr_reg_rep[2]\,
      ADDRBWRADDR(5) => \n_0_rd_ptr_reg_rep[1]\,
      ADDRBWRADDR(4) => \n_0_rd_ptr_reg_rep[0]\,
      ADDRBWRADDR(3) => '1',
      ADDRBWRADDR(2) => '1',
      ADDRBWRADDR(1) => '1',
      ADDRBWRADDR(0) => '1',
      CLKARDCLK => vid_io_in_clk,
      CLKBWRCLK => aclk,
      DIADI(15) => '0',
      DIADI(14) => '0',
      DIADI(13) => '0',
      DIADI(12) => '0',
      DIADI(11) => '0',
      DIADI(10 downto 0) => din(82 downto 72),
      DIBDI(15) => '0',
      DIBDI(14) => '0',
      DIBDI(13) => '0',
      DIBDI(12) => '0',
      DIBDI(11) => '0',
      DIBDI(10) => '1',
      DIBDI(9) => '1',
      DIBDI(8) => '1',
      DIBDI(7) => '1',
      DIBDI(6) => '1',
      DIBDI(5) => '1',
      DIBDI(4) => '1',
      DIBDI(3) => '1',
      DIBDI(2) => '1',
      DIBDI(1) => '1',
      DIBDI(0) => '1',
      DIPADIP(1) => '0',
      DIPADIP(0) => '0',
      DIPBDIP(1) => '0',
      DIPBDIP(0) => '0',
      DOADO(15 downto 0) => NLW_fifo_ram_reg_2_DOADO_UNCONNECTED(15 downto 0),
      DOBDO(15 downto 11) => NLW_fifo_ram_reg_2_DOBDO_UNCONNECTED(15 downto 11),
      DOBDO(10 downto 9) => \^dout0_out\(1 downto 0),
      DOBDO(8) => fifo_eol,
      DOBDO(7) => n_24_fifo_ram_reg_2,
      DOBDO(6) => n_25_fifo_ram_reg_2,
      DOBDO(5) => n_26_fifo_ram_reg_2,
      DOBDO(4) => n_27_fifo_ram_reg_2,
      DOBDO(3) => n_28_fifo_ram_reg_2,
      DOBDO(2) => n_29_fifo_ram_reg_2,
      DOBDO(1) => n_30_fifo_ram_reg_2,
      DOBDO(0) => n_31_fifo_ram_reg_2,
      DOPADOP(1 downto 0) => NLW_fifo_ram_reg_2_DOPADOP_UNCONNECTED(1 downto 0),
      DOPBDOP(1 downto 0) => NLW_fifo_ram_reg_2_DOPBDOP_UNCONNECTED(1 downto 0),
      ENARDEN => idf_de,
      ENBWREN => n_0_fifo_ram_reg_0_i_1,
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => rst_rd_2,
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      WEA(1) => vid_io_in_ce,
      WEA(0) => vid_io_in_ce,
      WEBWE(3) => '0',
      WEBWE(2) => '0',
      WEBWE(1) => '0',
      WEBWE(0) => '0'
    );
full_reg: unisim.vcomponents.FDRE
    port map (
      C => vid_io_in_clk,
      CE => '1',
      D => full_comb,
      Q => fifo_full,
      R => rst_wr_2
    );
\ptr_diff_rd_dom[3]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => wr_ptr_rd_dom(3),
      I1 => rd_ptr_reg(3),
      O => \n_0_ptr_diff_rd_dom[3]_i_2\
    );
\ptr_diff_rd_dom[3]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => wr_ptr_rd_dom(2),
      I1 => rd_ptr_reg(2),
      O => \n_0_ptr_diff_rd_dom[3]_i_3\
    );
\ptr_diff_rd_dom[3]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => wr_ptr_rd_dom(1),
      I1 => rd_ptr_reg(1),
      O => \n_0_ptr_diff_rd_dom[3]_i_4\
    );
\ptr_diff_rd_dom[3]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => wr_ptr_rd_dom(0),
      I1 => rd_ptr_reg(0),
      O => \n_0_ptr_diff_rd_dom[3]_i_5\
    );
\ptr_diff_rd_dom[7]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => wr_ptr_rd_dom(7),
      I1 => rd_ptr_reg(7),
      O => \n_0_ptr_diff_rd_dom[7]_i_2\
    );
\ptr_diff_rd_dom[7]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => wr_ptr_rd_dom(6),
      I1 => rd_ptr_reg(6),
      O => \n_0_ptr_diff_rd_dom[7]_i_3\
    );
\ptr_diff_rd_dom[7]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => wr_ptr_rd_dom(5),
      I1 => rd_ptr_reg(5),
      O => \n_0_ptr_diff_rd_dom[7]_i_4\
    );
\ptr_diff_rd_dom[7]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => wr_ptr_rd_dom(4),
      I1 => rd_ptr_reg(4),
      O => \n_0_ptr_diff_rd_dom[7]_i_5\
    );
\ptr_diff_rd_dom[9]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => wr_ptr_rd_dom(11),
      I1 => rd_ptr_reg(11),
      O => \n_0_ptr_diff_rd_dom[9]_i_2\
    );
\ptr_diff_rd_dom[9]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => wr_ptr_rd_dom(10),
      I1 => rd_ptr_reg(10),
      O => \n_0_ptr_diff_rd_dom[9]_i_3\
    );
\ptr_diff_rd_dom[9]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => wr_ptr_rd_dom(9),
      I1 => rd_ptr_reg(9),
      O => \n_0_ptr_diff_rd_dom[9]_i_4\
    );
\ptr_diff_rd_dom[9]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => wr_ptr_rd_dom(8),
      I1 => rd_ptr_reg(8),
      O => \n_0_ptr_diff_rd_dom[9]_i_5\
    );
\ptr_diff_rd_dom_reg[2]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => '1',
      D => ptr_diff_rd_dom_comb0_out(2),
      Q => level_rd(2),
      R => rst_rd_2
    );
\ptr_diff_rd_dom_reg[3]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => '1',
      D => ptr_diff_rd_dom_comb0_out(3),
      Q => level_rd(3),
      R => rst_rd_2
    );
\ptr_diff_rd_dom_reg[3]_i_1\: unisim.vcomponents.CARRY4
    port map (
      CI => '0',
      CO(3) => \n_0_ptr_diff_rd_dom_reg[3]_i_1\,
      CO(2) => \n_1_ptr_diff_rd_dom_reg[3]_i_1\,
      CO(1) => \n_2_ptr_diff_rd_dom_reg[3]_i_1\,
      CO(0) => \n_3_ptr_diff_rd_dom_reg[3]_i_1\,
      CYINIT => '1',
      DI(3 downto 0) => wr_ptr_rd_dom(3 downto 0),
      O(3 downto 0) => ptr_diff_rd_dom_comb0_out(3 downto 0),
      S(3) => \n_0_ptr_diff_rd_dom[3]_i_2\,
      S(2) => \n_0_ptr_diff_rd_dom[3]_i_3\,
      S(1) => \n_0_ptr_diff_rd_dom[3]_i_4\,
      S(0) => \n_0_ptr_diff_rd_dom[3]_i_5\
    );
\ptr_diff_rd_dom_reg[4]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => '1',
      D => ptr_diff_rd_dom_comb0_out(4),
      Q => level_rd(4),
      R => rst_rd_2
    );
\ptr_diff_rd_dom_reg[5]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => '1',
      D => ptr_diff_rd_dom_comb0_out(5),
      Q => level_rd(5),
      R => rst_rd_2
    );
\ptr_diff_rd_dom_reg[6]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => '1',
      D => ptr_diff_rd_dom_comb0_out(6),
      Q => level_rd(6),
      R => rst_rd_2
    );
\ptr_diff_rd_dom_reg[7]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => '1',
      D => ptr_diff_rd_dom_comb0_out(7),
      Q => level_rd(7),
      R => rst_rd_2
    );
\ptr_diff_rd_dom_reg[7]_i_1\: unisim.vcomponents.CARRY4
    port map (
      CI => \n_0_ptr_diff_rd_dom_reg[3]_i_1\,
      CO(3) => \n_0_ptr_diff_rd_dom_reg[7]_i_1\,
      CO(2) => \n_1_ptr_diff_rd_dom_reg[7]_i_1\,
      CO(1) => \n_2_ptr_diff_rd_dom_reg[7]_i_1\,
      CO(0) => \n_3_ptr_diff_rd_dom_reg[7]_i_1\,
      CYINIT => '0',
      DI(3 downto 0) => wr_ptr_rd_dom(7 downto 4),
      O(3 downto 0) => ptr_diff_rd_dom_comb0_out(7 downto 4),
      S(3) => \n_0_ptr_diff_rd_dom[7]_i_2\,
      S(2) => \n_0_ptr_diff_rd_dom[7]_i_3\,
      S(1) => \n_0_ptr_diff_rd_dom[7]_i_4\,
      S(0) => \n_0_ptr_diff_rd_dom[7]_i_5\
    );
\ptr_diff_rd_dom_reg[8]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => '1',
      D => ptr_diff_rd_dom_comb0_out(8),
      Q => level_rd(8),
      R => rst_rd_2
    );
\ptr_diff_rd_dom_reg[9]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => '1',
      D => ptr_diff_rd_dom_comb0_out(9),
      Q => level_rd(9),
      R => rst_rd_2
    );
\ptr_diff_rd_dom_reg[9]_i_1\: unisim.vcomponents.CARRY4
    port map (
      CI => \n_0_ptr_diff_rd_dom_reg[7]_i_1\,
      CO(3) => \NLW_ptr_diff_rd_dom_reg[9]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \n_1_ptr_diff_rd_dom_reg[9]_i_1\,
      CO(1) => \n_2_ptr_diff_rd_dom_reg[9]_i_1\,
      CO(0) => \n_3_ptr_diff_rd_dom_reg[9]_i_1\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2 downto 0) => wr_ptr_rd_dom(10 downto 8),
      O(3 downto 0) => ptr_diff_rd_dom_comb0_out(11 downto 8),
      S(3) => \n_0_ptr_diff_rd_dom[9]_i_2\,
      S(2) => \n_0_ptr_diff_rd_dom[9]_i_3\,
      S(1) => \n_0_ptr_diff_rd_dom[9]_i_4\,
      S(0) => \n_0_ptr_diff_rd_dom[9]_i_5\
    );
ram_out_rd_error_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFBF0080"
    )
    port map (
      I0 => empty_comb,
      I1 => rd_en,
      I2 => aclken,
      I3 => rst_rd_2,
      I4 => ram_out_rd_error,
      O => n_0_ram_out_rd_error_i_1
    );
ram_out_rd_error_reg: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => '1',
      D => n_0_ram_out_rd_error_i_1,
      Q => ram_out_rd_error,
      R => '0'
    );
\rd_data[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BAAA0000"
    )
    port map (
      I0 => first_sof_reg,
      I1 => \^dout0_out\(1),
      I2 => p_0_in6_in,
      I3 => \^dout0_out\(0),
      I4 => n_67_fifo_ram_reg_0,
      O => D(0)
    );
\rd_data[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BAAA0000"
    )
    port map (
      I0 => first_sof_reg,
      I1 => \^dout0_out\(1),
      I2 => p_0_in6_in,
      I3 => \^dout0_out\(0),
      I4 => n_57_fifo_ram_reg_0,
      O => D(10)
    );
\rd_data[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BAAA0000"
    )
    port map (
      I0 => first_sof_reg,
      I1 => \^dout0_out\(1),
      I2 => p_0_in6_in,
      I3 => \^dout0_out\(0),
      I4 => n_56_fifo_ram_reg_0,
      O => D(11)
    );
\rd_data[12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BAAA0000"
    )
    port map (
      I0 => first_sof_reg,
      I1 => \^dout0_out\(1),
      I2 => p_0_in6_in,
      I3 => \^dout0_out\(0),
      I4 => n_55_fifo_ram_reg_0,
      O => D(12)
    );
\rd_data[13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BAAA0000"
    )
    port map (
      I0 => first_sof_reg,
      I1 => \^dout0_out\(1),
      I2 => p_0_in6_in,
      I3 => \^dout0_out\(0),
      I4 => n_54_fifo_ram_reg_0,
      O => D(13)
    );
\rd_data[14]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BAAA0000"
    )
    port map (
      I0 => first_sof_reg,
      I1 => \^dout0_out\(1),
      I2 => p_0_in6_in,
      I3 => \^dout0_out\(0),
      I4 => n_53_fifo_ram_reg_0,
      O => D(14)
    );
\rd_data[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BAAA0000"
    )
    port map (
      I0 => first_sof_reg,
      I1 => \^dout0_out\(1),
      I2 => p_0_in6_in,
      I3 => \^dout0_out\(0),
      I4 => n_52_fifo_ram_reg_0,
      O => D(15)
    );
\rd_data[16]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BAAA0000"
    )
    port map (
      I0 => first_sof_reg,
      I1 => \^dout0_out\(1),
      I2 => p_0_in6_in,
      I3 => \^dout0_out\(0),
      I4 => n_51_fifo_ram_reg_0,
      O => D(16)
    );
\rd_data[17]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BAAA0000"
    )
    port map (
      I0 => first_sof_reg,
      I1 => \^dout0_out\(1),
      I2 => p_0_in6_in,
      I3 => \^dout0_out\(0),
      I4 => n_50_fifo_ram_reg_0,
      O => D(17)
    );
\rd_data[18]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BAAA0000"
    )
    port map (
      I0 => first_sof_reg,
      I1 => \^dout0_out\(1),
      I2 => p_0_in6_in,
      I3 => \^dout0_out\(0),
      I4 => n_49_fifo_ram_reg_0,
      O => D(18)
    );
\rd_data[19]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BAAA0000"
    )
    port map (
      I0 => first_sof_reg,
      I1 => \^dout0_out\(1),
      I2 => p_0_in6_in,
      I3 => \^dout0_out\(0),
      I4 => n_48_fifo_ram_reg_0,
      O => D(19)
    );
\rd_data[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BAAA0000"
    )
    port map (
      I0 => first_sof_reg,
      I1 => \^dout0_out\(1),
      I2 => p_0_in6_in,
      I3 => \^dout0_out\(0),
      I4 => n_66_fifo_ram_reg_0,
      O => D(1)
    );
\rd_data[20]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BAAA0000"
    )
    port map (
      I0 => first_sof_reg,
      I1 => \^dout0_out\(1),
      I2 => p_0_in6_in,
      I3 => \^dout0_out\(0),
      I4 => n_47_fifo_ram_reg_0,
      O => D(20)
    );
\rd_data[21]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BAAA0000"
    )
    port map (
      I0 => first_sof_reg,
      I1 => \^dout0_out\(1),
      I2 => p_0_in6_in,
      I3 => \^dout0_out\(0),
      I4 => n_46_fifo_ram_reg_0,
      O => D(21)
    );
\rd_data[22]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BAAA0000"
    )
    port map (
      I0 => first_sof_reg,
      I1 => \^dout0_out\(1),
      I2 => p_0_in6_in,
      I3 => \^dout0_out\(0),
      I4 => n_45_fifo_ram_reg_0,
      O => D(22)
    );
\rd_data[23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BAAA0000"
    )
    port map (
      I0 => first_sof_reg,
      I1 => \^dout0_out\(1),
      I2 => p_0_in6_in,
      I3 => \^dout0_out\(0),
      I4 => n_44_fifo_ram_reg_0,
      O => D(23)
    );
\rd_data[24]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BAAA0000"
    )
    port map (
      I0 => first_sof_reg,
      I1 => \^dout0_out\(1),
      I2 => p_0_in6_in,
      I3 => \^dout0_out\(0),
      I4 => n_43_fifo_ram_reg_0,
      O => D(24)
    );
\rd_data[25]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BAAA0000"
    )
    port map (
      I0 => first_sof_reg,
      I1 => \^dout0_out\(1),
      I2 => p_0_in6_in,
      I3 => \^dout0_out\(0),
      I4 => n_42_fifo_ram_reg_0,
      O => D(25)
    );
\rd_data[26]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BAAA0000"
    )
    port map (
      I0 => first_sof_reg,
      I1 => \^dout0_out\(1),
      I2 => p_0_in6_in,
      I3 => \^dout0_out\(0),
      I4 => n_41_fifo_ram_reg_0,
      O => D(26)
    );
\rd_data[27]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BAAA0000"
    )
    port map (
      I0 => first_sof_reg,
      I1 => \^dout0_out\(1),
      I2 => p_0_in6_in,
      I3 => \^dout0_out\(0),
      I4 => n_40_fifo_ram_reg_0,
      O => D(27)
    );
\rd_data[28]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BAAA0000"
    )
    port map (
      I0 => first_sof_reg,
      I1 => \^dout0_out\(1),
      I2 => p_0_in6_in,
      I3 => \^dout0_out\(0),
      I4 => n_39_fifo_ram_reg_0,
      O => D(28)
    );
\rd_data[29]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BAAA0000"
    )
    port map (
      I0 => first_sof_reg,
      I1 => \^dout0_out\(1),
      I2 => p_0_in6_in,
      I3 => \^dout0_out\(0),
      I4 => n_38_fifo_ram_reg_0,
      O => D(29)
    );
\rd_data[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BAAA0000"
    )
    port map (
      I0 => first_sof_reg,
      I1 => \^dout0_out\(1),
      I2 => p_0_in6_in,
      I3 => \^dout0_out\(0),
      I4 => n_65_fifo_ram_reg_0,
      O => D(2)
    );
\rd_data[30]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BAAA0000"
    )
    port map (
      I0 => first_sof_reg,
      I1 => \^dout0_out\(1),
      I2 => p_0_in6_in,
      I3 => \^dout0_out\(0),
      I4 => n_37_fifo_ram_reg_0,
      O => D(30)
    );
\rd_data[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BAAA0000"
    )
    port map (
      I0 => first_sof_reg,
      I1 => \^dout0_out\(1),
      I2 => p_0_in6_in,
      I3 => \^dout0_out\(0),
      I4 => n_36_fifo_ram_reg_0,
      O => D(31)
    );
\rd_data[32]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BAAA0000"
    )
    port map (
      I0 => first_sof_reg,
      I1 => \^dout0_out\(1),
      I2 => p_0_in6_in,
      I3 => \^dout0_out\(0),
      I4 => n_75_fifo_ram_reg_0,
      O => D(32)
    );
\rd_data[33]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BAAA0000"
    )
    port map (
      I0 => first_sof_reg,
      I1 => \^dout0_out\(1),
      I2 => p_0_in6_in,
      I3 => \^dout0_out\(0),
      I4 => n_74_fifo_ram_reg_0,
      O => D(33)
    );
\rd_data[34]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BAAA0000"
    )
    port map (
      I0 => first_sof_reg,
      I1 => \^dout0_out\(1),
      I2 => p_0_in6_in,
      I3 => \^dout0_out\(0),
      I4 => n_73_fifo_ram_reg_0,
      O => D(34)
    );
\rd_data[35]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BAAA0000"
    )
    port map (
      I0 => first_sof_reg,
      I1 => \^dout0_out\(1),
      I2 => p_0_in6_in,
      I3 => \^dout0_out\(0),
      I4 => n_72_fifo_ram_reg_0,
      O => D(35)
    );
\rd_data[36]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BAAA0000"
    )
    port map (
      I0 => first_sof_reg,
      I1 => \^dout0_out\(1),
      I2 => p_0_in6_in,
      I3 => \^dout0_out\(0),
      I4 => n_67_fifo_ram_reg_1,
      O => D(36)
    );
\rd_data[37]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BAAA0000"
    )
    port map (
      I0 => first_sof_reg,
      I1 => \^dout0_out\(1),
      I2 => p_0_in6_in,
      I3 => \^dout0_out\(0),
      I4 => n_66_fifo_ram_reg_1,
      O => D(37)
    );
\rd_data[38]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BAAA0000"
    )
    port map (
      I0 => first_sof_reg,
      I1 => \^dout0_out\(1),
      I2 => p_0_in6_in,
      I3 => \^dout0_out\(0),
      I4 => n_65_fifo_ram_reg_1,
      O => D(38)
    );
\rd_data[39]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BAAA0000"
    )
    port map (
      I0 => first_sof_reg,
      I1 => \^dout0_out\(1),
      I2 => p_0_in6_in,
      I3 => \^dout0_out\(0),
      I4 => n_64_fifo_ram_reg_1,
      O => D(39)
    );
\rd_data[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BAAA0000"
    )
    port map (
      I0 => first_sof_reg,
      I1 => \^dout0_out\(1),
      I2 => p_0_in6_in,
      I3 => \^dout0_out\(0),
      I4 => n_64_fifo_ram_reg_0,
      O => D(3)
    );
\rd_data[40]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BAAA0000"
    )
    port map (
      I0 => first_sof_reg,
      I1 => \^dout0_out\(1),
      I2 => p_0_in6_in,
      I3 => \^dout0_out\(0),
      I4 => n_63_fifo_ram_reg_1,
      O => D(40)
    );
\rd_data[41]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BAAA0000"
    )
    port map (
      I0 => first_sof_reg,
      I1 => \^dout0_out\(1),
      I2 => p_0_in6_in,
      I3 => \^dout0_out\(0),
      I4 => n_62_fifo_ram_reg_1,
      O => D(41)
    );
\rd_data[42]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BAAA0000"
    )
    port map (
      I0 => first_sof_reg,
      I1 => \^dout0_out\(1),
      I2 => p_0_in6_in,
      I3 => \^dout0_out\(0),
      I4 => n_61_fifo_ram_reg_1,
      O => D(42)
    );
\rd_data[43]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BAAA0000"
    )
    port map (
      I0 => first_sof_reg,
      I1 => \^dout0_out\(1),
      I2 => p_0_in6_in,
      I3 => \^dout0_out\(0),
      I4 => n_60_fifo_ram_reg_1,
      O => D(43)
    );
\rd_data[44]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BAAA0000"
    )
    port map (
      I0 => first_sof_reg,
      I1 => \^dout0_out\(1),
      I2 => p_0_in6_in,
      I3 => \^dout0_out\(0),
      I4 => n_59_fifo_ram_reg_1,
      O => D(44)
    );
\rd_data[45]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BAAA0000"
    )
    port map (
      I0 => first_sof_reg,
      I1 => \^dout0_out\(1),
      I2 => p_0_in6_in,
      I3 => \^dout0_out\(0),
      I4 => n_58_fifo_ram_reg_1,
      O => D(45)
    );
\rd_data[46]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BAAA0000"
    )
    port map (
      I0 => first_sof_reg,
      I1 => \^dout0_out\(1),
      I2 => p_0_in6_in,
      I3 => \^dout0_out\(0),
      I4 => n_57_fifo_ram_reg_1,
      O => D(46)
    );
\rd_data[47]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BAAA0000"
    )
    port map (
      I0 => first_sof_reg,
      I1 => \^dout0_out\(1),
      I2 => p_0_in6_in,
      I3 => \^dout0_out\(0),
      I4 => n_56_fifo_ram_reg_1,
      O => D(47)
    );
\rd_data[48]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BAAA0000"
    )
    port map (
      I0 => first_sof_reg,
      I1 => \^dout0_out\(1),
      I2 => p_0_in6_in,
      I3 => \^dout0_out\(0),
      I4 => n_55_fifo_ram_reg_1,
      O => D(48)
    );
\rd_data[49]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BAAA0000"
    )
    port map (
      I0 => first_sof_reg,
      I1 => \^dout0_out\(1),
      I2 => p_0_in6_in,
      I3 => \^dout0_out\(0),
      I4 => n_54_fifo_ram_reg_1,
      O => D(49)
    );
\rd_data[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BAAA0000"
    )
    port map (
      I0 => first_sof_reg,
      I1 => \^dout0_out\(1),
      I2 => p_0_in6_in,
      I3 => \^dout0_out\(0),
      I4 => n_63_fifo_ram_reg_0,
      O => D(4)
    );
\rd_data[50]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BAAA0000"
    )
    port map (
      I0 => first_sof_reg,
      I1 => \^dout0_out\(1),
      I2 => p_0_in6_in,
      I3 => \^dout0_out\(0),
      I4 => n_53_fifo_ram_reg_1,
      O => D(50)
    );
\rd_data[51]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BAAA0000"
    )
    port map (
      I0 => first_sof_reg,
      I1 => \^dout0_out\(1),
      I2 => p_0_in6_in,
      I3 => \^dout0_out\(0),
      I4 => n_52_fifo_ram_reg_1,
      O => D(51)
    );
\rd_data[52]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BAAA0000"
    )
    port map (
      I0 => first_sof_reg,
      I1 => \^dout0_out\(1),
      I2 => p_0_in6_in,
      I3 => \^dout0_out\(0),
      I4 => n_51_fifo_ram_reg_1,
      O => D(52)
    );
\rd_data[53]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BAAA0000"
    )
    port map (
      I0 => first_sof_reg,
      I1 => \^dout0_out\(1),
      I2 => p_0_in6_in,
      I3 => \^dout0_out\(0),
      I4 => n_50_fifo_ram_reg_1,
      O => D(53)
    );
\rd_data[54]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BAAA0000"
    )
    port map (
      I0 => first_sof_reg,
      I1 => \^dout0_out\(1),
      I2 => p_0_in6_in,
      I3 => \^dout0_out\(0),
      I4 => n_49_fifo_ram_reg_1,
      O => D(54)
    );
\rd_data[55]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BAAA0000"
    )
    port map (
      I0 => first_sof_reg,
      I1 => \^dout0_out\(1),
      I2 => p_0_in6_in,
      I3 => \^dout0_out\(0),
      I4 => n_48_fifo_ram_reg_1,
      O => D(55)
    );
\rd_data[56]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BAAA0000"
    )
    port map (
      I0 => first_sof_reg,
      I1 => \^dout0_out\(1),
      I2 => p_0_in6_in,
      I3 => \^dout0_out\(0),
      I4 => n_47_fifo_ram_reg_1,
      O => D(56)
    );
\rd_data[57]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BAAA0000"
    )
    port map (
      I0 => first_sof_reg,
      I1 => \^dout0_out\(1),
      I2 => p_0_in6_in,
      I3 => \^dout0_out\(0),
      I4 => n_46_fifo_ram_reg_1,
      O => D(57)
    );
\rd_data[58]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BAAA0000"
    )
    port map (
      I0 => first_sof_reg,
      I1 => \^dout0_out\(1),
      I2 => p_0_in6_in,
      I3 => \^dout0_out\(0),
      I4 => n_45_fifo_ram_reg_1,
      O => D(58)
    );
\rd_data[59]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BAAA0000"
    )
    port map (
      I0 => first_sof_reg,
      I1 => \^dout0_out\(1),
      I2 => p_0_in6_in,
      I3 => \^dout0_out\(0),
      I4 => n_44_fifo_ram_reg_1,
      O => D(59)
    );
\rd_data[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BAAA0000"
    )
    port map (
      I0 => first_sof_reg,
      I1 => \^dout0_out\(1),
      I2 => p_0_in6_in,
      I3 => \^dout0_out\(0),
      I4 => n_62_fifo_ram_reg_0,
      O => D(5)
    );
\rd_data[60]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BAAA0000"
    )
    port map (
      I0 => first_sof_reg,
      I1 => \^dout0_out\(1),
      I2 => p_0_in6_in,
      I3 => \^dout0_out\(0),
      I4 => n_43_fifo_ram_reg_1,
      O => D(60)
    );
\rd_data[61]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BAAA0000"
    )
    port map (
      I0 => first_sof_reg,
      I1 => \^dout0_out\(1),
      I2 => p_0_in6_in,
      I3 => \^dout0_out\(0),
      I4 => n_42_fifo_ram_reg_1,
      O => D(61)
    );
\rd_data[62]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BAAA0000"
    )
    port map (
      I0 => first_sof_reg,
      I1 => \^dout0_out\(1),
      I2 => p_0_in6_in,
      I3 => \^dout0_out\(0),
      I4 => n_41_fifo_ram_reg_1,
      O => D(62)
    );
\rd_data[63]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BAAA0000"
    )
    port map (
      I0 => first_sof_reg,
      I1 => \^dout0_out\(1),
      I2 => p_0_in6_in,
      I3 => \^dout0_out\(0),
      I4 => n_40_fifo_ram_reg_1,
      O => D(63)
    );
\rd_data[64]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BAAA0000"
    )
    port map (
      I0 => first_sof_reg,
      I1 => \^dout0_out\(1),
      I2 => p_0_in6_in,
      I3 => \^dout0_out\(0),
      I4 => n_39_fifo_ram_reg_1,
      O => D(64)
    );
\rd_data[65]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BAAA0000"
    )
    port map (
      I0 => first_sof_reg,
      I1 => \^dout0_out\(1),
      I2 => p_0_in6_in,
      I3 => \^dout0_out\(0),
      I4 => n_38_fifo_ram_reg_1,
      O => D(65)
    );
\rd_data[66]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BAAA0000"
    )
    port map (
      I0 => first_sof_reg,
      I1 => \^dout0_out\(1),
      I2 => p_0_in6_in,
      I3 => \^dout0_out\(0),
      I4 => n_37_fifo_ram_reg_1,
      O => D(66)
    );
\rd_data[67]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BAAA0000"
    )
    port map (
      I0 => first_sof_reg,
      I1 => \^dout0_out\(1),
      I2 => p_0_in6_in,
      I3 => \^dout0_out\(0),
      I4 => n_36_fifo_ram_reg_1,
      O => D(67)
    );
\rd_data[68]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BAAA0000"
    )
    port map (
      I0 => first_sof_reg,
      I1 => \^dout0_out\(1),
      I2 => p_0_in6_in,
      I3 => \^dout0_out\(0),
      I4 => n_75_fifo_ram_reg_1,
      O => D(68)
    );
\rd_data[69]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BAAA0000"
    )
    port map (
      I0 => first_sof_reg,
      I1 => \^dout0_out\(1),
      I2 => p_0_in6_in,
      I3 => \^dout0_out\(0),
      I4 => n_74_fifo_ram_reg_1,
      O => D(69)
    );
\rd_data[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BAAA0000"
    )
    port map (
      I0 => first_sof_reg,
      I1 => \^dout0_out\(1),
      I2 => p_0_in6_in,
      I3 => \^dout0_out\(0),
      I4 => n_61_fifo_ram_reg_0,
      O => D(6)
    );
\rd_data[70]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BAAA0000"
    )
    port map (
      I0 => first_sof_reg,
      I1 => \^dout0_out\(1),
      I2 => p_0_in6_in,
      I3 => \^dout0_out\(0),
      I4 => n_73_fifo_ram_reg_1,
      O => D(70)
    );
\rd_data[71]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BAAA0000"
    )
    port map (
      I0 => first_sof_reg,
      I1 => \^dout0_out\(1),
      I2 => p_0_in6_in,
      I3 => \^dout0_out\(0),
      I4 => n_72_fifo_ram_reg_1,
      O => D(71)
    );
\rd_data[72]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BAAA0000"
    )
    port map (
      I0 => first_sof_reg,
      I1 => \^dout0_out\(1),
      I2 => p_0_in6_in,
      I3 => \^dout0_out\(0),
      I4 => n_31_fifo_ram_reg_2,
      O => D(72)
    );
\rd_data[73]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BAAA0000"
    )
    port map (
      I0 => first_sof_reg,
      I1 => \^dout0_out\(1),
      I2 => p_0_in6_in,
      I3 => \^dout0_out\(0),
      I4 => n_30_fifo_ram_reg_2,
      O => D(73)
    );
\rd_data[74]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BAAA0000"
    )
    port map (
      I0 => first_sof_reg,
      I1 => \^dout0_out\(1),
      I2 => p_0_in6_in,
      I3 => \^dout0_out\(0),
      I4 => n_29_fifo_ram_reg_2,
      O => D(74)
    );
\rd_data[75]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BAAA0000"
    )
    port map (
      I0 => first_sof_reg,
      I1 => \^dout0_out\(1),
      I2 => p_0_in6_in,
      I3 => \^dout0_out\(0),
      I4 => n_28_fifo_ram_reg_2,
      O => D(75)
    );
\rd_data[76]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BAAA0000"
    )
    port map (
      I0 => first_sof_reg,
      I1 => \^dout0_out\(1),
      I2 => p_0_in6_in,
      I3 => \^dout0_out\(0),
      I4 => n_27_fifo_ram_reg_2,
      O => D(76)
    );
\rd_data[77]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BAAA0000"
    )
    port map (
      I0 => first_sof_reg,
      I1 => \^dout0_out\(1),
      I2 => p_0_in6_in,
      I3 => \^dout0_out\(0),
      I4 => n_26_fifo_ram_reg_2,
      O => D(77)
    );
\rd_data[78]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BAAA0000"
    )
    port map (
      I0 => first_sof_reg,
      I1 => \^dout0_out\(1),
      I2 => p_0_in6_in,
      I3 => \^dout0_out\(0),
      I4 => n_25_fifo_ram_reg_2,
      O => D(78)
    );
\rd_data[79]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
    port map (
      I0 => rst,
      I1 => aresetn,
      O => \^o1\
    );
\rd_data[79]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A2AA2222A2AAA2AA"
    )
    port map (
      I0 => aclken,
      I1 => full_frame,
      I2 => m_axis_video_tready,
      I3 => I1,
      I4 => fifo_eol,
      I5 => fifo_empty,
      O => E(0)
    );
\rd_data[79]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BAAA0000"
    )
    port map (
      I0 => first_sof_reg,
      I1 => \^dout0_out\(1),
      I2 => p_0_in6_in,
      I3 => \^dout0_out\(0),
      I4 => n_24_fifo_ram_reg_2,
      O => D(79)
    );
\rd_data[79]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF08"
    )
    port map (
      I0 => \^dout0_out\(0),
      I1 => p_0_in6_in,
      I2 => \^dout0_out\(1),
      I3 => first_sof_reg,
      O => full_frame
    );
\rd_data[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BAAA0000"
    )
    port map (
      I0 => first_sof_reg,
      I1 => \^dout0_out\(1),
      I2 => p_0_in6_in,
      I3 => \^dout0_out\(0),
      I4 => n_60_fifo_ram_reg_0,
      O => D(7)
    );
\rd_data[80]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BAAA0000"
    )
    port map (
      I0 => first_sof_reg,
      I1 => \^dout0_out\(1),
      I2 => p_0_in6_in,
      I3 => \^dout0_out\(0),
      I4 => fifo_eol,
      O => D(80)
    );
\rd_data[81]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA00"
    )
    port map (
      I0 => first_sof_reg,
      I1 => \^dout0_out\(1),
      I2 => p_0_in6_in,
      I3 => \^dout0_out\(0),
      O => D(81)
    );
\rd_data[82]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => first_sof_reg,
      I1 => \^dout0_out\(1),
      O => D(82)
    );
\rd_data[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BAAA0000"
    )
    port map (
      I0 => first_sof_reg,
      I1 => \^dout0_out\(1),
      I2 => p_0_in6_in,
      I3 => \^dout0_out\(0),
      I4 => n_59_fifo_ram_reg_0,
      O => D(8)
    );
\rd_data[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BAAA0000"
    )
    port map (
      I0 => first_sof_reg,
      I1 => \^dout0_out\(1),
      I2 => p_0_in6_in,
      I3 => \^dout0_out\(0),
      I4 => n_58_fifo_ram_reg_0,
      O => D(9)
    );
rd_error_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
    port map (
      I0 => ram_out_rd_error,
      I1 => aclken,
      I2 => rd_en,
      I3 => \^o2\,
      O => n_0_rd_error_i_1
    );
rd_error_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBBBBBBBBB8B8B8"
    )
    port map (
      I0 => rd_en0,
      I1 => full_frame,
      I2 => fifo_full,
      I3 => level_rd(2),
      I4 => level_rd(3),
      I5 => n_0_rd_error_i_3,
      O => rd_en
    );
rd_error_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
    port map (
      I0 => level_rd(8),
      I1 => level_rd(9),
      I2 => level_rd(4),
      I3 => level_rd(7),
      I4 => level_rd(6),
      I5 => level_rd(5),
      O => n_0_rd_error_i_3
    );
rd_error_reg: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => '1',
      D => n_0_rd_error_i_1,
      Q => \^o2\,
      R => rst_rd_2
    );
\rd_ptr[0]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => rd_ptr_reg(0),
      O => p_0_in(0)
    );
\rd_ptr_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => aclk,
      CE => \n_0_rd_ptr_rep[9]_i_1\,
      D => \n_0_rd_ptr_reg[0]_i_1\,
      Q => rd_ptr_reg(0),
      R => rst_rd_2
    );
\rd_ptr_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => aclk,
      CE => \n_0_rd_ptr_rep[9]_i_1\,
      D => \n_0_rd_ptr_reg[10]_i_1\,
      Q => rd_ptr_reg(10),
      R => rst_rd_2
    );
\rd_ptr_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => aclk,
      CE => \n_0_rd_ptr_rep[9]_i_1\,
      D => \n_0_rd_ptr_reg[11]_i_1\,
      Q => rd_ptr_reg(11),
      R => rst_rd_2
    );
\rd_ptr_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => aclk,
      CE => \n_0_rd_ptr_rep[9]_i_1\,
      D => \n_0_rd_ptr_reg[1]_i_1\,
      Q => rd_ptr_reg(1),
      R => rst_rd_2
    );
\rd_ptr_reg[1]_i_2_CARRY4\: unisim.vcomponents.CARRY4
    port map (
      CI => '0',
      CO(3) => \n_0_rd_ptr_reg[4]_i_2\,
      CO(2) => \n_0_rd_ptr_reg[3]_i_2\,
      CO(1) => \n_0_rd_ptr_reg[2]_i_2\,
      CO(0) => \n_0_rd_ptr_reg[1]_i_2\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '1',
      O(3) => \n_0_rd_ptr_reg[3]_i_1\,
      O(2) => \n_0_rd_ptr_reg[2]_i_1\,
      O(1) => \n_0_rd_ptr_reg[1]_i_1\,
      O(0) => \n_0_rd_ptr_reg[0]_i_1\,
      S(3 downto 1) => rd_ptr_reg(3 downto 1),
      S(0) => p_0_in(0)
    );
\rd_ptr_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => aclk,
      CE => \n_0_rd_ptr_rep[9]_i_1\,
      D => \n_0_rd_ptr_reg[2]_i_1\,
      Q => rd_ptr_reg(2),
      R => rst_rd_2
    );
\rd_ptr_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => aclk,
      CE => \n_0_rd_ptr_rep[9]_i_1\,
      D => \n_0_rd_ptr_reg[3]_i_1\,
      Q => rd_ptr_reg(3),
      R => rst_rd_2
    );
\rd_ptr_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => aclk,
      CE => \n_0_rd_ptr_rep[9]_i_1\,
      D => \n_0_rd_ptr_reg[4]_i_1\,
      Q => rd_ptr_reg(4),
      R => rst_rd_2
    );
\rd_ptr_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => aclk,
      CE => \n_0_rd_ptr_rep[9]_i_1\,
      D => \n_0_rd_ptr_reg[5]_i_1\,
      Q => rd_ptr_reg(5),
      R => rst_rd_2
    );
\rd_ptr_reg[5]_i_2_CARRY4\: unisim.vcomponents.CARRY4
    port map (
      CI => \n_0_rd_ptr_reg[4]_i_2\,
      CO(3) => \n_0_rd_ptr_reg[8]_i_2\,
      CO(2) => \n_0_rd_ptr_reg[7]_i_2\,
      CO(1) => \n_0_rd_ptr_reg[6]_i_2\,
      CO(0) => \n_0_rd_ptr_reg[5]_i_2\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => \n_0_rd_ptr_reg[7]_i_1\,
      O(2) => \n_0_rd_ptr_reg[6]_i_1\,
      O(1) => \n_0_rd_ptr_reg[5]_i_1\,
      O(0) => \n_0_rd_ptr_reg[4]_i_1\,
      S(3 downto 0) => rd_ptr_reg(7 downto 4)
    );
\rd_ptr_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => aclk,
      CE => \n_0_rd_ptr_rep[9]_i_1\,
      D => \n_0_rd_ptr_reg[6]_i_1\,
      Q => rd_ptr_reg(6),
      R => rst_rd_2
    );
\rd_ptr_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => aclk,
      CE => \n_0_rd_ptr_rep[9]_i_1\,
      D => \n_0_rd_ptr_reg[7]_i_1\,
      Q => rd_ptr_reg(7),
      R => rst_rd_2
    );
\rd_ptr_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => aclk,
      CE => \n_0_rd_ptr_rep[9]_i_1\,
      D => \n_0_rd_ptr_reg[8]_i_1\,
      Q => rd_ptr_reg(8),
      R => rst_rd_2
    );
\rd_ptr_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => aclk,
      CE => \n_0_rd_ptr_rep[9]_i_1\,
      D => \n_0_rd_ptr_reg[9]_i_1\,
      Q => rd_ptr_reg(9),
      R => rst_rd_2
    );
\rd_ptr_reg[9]_i_2_CARRY4\: unisim.vcomponents.CARRY4
    port map (
      CI => \n_0_rd_ptr_reg[8]_i_2\,
      CO(3 downto 2) => \NLW_rd_ptr_reg[9]_i_2_CARRY4_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \n_0_rd_ptr_reg[10]_i_2\,
      CO(0) => \n_0_rd_ptr_reg[9]_i_2\,
      CYINIT => '0',
      DI(3) => \NLW_rd_ptr_reg[9]_i_2_CARRY4_DI_UNCONNECTED\(3),
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => \n_0_rd_ptr_reg[11]_i_1\,
      O(2) => \n_0_rd_ptr_reg[10]_i_1\,
      O(1) => \n_0_rd_ptr_reg[9]_i_1\,
      O(0) => \n_0_rd_ptr_reg[8]_i_1\,
      S(3 downto 0) => rd_ptr_reg(11 downto 8)
    );
\rd_ptr_reg_rep[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => aclk,
      CE => \n_0_rd_ptr_rep[9]_i_1\,
      D => \n_7_rd_ptr_reg_rep[3]_i_1\,
      Q => \n_0_rd_ptr_reg_rep[0]\,
      R => rst_rd_2
    );
\rd_ptr_reg_rep[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => aclk,
      CE => \n_0_rd_ptr_rep[9]_i_1\,
      D => \n_6_rd_ptr_reg_rep[3]_i_1\,
      Q => \n_0_rd_ptr_reg_rep[1]\,
      R => rst_rd_2
    );
\rd_ptr_reg_rep[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => aclk,
      CE => \n_0_rd_ptr_rep[9]_i_1\,
      D => \n_5_rd_ptr_reg_rep[3]_i_1\,
      Q => \n_0_rd_ptr_reg_rep[2]\,
      R => rst_rd_2
    );
\rd_ptr_reg_rep[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => aclk,
      CE => \n_0_rd_ptr_rep[9]_i_1\,
      D => \n_4_rd_ptr_reg_rep[3]_i_1\,
      Q => \n_0_rd_ptr_reg_rep[3]\,
      R => rst_rd_2
    );
\rd_ptr_reg_rep[3]_i_1\: unisim.vcomponents.CARRY4
    port map (
      CI => '0',
      CO(3) => \n_0_rd_ptr_reg_rep[3]_i_1\,
      CO(2) => \n_1_rd_ptr_reg_rep[3]_i_1\,
      CO(1) => \n_2_rd_ptr_reg_rep[3]_i_1\,
      CO(0) => \n_3_rd_ptr_reg_rep[3]_i_1\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => rd_ptr_reg(0),
      O(3) => \n_4_rd_ptr_reg_rep[3]_i_1\,
      O(2) => \n_5_rd_ptr_reg_rep[3]_i_1\,
      O(1) => \n_6_rd_ptr_reg_rep[3]_i_1\,
      O(0) => \n_7_rd_ptr_reg_rep[3]_i_1\,
      S(3) => \n_0_rd_ptr_rep[3]_i_2\,
      S(2) => \n_0_rd_ptr_rep[3]_i_3\,
      S(1) => \n_0_rd_ptr_rep[3]_i_4\,
      S(0) => \n_0_rd_ptr_rep[3]_i_5\
    );
\rd_ptr_reg_rep[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => aclk,
      CE => \n_0_rd_ptr_rep[9]_i_1\,
      D => \n_7_rd_ptr_reg_rep[7]_i_1\,
      Q => \n_0_rd_ptr_reg_rep[4]\,
      R => rst_rd_2
    );
\rd_ptr_reg_rep[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => aclk,
      CE => \n_0_rd_ptr_rep[9]_i_1\,
      D => \n_6_rd_ptr_reg_rep[7]_i_1\,
      Q => \n_0_rd_ptr_reg_rep[5]\,
      R => rst_rd_2
    );
\rd_ptr_reg_rep[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => aclk,
      CE => \n_0_rd_ptr_rep[9]_i_1\,
      D => \n_5_rd_ptr_reg_rep[7]_i_1\,
      Q => \n_0_rd_ptr_reg_rep[6]\,
      R => rst_rd_2
    );
\rd_ptr_reg_rep[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => aclk,
      CE => \n_0_rd_ptr_rep[9]_i_1\,
      D => \n_4_rd_ptr_reg_rep[7]_i_1\,
      Q => \n_0_rd_ptr_reg_rep[7]\,
      R => rst_rd_2
    );
\rd_ptr_reg_rep[7]_i_1\: unisim.vcomponents.CARRY4
    port map (
      CI => \n_0_rd_ptr_reg_rep[3]_i_1\,
      CO(3) => \n_0_rd_ptr_reg_rep[7]_i_1\,
      CO(2) => \n_1_rd_ptr_reg_rep[7]_i_1\,
      CO(1) => \n_2_rd_ptr_reg_rep[7]_i_1\,
      CO(0) => \n_3_rd_ptr_reg_rep[7]_i_1\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => \n_4_rd_ptr_reg_rep[7]_i_1\,
      O(2) => \n_5_rd_ptr_reg_rep[7]_i_1\,
      O(1) => \n_6_rd_ptr_reg_rep[7]_i_1\,
      O(0) => \n_7_rd_ptr_reg_rep[7]_i_1\,
      S(3) => \n_0_rd_ptr_rep[7]_i_2\,
      S(2) => \n_0_rd_ptr_rep[7]_i_3\,
      S(1) => \n_0_rd_ptr_rep[7]_i_4\,
      S(0) => \n_0_rd_ptr_rep[7]_i_5\
    );
\rd_ptr_reg_rep[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => aclk,
      CE => \n_0_rd_ptr_rep[9]_i_1\,
      D => \n_7_rd_ptr_reg_rep[9]_i_2\,
      Q => \n_0_rd_ptr_reg_rep[8]\,
      R => rst_rd_2
    );
\rd_ptr_reg_rep[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => aclk,
      CE => \n_0_rd_ptr_rep[9]_i_1\,
      D => \n_6_rd_ptr_reg_rep[9]_i_2\,
      Q => \n_0_rd_ptr_reg_rep[9]\,
      R => rst_rd_2
    );
\rd_ptr_reg_rep[9]_i_2\: unisim.vcomponents.CARRY4
    port map (
      CI => \n_0_rd_ptr_reg_rep[7]_i_1\,
      CO(3) => \NLW_rd_ptr_reg_rep[9]_i_2_CO_UNCONNECTED\(3),
      CO(2) => \n_1_rd_ptr_reg_rep[9]_i_2\,
      CO(1) => \n_2_rd_ptr_reg_rep[9]_i_2\,
      CO(0) => \n_3_rd_ptr_reg_rep[9]_i_2\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => \n_4_rd_ptr_reg_rep[9]_i_2\,
      O(2) => \n_5_rd_ptr_reg_rep[9]_i_2\,
      O(1) => \n_6_rd_ptr_reg_rep[9]_i_2\,
      O(0) => \n_7_rd_ptr_reg_rep[9]_i_2\,
      S(3) => \n_0_rd_ptr_rep[9]_i_4\,
      S(2) => \n_0_rd_ptr_rep[9]_i_5\,
      S(1) => \n_0_rd_ptr_rep[9]_i_6\,
      S(0) => \n_0_rd_ptr_rep[9]_i_7\
    );
\rd_ptr_rep[3]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => rd_ptr_reg(3),
      O => \n_0_rd_ptr_rep[3]_i_2\
    );
\rd_ptr_rep[3]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => rd_ptr_reg(2),
      O => \n_0_rd_ptr_rep[3]_i_3\
    );
\rd_ptr_rep[3]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => rd_ptr_reg(1),
      O => \n_0_rd_ptr_rep[3]_i_4\
    );
\rd_ptr_rep[3]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => rd_ptr_reg(0),
      O => \n_0_rd_ptr_rep[3]_i_5\
    );
\rd_ptr_rep[7]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => rd_ptr_reg(7),
      O => \n_0_rd_ptr_rep[7]_i_2\
    );
\rd_ptr_rep[7]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => rd_ptr_reg(6),
      O => \n_0_rd_ptr_rep[7]_i_3\
    );
\rd_ptr_rep[7]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => rd_ptr_reg(5),
      O => \n_0_rd_ptr_rep[7]_i_4\
    );
\rd_ptr_rep[7]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => rd_ptr_reg(4),
      O => \n_0_rd_ptr_rep[7]_i_5\
    );
\rd_ptr_rep[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => rd_en,
      I1 => aclken,
      I2 => empty_comb,
      O => \n_0_rd_ptr_rep[9]_i_1\
    );
\rd_ptr_rep[9]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000100000000"
    )
    port map (
      I0 => ptr_diff_rd_dom_comb0_out(11),
      I1 => ptr_diff_rd_dom_comb0_out(9),
      I2 => ptr_diff_rd_dom_comb0_out(10),
      I3 => ptr_diff_rd_dom_comb0_out(7),
      I4 => ptr_diff_rd_dom_comb0_out(8),
      I5 => \n_0_rd_ptr_rep[9]_i_8\,
      O => empty_comb
    );
\rd_ptr_rep[9]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => rd_ptr_reg(11),
      O => \n_0_rd_ptr_rep[9]_i_4\
    );
\rd_ptr_rep[9]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => rd_ptr_reg(10),
      O => \n_0_rd_ptr_rep[9]_i_5\
    );
\rd_ptr_rep[9]_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => rd_ptr_reg(9),
      O => \n_0_rd_ptr_rep[9]_i_6\
    );
\rd_ptr_rep[9]_i_7\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => rd_ptr_reg(8),
      O => \n_0_rd_ptr_rep[9]_i_7\
    );
\rd_ptr_rep[9]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
    port map (
      I0 => ptr_diff_rd_dom_comb0_out(4),
      I1 => ptr_diff_rd_dom_comb0_out(6),
      I2 => ptr_diff_rd_dom_comb0_out(2),
      I3 => ptr_diff_rd_dom_comb0_out(1),
      I4 => ptr_diff_rd_dom_comb0_out(5),
      I5 => ptr_diff_rd_dom_comb0_out(3),
      O => \n_0_rd_ptr_rep[9]_i_8\
    );
\rd_ptr_sample[10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => ack_rd_dom_2,
      I1 => ack_rd_dom_3,
      O => ce_rd_ptr_sample
    );
\rd_ptr_sample_reg[0]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => ce_rd_ptr_sample,
      D => rd_ptr_reg(0),
      Q => rd_ptr_sample(0),
      R => rst_rd_2
    );
\rd_ptr_sample_reg[10]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => ce_rd_ptr_sample,
      D => rd_ptr_reg(10),
      Q => rd_ptr_sample(10),
      R => rst_rd_2
    );
\rd_ptr_sample_reg[1]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => ce_rd_ptr_sample,
      D => rd_ptr_reg(1),
      Q => rd_ptr_sample(1),
      R => rst_rd_2
    );
\rd_ptr_sample_reg[2]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => ce_rd_ptr_sample,
      D => rd_ptr_reg(2),
      Q => rd_ptr_sample(2),
      R => rst_rd_2
    );
\rd_ptr_sample_reg[3]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => ce_rd_ptr_sample,
      D => rd_ptr_reg(3),
      Q => rd_ptr_sample(3),
      R => rst_rd_2
    );
\rd_ptr_sample_reg[4]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => ce_rd_ptr_sample,
      D => rd_ptr_reg(4),
      Q => rd_ptr_sample(4),
      R => rst_rd_2
    );
\rd_ptr_sample_reg[5]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => ce_rd_ptr_sample,
      D => rd_ptr_reg(5),
      Q => rd_ptr_sample(5),
      R => rst_rd_2
    );
\rd_ptr_sample_reg[6]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => ce_rd_ptr_sample,
      D => rd_ptr_reg(6),
      Q => rd_ptr_sample(6),
      R => rst_rd_2
    );
\rd_ptr_sample_reg[7]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => ce_rd_ptr_sample,
      D => rd_ptr_reg(7),
      Q => rd_ptr_sample(7),
      R => rst_rd_2
    );
\rd_ptr_sample_reg[8]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => ce_rd_ptr_sample,
      D => rd_ptr_reg(8),
      Q => rd_ptr_sample(8),
      R => rst_rd_2
    );
\rd_ptr_sample_reg[9]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => ce_rd_ptr_sample,
      D => rd_ptr_reg(9),
      Q => rd_ptr_sample(9),
      R => rst_rd_2
    );
\rd_ptr_wr_dom[10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => req_wr_dom_2,
      I1 => req_wr_dom_3,
      O => ce_rd_ptr_wr_dom
    );
\rd_ptr_wr_dom_reg[0]\: unisim.vcomponents.FDRE
    port map (
      C => vid_io_in_clk,
      CE => ce_rd_ptr_wr_dom,
      D => rd_ptr_sample(0),
      Q => \n_0_rd_ptr_wr_dom_reg[0]\,
      R => rst_wr_2
    );
\rd_ptr_wr_dom_reg[10]\: unisim.vcomponents.FDRE
    port map (
      C => vid_io_in_clk,
      CE => ce_rd_ptr_wr_dom,
      D => rd_ptr_sample(10),
      Q => \n_0_rd_ptr_wr_dom_reg[10]\,
      R => rst_wr_2
    );
\rd_ptr_wr_dom_reg[1]\: unisim.vcomponents.FDRE
    port map (
      C => vid_io_in_clk,
      CE => ce_rd_ptr_wr_dom,
      D => rd_ptr_sample(1),
      Q => \n_0_rd_ptr_wr_dom_reg[1]\,
      R => rst_wr_2
    );
\rd_ptr_wr_dom_reg[2]\: unisim.vcomponents.FDRE
    port map (
      C => vid_io_in_clk,
      CE => ce_rd_ptr_wr_dom,
      D => rd_ptr_sample(2),
      Q => \n_0_rd_ptr_wr_dom_reg[2]\,
      R => rst_wr_2
    );
\rd_ptr_wr_dom_reg[3]\: unisim.vcomponents.FDRE
    port map (
      C => vid_io_in_clk,
      CE => ce_rd_ptr_wr_dom,
      D => rd_ptr_sample(3),
      Q => \n_0_rd_ptr_wr_dom_reg[3]\,
      R => rst_wr_2
    );
\rd_ptr_wr_dom_reg[4]\: unisim.vcomponents.FDRE
    port map (
      C => vid_io_in_clk,
      CE => ce_rd_ptr_wr_dom,
      D => rd_ptr_sample(4),
      Q => \n_0_rd_ptr_wr_dom_reg[4]\,
      R => rst_wr_2
    );
\rd_ptr_wr_dom_reg[5]\: unisim.vcomponents.FDRE
    port map (
      C => vid_io_in_clk,
      CE => ce_rd_ptr_wr_dom,
      D => rd_ptr_sample(5),
      Q => \n_0_rd_ptr_wr_dom_reg[5]\,
      R => rst_wr_2
    );
\rd_ptr_wr_dom_reg[6]\: unisim.vcomponents.FDRE
    port map (
      C => vid_io_in_clk,
      CE => ce_rd_ptr_wr_dom,
      D => rd_ptr_sample(6),
      Q => \n_0_rd_ptr_wr_dom_reg[6]\,
      R => rst_wr_2
    );
\rd_ptr_wr_dom_reg[7]\: unisim.vcomponents.FDRE
    port map (
      C => vid_io_in_clk,
      CE => ce_rd_ptr_wr_dom,
      D => rd_ptr_sample(7),
      Q => \n_0_rd_ptr_wr_dom_reg[7]\,
      R => rst_wr_2
    );
\rd_ptr_wr_dom_reg[8]\: unisim.vcomponents.FDRE
    port map (
      C => vid_io_in_clk,
      CE => ce_rd_ptr_wr_dom,
      D => rd_ptr_sample(8),
      Q => \n_0_rd_ptr_wr_dom_reg[8]\,
      R => rst_wr_2
    );
\rd_ptr_wr_dom_reg[9]\: unisim.vcomponents.FDRE
    port map (
      C => vid_io_in_clk,
      CE => ce_rd_ptr_wr_dom,
      D => rd_ptr_sample(9),
      Q => \n_0_rd_ptr_wr_dom_reg[9]\,
      R => rst_wr_2
    );
req_rd_dom_1_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => ack_wr_dom_3,
      O => wr_to_rd_req
    );
req_rd_dom_1_reg: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => '1',
      D => wr_to_rd_req,
      Q => req_rd_dom_1,
      R => rst_rd_2
    );
req_rd_dom_2_reg: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => '1',
      D => req_rd_dom_1,
      Q => req_rd_dom_2,
      R => rst_rd_2
    );
req_rd_dom_3_reg: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => '1',
      D => req_rd_dom_2,
      Q => req_rd_dom_3,
      R => rst_rd_2
    );
req_wr_dom_1_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => ack_rd_dom_3,
      O => rd_to_wr_req
    );
req_wr_dom_1_reg: unisim.vcomponents.FDRE
    port map (
      C => vid_io_in_clk,
      CE => '1',
      D => rd_to_wr_req,
      Q => req_wr_dom_1,
      R => rst_wr_2
    );
req_wr_dom_2_reg: unisim.vcomponents.FDRE
    port map (
      C => vid_io_in_clk,
      CE => '1',
      D => req_wr_dom_1,
      Q => req_wr_dom_2,
      R => rst_wr_2
    );
req_wr_dom_3_reg: unisim.vcomponents.FDRE
    port map (
      C => vid_io_in_clk,
      CE => '1',
      D => req_wr_dom_2,
      Q => req_wr_dom_3,
      R => rst_wr_2
    );
rst_rd_1_reg: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => '1',
      D => \^o1\,
      Q => rst_rd_1,
      R => '0'
    );
rst_rd_2_reg: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => '1',
      D => rst_rd_1,
      Q => rst_rd_2,
      R => '0'
    );
rst_wr_1_reg: unisim.vcomponents.FDRE
    port map (
      C => vid_io_in_clk,
      CE => '1',
      D => \^o1\,
      Q => rst_wr_1,
      R => '0'
    );
rst_wr_2_reg: unisim.vcomponents.FDRE
    port map (
      C => vid_io_in_clk,
      CE => '1',
      D => rst_wr_1,
      Q => rst_wr_2,
      R => '0'
    );
valid_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"040C0C0C04000000"
    )
    port map (
      I0 => n_0_valid_i_2,
      I1 => aresetn,
      I2 => rst,
      I3 => valid1_in,
      I4 => aclken,
      I5 => I1,
      O => O3
    );
valid_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"DFDF0FDF"
    )
    port map (
      I0 => I1,
      I1 => m_axis_video_tready,
      I2 => full_frame,
      I3 => rd_en0,
      I4 => \^o2\,
      O => n_0_valid_i_2
    );
valid_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFFFEEFF"
    )
    port map (
      I0 => I1,
      I1 => m_axis_video_tready,
      I2 => \^o2\,
      I3 => full_frame,
      I4 => rd_en0,
      O => valid1_in
    );
valid_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B0BB"
    )
    port map (
      I0 => m_axis_video_tready,
      I1 => I1,
      I2 => fifo_eol,
      I3 => fifo_empty,
      O => rd_en0
    );
wr_error_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
    port map (
      I0 => rst_wr_2,
      I1 => idf_de,
      I2 => vid_io_in_ce,
      O => n_0_wr_error_i_1
    );
wr_error_i_10: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => wr_ptr_reg(5),
      I1 => \n_0_rd_ptr_wr_dom_reg[5]\,
      O => n_0_wr_error_i_10
    );
wr_error_i_11: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => wr_ptr_reg(4),
      I1 => \n_0_rd_ptr_wr_dom_reg[4]\,
      O => n_0_wr_error_i_11
    );
wr_error_i_12: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => wr_ptr_reg(3),
      I1 => \n_0_rd_ptr_wr_dom_reg[3]\,
      O => n_0_wr_error_i_12
    );
wr_error_i_13: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => wr_ptr_reg(2),
      I1 => \n_0_rd_ptr_wr_dom_reg[2]\,
      O => n_0_wr_error_i_13
    );
wr_error_i_14: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => wr_ptr_reg(1),
      I1 => \n_0_rd_ptr_wr_dom_reg[1]\,
      O => n_0_wr_error_i_14
    );
wr_error_i_15: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => wr_ptr_reg(0),
      I1 => \n_0_rd_ptr_wr_dom_reg[0]\,
      O => n_0_wr_error_i_15
    );
wr_error_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => \wr_ptr_reg__0\(10),
      I1 => \n_0_rd_ptr_wr_dom_reg[10]\,
      O => n_0_wr_error_i_4
    );
wr_error_i_5: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => wr_ptr_reg(9),
      I1 => \n_0_rd_ptr_wr_dom_reg[9]\,
      O => n_0_wr_error_i_5
    );
wr_error_i_6: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => wr_ptr_reg(8),
      I1 => \n_0_rd_ptr_wr_dom_reg[8]\,
      O => n_0_wr_error_i_6
    );
wr_error_i_8: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => wr_ptr_reg(7),
      I1 => \n_0_rd_ptr_wr_dom_reg[7]\,
      O => n_0_wr_error_i_8
    );
wr_error_i_9: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => wr_ptr_reg(6),
      I1 => \n_0_rd_ptr_wr_dom_reg[6]\,
      O => n_0_wr_error_i_9
    );
wr_error_reg: unisim.vcomponents.FDRE
    port map (
      C => vid_io_in_clk,
      CE => vid_io_in_ce,
      D => full_comb,
      Q => wr_error,
      R => n_0_wr_error_i_1
    );
wr_error_reg_i_2: unisim.vcomponents.CARRY4
    port map (
      CI => n_0_wr_error_reg_i_3,
      CO(3 downto 2) => NLW_wr_error_reg_i_2_CO_UNCONNECTED(3 downto 2),
      CO(1) => n_2_wr_error_reg_i_2,
      CO(0) => n_3_wr_error_reg_i_2,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => '0',
      DI(1 downto 0) => wr_ptr_reg(9 downto 8),
      O(3) => NLW_wr_error_reg_i_2_O_UNCONNECTED(3),
      O(2) => full_comb,
      O(1) => n_6_wr_error_reg_i_2,
      O(0) => n_7_wr_error_reg_i_2,
      S(3) => '0',
      S(2) => n_0_wr_error_i_4,
      S(1) => n_0_wr_error_i_5,
      S(0) => n_0_wr_error_i_6
    );
wr_error_reg_i_3: unisim.vcomponents.CARRY4
    port map (
      CI => n_0_wr_error_reg_i_7,
      CO(3) => n_0_wr_error_reg_i_3,
      CO(2) => n_1_wr_error_reg_i_3,
      CO(1) => n_2_wr_error_reg_i_3,
      CO(0) => n_3_wr_error_reg_i_3,
      CYINIT => '0',
      DI(3 downto 0) => wr_ptr_reg(7 downto 4),
      O(3) => n_4_wr_error_reg_i_3,
      O(2) => n_5_wr_error_reg_i_3,
      O(1) => n_6_wr_error_reg_i_3,
      O(0) => n_7_wr_error_reg_i_3,
      S(3) => n_0_wr_error_i_8,
      S(2) => n_0_wr_error_i_9,
      S(1) => n_0_wr_error_i_10,
      S(0) => n_0_wr_error_i_11
    );
wr_error_reg_i_7: unisim.vcomponents.CARRY4
    port map (
      CI => '0',
      CO(3) => n_0_wr_error_reg_i_7,
      CO(2) => n_1_wr_error_reg_i_7,
      CO(1) => n_2_wr_error_reg_i_7,
      CO(0) => n_3_wr_error_reg_i_7,
      CYINIT => '1',
      DI(3 downto 0) => wr_ptr_reg(3 downto 0),
      O(3) => n_4_wr_error_reg_i_7,
      O(2) => n_5_wr_error_reg_i_7,
      O(1) => n_6_wr_error_reg_i_7,
      O(0) => n_7_wr_error_reg_i_7,
      S(3) => n_0_wr_error_i_12,
      S(2) => n_0_wr_error_i_13,
      S(1) => n_0_wr_error_i_14,
      S(0) => n_0_wr_error_i_15
    );
\wr_ptr[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
    port map (
      I0 => full_comb,
      I1 => vid_io_in_ce,
      I2 => idf_de,
      O => \n_0_wr_ptr[0]_i_1\
    );
\wr_ptr[0]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => wr_ptr_reg(0),
      O => \n_0_wr_ptr[0]_i_3\
    );
\wr_ptr_rd_dom[11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => req_rd_dom_2,
      I1 => req_rd_dom_3,
      O => ce_wr_ptr_rd_dom
    );
\wr_ptr_rd_dom_reg[0]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => ce_wr_ptr_rd_dom,
      D => wr_ptr_sample(0),
      Q => wr_ptr_rd_dom(0),
      R => rst_rd_2
    );
\wr_ptr_rd_dom_reg[10]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => ce_wr_ptr_rd_dom,
      D => wr_ptr_sample(10),
      Q => wr_ptr_rd_dom(10),
      R => rst_rd_2
    );
\wr_ptr_rd_dom_reg[11]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => ce_wr_ptr_rd_dom,
      D => wr_ptr_sample(11),
      Q => wr_ptr_rd_dom(11),
      R => rst_rd_2
    );
\wr_ptr_rd_dom_reg[1]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => ce_wr_ptr_rd_dom,
      D => wr_ptr_sample(1),
      Q => wr_ptr_rd_dom(1),
      R => rst_rd_2
    );
\wr_ptr_rd_dom_reg[2]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => ce_wr_ptr_rd_dom,
      D => wr_ptr_sample(2),
      Q => wr_ptr_rd_dom(2),
      R => rst_rd_2
    );
\wr_ptr_rd_dom_reg[3]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => ce_wr_ptr_rd_dom,
      D => wr_ptr_sample(3),
      Q => wr_ptr_rd_dom(3),
      R => rst_rd_2
    );
\wr_ptr_rd_dom_reg[4]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => ce_wr_ptr_rd_dom,
      D => wr_ptr_sample(4),
      Q => wr_ptr_rd_dom(4),
      R => rst_rd_2
    );
\wr_ptr_rd_dom_reg[5]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => ce_wr_ptr_rd_dom,
      D => wr_ptr_sample(5),
      Q => wr_ptr_rd_dom(5),
      R => rst_rd_2
    );
\wr_ptr_rd_dom_reg[6]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => ce_wr_ptr_rd_dom,
      D => wr_ptr_sample(6),
      Q => wr_ptr_rd_dom(6),
      R => rst_rd_2
    );
\wr_ptr_rd_dom_reg[7]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => ce_wr_ptr_rd_dom,
      D => wr_ptr_sample(7),
      Q => wr_ptr_rd_dom(7),
      R => rst_rd_2
    );
\wr_ptr_rd_dom_reg[8]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => ce_wr_ptr_rd_dom,
      D => wr_ptr_sample(8),
      Q => wr_ptr_rd_dom(8),
      R => rst_rd_2
    );
\wr_ptr_rd_dom_reg[9]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => ce_wr_ptr_rd_dom,
      D => wr_ptr_sample(9),
      Q => wr_ptr_rd_dom(9),
      R => rst_rd_2
    );
\wr_ptr_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
    port map (
      C => vid_io_in_clk,
      CE => \n_0_wr_ptr[0]_i_1\,
      D => \n_0_wr_ptr_reg[0]_i_2\,
      Q => wr_ptr_reg(0),
      S => rst_wr_2
    );
\wr_ptr_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => vid_io_in_clk,
      CE => \n_0_wr_ptr[0]_i_1\,
      D => \n_0_wr_ptr_reg[10]_i_1\,
      Q => \wr_ptr_reg__0\(10),
      R => rst_wr_2
    );
\wr_ptr_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => vid_io_in_clk,
      CE => \n_0_wr_ptr[0]_i_1\,
      D => \n_0_wr_ptr_reg[11]_i_1\,
      Q => \wr_ptr_reg__0\(11),
      R => rst_wr_2
    );
\wr_ptr_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => vid_io_in_clk,
      CE => \n_0_wr_ptr[0]_i_1\,
      D => \n_0_wr_ptr_reg[1]_i_1\,
      Q => wr_ptr_reg(1),
      R => rst_wr_2
    );
\wr_ptr_reg[1]_i_2_CARRY4\: unisim.vcomponents.CARRY4
    port map (
      CI => '0',
      CO(3) => \n_0_wr_ptr_reg[4]_i_2\,
      CO(2) => \n_0_wr_ptr_reg[3]_i_2\,
      CO(1) => \n_0_wr_ptr_reg[2]_i_2\,
      CO(0) => \n_0_wr_ptr_reg[1]_i_2\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '1',
      O(3) => \n_0_wr_ptr_reg[3]_i_1\,
      O(2) => \n_0_wr_ptr_reg[2]_i_1\,
      O(1) => \n_0_wr_ptr_reg[1]_i_1\,
      O(0) => \n_0_wr_ptr_reg[0]_i_2\,
      S(3 downto 1) => wr_ptr_reg(3 downto 1),
      S(0) => \n_0_wr_ptr[0]_i_3\
    );
\wr_ptr_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => vid_io_in_clk,
      CE => \n_0_wr_ptr[0]_i_1\,
      D => \n_0_wr_ptr_reg[2]_i_1\,
      Q => wr_ptr_reg(2),
      R => rst_wr_2
    );
\wr_ptr_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => vid_io_in_clk,
      CE => \n_0_wr_ptr[0]_i_1\,
      D => \n_0_wr_ptr_reg[3]_i_1\,
      Q => wr_ptr_reg(3),
      R => rst_wr_2
    );
\wr_ptr_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => vid_io_in_clk,
      CE => \n_0_wr_ptr[0]_i_1\,
      D => \n_0_wr_ptr_reg[4]_i_1\,
      Q => wr_ptr_reg(4),
      R => rst_wr_2
    );
\wr_ptr_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => vid_io_in_clk,
      CE => \n_0_wr_ptr[0]_i_1\,
      D => \n_0_wr_ptr_reg[5]_i_1\,
      Q => wr_ptr_reg(5),
      R => rst_wr_2
    );
\wr_ptr_reg[5]_i_2_CARRY4\: unisim.vcomponents.CARRY4
    port map (
      CI => \n_0_wr_ptr_reg[4]_i_2\,
      CO(3) => \n_0_wr_ptr_reg[8]_i_2\,
      CO(2) => \n_0_wr_ptr_reg[7]_i_2\,
      CO(1) => \n_0_wr_ptr_reg[6]_i_2\,
      CO(0) => \n_0_wr_ptr_reg[5]_i_2\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => \n_0_wr_ptr_reg[7]_i_1\,
      O(2) => \n_0_wr_ptr_reg[6]_i_1\,
      O(1) => \n_0_wr_ptr_reg[5]_i_1\,
      O(0) => \n_0_wr_ptr_reg[4]_i_1\,
      S(3 downto 0) => wr_ptr_reg(7 downto 4)
    );
\wr_ptr_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => vid_io_in_clk,
      CE => \n_0_wr_ptr[0]_i_1\,
      D => \n_0_wr_ptr_reg[6]_i_1\,
      Q => wr_ptr_reg(6),
      R => rst_wr_2
    );
\wr_ptr_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => vid_io_in_clk,
      CE => \n_0_wr_ptr[0]_i_1\,
      D => \n_0_wr_ptr_reg[7]_i_1\,
      Q => wr_ptr_reg(7),
      R => rst_wr_2
    );
\wr_ptr_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => vid_io_in_clk,
      CE => \n_0_wr_ptr[0]_i_1\,
      D => \n_0_wr_ptr_reg[8]_i_1\,
      Q => wr_ptr_reg(8),
      R => rst_wr_2
    );
\wr_ptr_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => vid_io_in_clk,
      CE => \n_0_wr_ptr[0]_i_1\,
      D => \n_0_wr_ptr_reg[9]_i_1\,
      Q => wr_ptr_reg(9),
      R => rst_wr_2
    );
\wr_ptr_reg[9]_i_2_CARRY4\: unisim.vcomponents.CARRY4
    port map (
      CI => \n_0_wr_ptr_reg[8]_i_2\,
      CO(3 downto 2) => \NLW_wr_ptr_reg[9]_i_2_CARRY4_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \n_0_wr_ptr_reg[10]_i_2\,
      CO(0) => \n_0_wr_ptr_reg[9]_i_2\,
      CYINIT => '0',
      DI(3) => \NLW_wr_ptr_reg[9]_i_2_CARRY4_DI_UNCONNECTED\(3),
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => \n_0_wr_ptr_reg[11]_i_1\,
      O(2) => \n_0_wr_ptr_reg[10]_i_1\,
      O(1) => \n_0_wr_ptr_reg[9]_i_1\,
      O(0) => \n_0_wr_ptr_reg[8]_i_1\,
      S(3 downto 2) => \wr_ptr_reg__0\(11 downto 10),
      S(1 downto 0) => wr_ptr_reg(9 downto 8)
    );
\wr_ptr_sample[11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => ack_wr_dom_2,
      I1 => ack_wr_dom_3,
      O => ce_wr_ptr_sample
    );
\wr_ptr_sample_reg[0]\: unisim.vcomponents.FDRE
    port map (
      C => vid_io_in_clk,
      CE => ce_wr_ptr_sample,
      D => wr_ptr_reg(0),
      Q => wr_ptr_sample(0),
      R => rst_wr_2
    );
\wr_ptr_sample_reg[10]\: unisim.vcomponents.FDRE
    port map (
      C => vid_io_in_clk,
      CE => ce_wr_ptr_sample,
      D => \wr_ptr_reg__0\(10),
      Q => wr_ptr_sample(10),
      R => rst_wr_2
    );
\wr_ptr_sample_reg[11]\: unisim.vcomponents.FDRE
    port map (
      C => vid_io_in_clk,
      CE => ce_wr_ptr_sample,
      D => \wr_ptr_reg__0\(11),
      Q => wr_ptr_sample(11),
      R => rst_wr_2
    );
\wr_ptr_sample_reg[1]\: unisim.vcomponents.FDRE
    port map (
      C => vid_io_in_clk,
      CE => ce_wr_ptr_sample,
      D => wr_ptr_reg(1),
      Q => wr_ptr_sample(1),
      R => rst_wr_2
    );
\wr_ptr_sample_reg[2]\: unisim.vcomponents.FDRE
    port map (
      C => vid_io_in_clk,
      CE => ce_wr_ptr_sample,
      D => wr_ptr_reg(2),
      Q => wr_ptr_sample(2),
      R => rst_wr_2
    );
\wr_ptr_sample_reg[3]\: unisim.vcomponents.FDRE
    port map (
      C => vid_io_in_clk,
      CE => ce_wr_ptr_sample,
      D => wr_ptr_reg(3),
      Q => wr_ptr_sample(3),
      R => rst_wr_2
    );
\wr_ptr_sample_reg[4]\: unisim.vcomponents.FDRE
    port map (
      C => vid_io_in_clk,
      CE => ce_wr_ptr_sample,
      D => wr_ptr_reg(4),
      Q => wr_ptr_sample(4),
      R => rst_wr_2
    );
\wr_ptr_sample_reg[5]\: unisim.vcomponents.FDRE
    port map (
      C => vid_io_in_clk,
      CE => ce_wr_ptr_sample,
      D => wr_ptr_reg(5),
      Q => wr_ptr_sample(5),
      R => rst_wr_2
    );
\wr_ptr_sample_reg[6]\: unisim.vcomponents.FDRE
    port map (
      C => vid_io_in_clk,
      CE => ce_wr_ptr_sample,
      D => wr_ptr_reg(6),
      Q => wr_ptr_sample(6),
      R => rst_wr_2
    );
\wr_ptr_sample_reg[7]\: unisim.vcomponents.FDRE
    port map (
      C => vid_io_in_clk,
      CE => ce_wr_ptr_sample,
      D => wr_ptr_reg(7),
      Q => wr_ptr_sample(7),
      R => rst_wr_2
    );
\wr_ptr_sample_reg[8]\: unisim.vcomponents.FDRE
    port map (
      C => vid_io_in_clk,
      CE => ce_wr_ptr_sample,
      D => wr_ptr_reg(8),
      Q => wr_ptr_sample(8),
      R => rst_wr_2
    );
\wr_ptr_sample_reg[9]\: unisim.vcomponents.FDRE
    port map (
      C => vid_io_in_clk,
      CE => ce_wr_ptr_sample,
      D => wr_ptr_reg(9),
      Q => wr_ptr_sample(9),
      R => rst_wr_2
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity v_vid_in_axi4s_0_v_vid_in_axi4s_v3_0_vid_in_formatter is
  port (
    O1 : out STD_LOGIC;
    vtd_vblank : out STD_LOGIC;
    vtd_hblank : out STD_LOGIC;
    vtd_vsync : out STD_LOGIC;
    vtd_hsync : out STD_LOGIC;
    vtd_field_id : out STD_LOGIC;
    din : out STD_LOGIC_VECTOR ( 82 downto 0 );
    idf_de : out STD_LOGIC;
    vid_io_in_ce : in STD_LOGIC;
    vid_active_video : in STD_LOGIC;
    vid_io_in_clk : in STD_LOGIC;
    vid_vblank : in STD_LOGIC;
    vid_hblank : in STD_LOGIC;
    vid_vsync : in STD_LOGIC;
    vid_hsync : in STD_LOGIC;
    vid_field_id : in STD_LOGIC;
    vid_data : in STD_LOGIC_VECTOR ( 79 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of v_vid_in_axi4s_0_v_vid_in_axi4s_v3_0_vid_in_formatter : entity is "v_vid_in_axi4s_v3_0_vid_in_formatter";
end v_vid_in_axi4s_0_v_vid_in_axi4s_v3_0_vid_in_formatter;

architecture STRUCTURE of v_vid_in_axi4s_0_v_vid_in_axi4s_v3_0_vid_in_formatter is
  signal \^o1\ : STD_LOGIC;
  signal data_1 : STD_LOGIC_VECTOR ( 79 downto 0 );
  signal data_2 : STD_LOGIC_VECTOR ( 79 downto 0 );
  signal de_2 : STD_LOGIC;
  signal field_id_2 : STD_LOGIC;
  signal n_0_eol_i_1 : STD_LOGIC;
  signal n_0_vert_blanking_intvl_i_1 : STD_LOGIC;
  signal n_0_vert_blanking_intvl_reg : STD_LOGIC;
  signal sof : STD_LOGIC;
  signal sof0 : STD_LOGIC;
  signal v_blank_sync_1 : STD_LOGIC;
  signal v_blank_sync_2 : STD_LOGIC;
  signal \^vtd_field_id\ : STD_LOGIC;
  signal \^vtd_vblank\ : STD_LOGIC;
  signal \^vtd_vsync\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of eol_i_1 : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of sof_i_1 : label is "soft_lutpair4";
begin
  O1 <= \^o1\;
  vtd_field_id <= \^vtd_field_id\;
  vtd_vblank <= \^vtd_vblank\;
  vtd_vsync <= \^vtd_vsync\;
\data_1_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => vid_io_in_clk,
      CE => vid_io_in_ce,
      D => vid_data(0),
      Q => data_1(0),
      R => '0'
    );
\data_1_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => vid_io_in_clk,
      CE => vid_io_in_ce,
      D => vid_data(10),
      Q => data_1(10),
      R => '0'
    );
\data_1_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => vid_io_in_clk,
      CE => vid_io_in_ce,
      D => vid_data(11),
      Q => data_1(11),
      R => '0'
    );
\data_1_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => vid_io_in_clk,
      CE => vid_io_in_ce,
      D => vid_data(12),
      Q => data_1(12),
      R => '0'
    );
\data_1_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => vid_io_in_clk,
      CE => vid_io_in_ce,
      D => vid_data(13),
      Q => data_1(13),
      R => '0'
    );
\data_1_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => vid_io_in_clk,
      CE => vid_io_in_ce,
      D => vid_data(14),
      Q => data_1(14),
      R => '0'
    );
\data_1_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => vid_io_in_clk,
      CE => vid_io_in_ce,
      D => vid_data(15),
      Q => data_1(15),
      R => '0'
    );
\data_1_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => vid_io_in_clk,
      CE => vid_io_in_ce,
      D => vid_data(16),
      Q => data_1(16),
      R => '0'
    );
\data_1_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => vid_io_in_clk,
      CE => vid_io_in_ce,
      D => vid_data(17),
      Q => data_1(17),
      R => '0'
    );
\data_1_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => vid_io_in_clk,
      CE => vid_io_in_ce,
      D => vid_data(18),
      Q => data_1(18),
      R => '0'
    );
\data_1_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => vid_io_in_clk,
      CE => vid_io_in_ce,
      D => vid_data(19),
      Q => data_1(19),
      R => '0'
    );
\data_1_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => vid_io_in_clk,
      CE => vid_io_in_ce,
      D => vid_data(1),
      Q => data_1(1),
      R => '0'
    );
\data_1_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => vid_io_in_clk,
      CE => vid_io_in_ce,
      D => vid_data(20),
      Q => data_1(20),
      R => '0'
    );
\data_1_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => vid_io_in_clk,
      CE => vid_io_in_ce,
      D => vid_data(21),
      Q => data_1(21),
      R => '0'
    );
\data_1_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => vid_io_in_clk,
      CE => vid_io_in_ce,
      D => vid_data(22),
      Q => data_1(22),
      R => '0'
    );
\data_1_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => vid_io_in_clk,
      CE => vid_io_in_ce,
      D => vid_data(23),
      Q => data_1(23),
      R => '0'
    );
\data_1_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => vid_io_in_clk,
      CE => vid_io_in_ce,
      D => vid_data(24),
      Q => data_1(24),
      R => '0'
    );
\data_1_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => vid_io_in_clk,
      CE => vid_io_in_ce,
      D => vid_data(25),
      Q => data_1(25),
      R => '0'
    );
\data_1_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => vid_io_in_clk,
      CE => vid_io_in_ce,
      D => vid_data(26),
      Q => data_1(26),
      R => '0'
    );
\data_1_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => vid_io_in_clk,
      CE => vid_io_in_ce,
      D => vid_data(27),
      Q => data_1(27),
      R => '0'
    );
\data_1_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => vid_io_in_clk,
      CE => vid_io_in_ce,
      D => vid_data(28),
      Q => data_1(28),
      R => '0'
    );
\data_1_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => vid_io_in_clk,
      CE => vid_io_in_ce,
      D => vid_data(29),
      Q => data_1(29),
      R => '0'
    );
\data_1_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => vid_io_in_clk,
      CE => vid_io_in_ce,
      D => vid_data(2),
      Q => data_1(2),
      R => '0'
    );
\data_1_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => vid_io_in_clk,
      CE => vid_io_in_ce,
      D => vid_data(30),
      Q => data_1(30),
      R => '0'
    );
\data_1_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => vid_io_in_clk,
      CE => vid_io_in_ce,
      D => vid_data(31),
      Q => data_1(31),
      R => '0'
    );
\data_1_reg[32]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => vid_io_in_clk,
      CE => vid_io_in_ce,
      D => vid_data(32),
      Q => data_1(32),
      R => '0'
    );
\data_1_reg[33]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => vid_io_in_clk,
      CE => vid_io_in_ce,
      D => vid_data(33),
      Q => data_1(33),
      R => '0'
    );
\data_1_reg[34]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => vid_io_in_clk,
      CE => vid_io_in_ce,
      D => vid_data(34),
      Q => data_1(34),
      R => '0'
    );
\data_1_reg[35]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => vid_io_in_clk,
      CE => vid_io_in_ce,
      D => vid_data(35),
      Q => data_1(35),
      R => '0'
    );
\data_1_reg[36]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => vid_io_in_clk,
      CE => vid_io_in_ce,
      D => vid_data(36),
      Q => data_1(36),
      R => '0'
    );
\data_1_reg[37]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => vid_io_in_clk,
      CE => vid_io_in_ce,
      D => vid_data(37),
      Q => data_1(37),
      R => '0'
    );
\data_1_reg[38]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => vid_io_in_clk,
      CE => vid_io_in_ce,
      D => vid_data(38),
      Q => data_1(38),
      R => '0'
    );
\data_1_reg[39]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => vid_io_in_clk,
      CE => vid_io_in_ce,
      D => vid_data(39),
      Q => data_1(39),
      R => '0'
    );
\data_1_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => vid_io_in_clk,
      CE => vid_io_in_ce,
      D => vid_data(3),
      Q => data_1(3),
      R => '0'
    );
\data_1_reg[40]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => vid_io_in_clk,
      CE => vid_io_in_ce,
      D => vid_data(40),
      Q => data_1(40),
      R => '0'
    );
\data_1_reg[41]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => vid_io_in_clk,
      CE => vid_io_in_ce,
      D => vid_data(41),
      Q => data_1(41),
      R => '0'
    );
\data_1_reg[42]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => vid_io_in_clk,
      CE => vid_io_in_ce,
      D => vid_data(42),
      Q => data_1(42),
      R => '0'
    );
\data_1_reg[43]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => vid_io_in_clk,
      CE => vid_io_in_ce,
      D => vid_data(43),
      Q => data_1(43),
      R => '0'
    );
\data_1_reg[44]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => vid_io_in_clk,
      CE => vid_io_in_ce,
      D => vid_data(44),
      Q => data_1(44),
      R => '0'
    );
\data_1_reg[45]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => vid_io_in_clk,
      CE => vid_io_in_ce,
      D => vid_data(45),
      Q => data_1(45),
      R => '0'
    );
\data_1_reg[46]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => vid_io_in_clk,
      CE => vid_io_in_ce,
      D => vid_data(46),
      Q => data_1(46),
      R => '0'
    );
\data_1_reg[47]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => vid_io_in_clk,
      CE => vid_io_in_ce,
      D => vid_data(47),
      Q => data_1(47),
      R => '0'
    );
\data_1_reg[48]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => vid_io_in_clk,
      CE => vid_io_in_ce,
      D => vid_data(48),
      Q => data_1(48),
      R => '0'
    );
\data_1_reg[49]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => vid_io_in_clk,
      CE => vid_io_in_ce,
      D => vid_data(49),
      Q => data_1(49),
      R => '0'
    );
\data_1_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => vid_io_in_clk,
      CE => vid_io_in_ce,
      D => vid_data(4),
      Q => data_1(4),
      R => '0'
    );
\data_1_reg[50]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => vid_io_in_clk,
      CE => vid_io_in_ce,
      D => vid_data(50),
      Q => data_1(50),
      R => '0'
    );
\data_1_reg[51]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => vid_io_in_clk,
      CE => vid_io_in_ce,
      D => vid_data(51),
      Q => data_1(51),
      R => '0'
    );
\data_1_reg[52]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => vid_io_in_clk,
      CE => vid_io_in_ce,
      D => vid_data(52),
      Q => data_1(52),
      R => '0'
    );
\data_1_reg[53]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => vid_io_in_clk,
      CE => vid_io_in_ce,
      D => vid_data(53),
      Q => data_1(53),
      R => '0'
    );
\data_1_reg[54]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => vid_io_in_clk,
      CE => vid_io_in_ce,
      D => vid_data(54),
      Q => data_1(54),
      R => '0'
    );
\data_1_reg[55]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => vid_io_in_clk,
      CE => vid_io_in_ce,
      D => vid_data(55),
      Q => data_1(55),
      R => '0'
    );
\data_1_reg[56]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => vid_io_in_clk,
      CE => vid_io_in_ce,
      D => vid_data(56),
      Q => data_1(56),
      R => '0'
    );
\data_1_reg[57]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => vid_io_in_clk,
      CE => vid_io_in_ce,
      D => vid_data(57),
      Q => data_1(57),
      R => '0'
    );
\data_1_reg[58]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => vid_io_in_clk,
      CE => vid_io_in_ce,
      D => vid_data(58),
      Q => data_1(58),
      R => '0'
    );
\data_1_reg[59]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => vid_io_in_clk,
      CE => vid_io_in_ce,
      D => vid_data(59),
      Q => data_1(59),
      R => '0'
    );
\data_1_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => vid_io_in_clk,
      CE => vid_io_in_ce,
      D => vid_data(5),
      Q => data_1(5),
      R => '0'
    );
\data_1_reg[60]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => vid_io_in_clk,
      CE => vid_io_in_ce,
      D => vid_data(60),
      Q => data_1(60),
      R => '0'
    );
\data_1_reg[61]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => vid_io_in_clk,
      CE => vid_io_in_ce,
      D => vid_data(61),
      Q => data_1(61),
      R => '0'
    );
\data_1_reg[62]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => vid_io_in_clk,
      CE => vid_io_in_ce,
      D => vid_data(62),
      Q => data_1(62),
      R => '0'
    );
\data_1_reg[63]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => vid_io_in_clk,
      CE => vid_io_in_ce,
      D => vid_data(63),
      Q => data_1(63),
      R => '0'
    );
\data_1_reg[64]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => vid_io_in_clk,
      CE => vid_io_in_ce,
      D => vid_data(64),
      Q => data_1(64),
      R => '0'
    );
\data_1_reg[65]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => vid_io_in_clk,
      CE => vid_io_in_ce,
      D => vid_data(65),
      Q => data_1(65),
      R => '0'
    );
\data_1_reg[66]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => vid_io_in_clk,
      CE => vid_io_in_ce,
      D => vid_data(66),
      Q => data_1(66),
      R => '0'
    );
\data_1_reg[67]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => vid_io_in_clk,
      CE => vid_io_in_ce,
      D => vid_data(67),
      Q => data_1(67),
      R => '0'
    );
\data_1_reg[68]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => vid_io_in_clk,
      CE => vid_io_in_ce,
      D => vid_data(68),
      Q => data_1(68),
      R => '0'
    );
\data_1_reg[69]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => vid_io_in_clk,
      CE => vid_io_in_ce,
      D => vid_data(69),
      Q => data_1(69),
      R => '0'
    );
\data_1_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => vid_io_in_clk,
      CE => vid_io_in_ce,
      D => vid_data(6),
      Q => data_1(6),
      R => '0'
    );
\data_1_reg[70]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => vid_io_in_clk,
      CE => vid_io_in_ce,
      D => vid_data(70),
      Q => data_1(70),
      R => '0'
    );
\data_1_reg[71]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => vid_io_in_clk,
      CE => vid_io_in_ce,
      D => vid_data(71),
      Q => data_1(71),
      R => '0'
    );
\data_1_reg[72]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => vid_io_in_clk,
      CE => vid_io_in_ce,
      D => vid_data(72),
      Q => data_1(72),
      R => '0'
    );
\data_1_reg[73]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => vid_io_in_clk,
      CE => vid_io_in_ce,
      D => vid_data(73),
      Q => data_1(73),
      R => '0'
    );
\data_1_reg[74]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => vid_io_in_clk,
      CE => vid_io_in_ce,
      D => vid_data(74),
      Q => data_1(74),
      R => '0'
    );
\data_1_reg[75]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => vid_io_in_clk,
      CE => vid_io_in_ce,
      D => vid_data(75),
      Q => data_1(75),
      R => '0'
    );
\data_1_reg[76]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => vid_io_in_clk,
      CE => vid_io_in_ce,
      D => vid_data(76),
      Q => data_1(76),
      R => '0'
    );
\data_1_reg[77]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => vid_io_in_clk,
      CE => vid_io_in_ce,
      D => vid_data(77),
      Q => data_1(77),
      R => '0'
    );
\data_1_reg[78]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => vid_io_in_clk,
      CE => vid_io_in_ce,
      D => vid_data(78),
      Q => data_1(78),
      R => '0'
    );
\data_1_reg[79]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => vid_io_in_clk,
      CE => vid_io_in_ce,
      D => vid_data(79),
      Q => data_1(79),
      R => '0'
    );
\data_1_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => vid_io_in_clk,
      CE => vid_io_in_ce,
      D => vid_data(7),
      Q => data_1(7),
      R => '0'
    );
\data_1_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => vid_io_in_clk,
      CE => vid_io_in_ce,
      D => vid_data(8),
      Q => data_1(8),
      R => '0'
    );
\data_1_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => vid_io_in_clk,
      CE => vid_io_in_ce,
      D => vid_data(9),
      Q => data_1(9),
      R => '0'
    );
\data_2_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => vid_io_in_clk,
      CE => vid_io_in_ce,
      D => data_1(0),
      Q => data_2(0),
      R => '0'
    );
\data_2_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => vid_io_in_clk,
      CE => vid_io_in_ce,
      D => data_1(10),
      Q => data_2(10),
      R => '0'
    );
\data_2_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => vid_io_in_clk,
      CE => vid_io_in_ce,
      D => data_1(11),
      Q => data_2(11),
      R => '0'
    );
\data_2_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => vid_io_in_clk,
      CE => vid_io_in_ce,
      D => data_1(12),
      Q => data_2(12),
      R => '0'
    );
\data_2_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => vid_io_in_clk,
      CE => vid_io_in_ce,
      D => data_1(13),
      Q => data_2(13),
      R => '0'
    );
\data_2_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => vid_io_in_clk,
      CE => vid_io_in_ce,
      D => data_1(14),
      Q => data_2(14),
      R => '0'
    );
\data_2_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => vid_io_in_clk,
      CE => vid_io_in_ce,
      D => data_1(15),
      Q => data_2(15),
      R => '0'
    );
\data_2_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => vid_io_in_clk,
      CE => vid_io_in_ce,
      D => data_1(16),
      Q => data_2(16),
      R => '0'
    );
\data_2_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => vid_io_in_clk,
      CE => vid_io_in_ce,
      D => data_1(17),
      Q => data_2(17),
      R => '0'
    );
\data_2_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => vid_io_in_clk,
      CE => vid_io_in_ce,
      D => data_1(18),
      Q => data_2(18),
      R => '0'
    );
\data_2_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => vid_io_in_clk,
      CE => vid_io_in_ce,
      D => data_1(19),
      Q => data_2(19),
      R => '0'
    );
\data_2_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => vid_io_in_clk,
      CE => vid_io_in_ce,
      D => data_1(1),
      Q => data_2(1),
      R => '0'
    );
\data_2_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => vid_io_in_clk,
      CE => vid_io_in_ce,
      D => data_1(20),
      Q => data_2(20),
      R => '0'
    );
\data_2_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => vid_io_in_clk,
      CE => vid_io_in_ce,
      D => data_1(21),
      Q => data_2(21),
      R => '0'
    );
\data_2_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => vid_io_in_clk,
      CE => vid_io_in_ce,
      D => data_1(22),
      Q => data_2(22),
      R => '0'
    );
\data_2_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => vid_io_in_clk,
      CE => vid_io_in_ce,
      D => data_1(23),
      Q => data_2(23),
      R => '0'
    );
\data_2_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => vid_io_in_clk,
      CE => vid_io_in_ce,
      D => data_1(24),
      Q => data_2(24),
      R => '0'
    );
\data_2_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => vid_io_in_clk,
      CE => vid_io_in_ce,
      D => data_1(25),
      Q => data_2(25),
      R => '0'
    );
\data_2_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => vid_io_in_clk,
      CE => vid_io_in_ce,
      D => data_1(26),
      Q => data_2(26),
      R => '0'
    );
\data_2_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => vid_io_in_clk,
      CE => vid_io_in_ce,
      D => data_1(27),
      Q => data_2(27),
      R => '0'
    );
\data_2_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => vid_io_in_clk,
      CE => vid_io_in_ce,
      D => data_1(28),
      Q => data_2(28),
      R => '0'
    );
\data_2_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => vid_io_in_clk,
      CE => vid_io_in_ce,
      D => data_1(29),
      Q => data_2(29),
      R => '0'
    );
\data_2_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => vid_io_in_clk,
      CE => vid_io_in_ce,
      D => data_1(2),
      Q => data_2(2),
      R => '0'
    );
\data_2_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => vid_io_in_clk,
      CE => vid_io_in_ce,
      D => data_1(30),
      Q => data_2(30),
      R => '0'
    );
\data_2_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => vid_io_in_clk,
      CE => vid_io_in_ce,
      D => data_1(31),
      Q => data_2(31),
      R => '0'
    );
\data_2_reg[32]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => vid_io_in_clk,
      CE => vid_io_in_ce,
      D => data_1(32),
      Q => data_2(32),
      R => '0'
    );
\data_2_reg[33]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => vid_io_in_clk,
      CE => vid_io_in_ce,
      D => data_1(33),
      Q => data_2(33),
      R => '0'
    );
\data_2_reg[34]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => vid_io_in_clk,
      CE => vid_io_in_ce,
      D => data_1(34),
      Q => data_2(34),
      R => '0'
    );
\data_2_reg[35]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => vid_io_in_clk,
      CE => vid_io_in_ce,
      D => data_1(35),
      Q => data_2(35),
      R => '0'
    );
\data_2_reg[36]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => vid_io_in_clk,
      CE => vid_io_in_ce,
      D => data_1(36),
      Q => data_2(36),
      R => '0'
    );
\data_2_reg[37]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => vid_io_in_clk,
      CE => vid_io_in_ce,
      D => data_1(37),
      Q => data_2(37),
      R => '0'
    );
\data_2_reg[38]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => vid_io_in_clk,
      CE => vid_io_in_ce,
      D => data_1(38),
      Q => data_2(38),
      R => '0'
    );
\data_2_reg[39]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => vid_io_in_clk,
      CE => vid_io_in_ce,
      D => data_1(39),
      Q => data_2(39),
      R => '0'
    );
\data_2_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => vid_io_in_clk,
      CE => vid_io_in_ce,
      D => data_1(3),
      Q => data_2(3),
      R => '0'
    );
\data_2_reg[40]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => vid_io_in_clk,
      CE => vid_io_in_ce,
      D => data_1(40),
      Q => data_2(40),
      R => '0'
    );
\data_2_reg[41]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => vid_io_in_clk,
      CE => vid_io_in_ce,
      D => data_1(41),
      Q => data_2(41),
      R => '0'
    );
\data_2_reg[42]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => vid_io_in_clk,
      CE => vid_io_in_ce,
      D => data_1(42),
      Q => data_2(42),
      R => '0'
    );
\data_2_reg[43]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => vid_io_in_clk,
      CE => vid_io_in_ce,
      D => data_1(43),
      Q => data_2(43),
      R => '0'
    );
\data_2_reg[44]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => vid_io_in_clk,
      CE => vid_io_in_ce,
      D => data_1(44),
      Q => data_2(44),
      R => '0'
    );
\data_2_reg[45]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => vid_io_in_clk,
      CE => vid_io_in_ce,
      D => data_1(45),
      Q => data_2(45),
      R => '0'
    );
\data_2_reg[46]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => vid_io_in_clk,
      CE => vid_io_in_ce,
      D => data_1(46),
      Q => data_2(46),
      R => '0'
    );
\data_2_reg[47]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => vid_io_in_clk,
      CE => vid_io_in_ce,
      D => data_1(47),
      Q => data_2(47),
      R => '0'
    );
\data_2_reg[48]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => vid_io_in_clk,
      CE => vid_io_in_ce,
      D => data_1(48),
      Q => data_2(48),
      R => '0'
    );
\data_2_reg[49]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => vid_io_in_clk,
      CE => vid_io_in_ce,
      D => data_1(49),
      Q => data_2(49),
      R => '0'
    );
\data_2_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => vid_io_in_clk,
      CE => vid_io_in_ce,
      D => data_1(4),
      Q => data_2(4),
      R => '0'
    );
\data_2_reg[50]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => vid_io_in_clk,
      CE => vid_io_in_ce,
      D => data_1(50),
      Q => data_2(50),
      R => '0'
    );
\data_2_reg[51]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => vid_io_in_clk,
      CE => vid_io_in_ce,
      D => data_1(51),
      Q => data_2(51),
      R => '0'
    );
\data_2_reg[52]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => vid_io_in_clk,
      CE => vid_io_in_ce,
      D => data_1(52),
      Q => data_2(52),
      R => '0'
    );
\data_2_reg[53]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => vid_io_in_clk,
      CE => vid_io_in_ce,
      D => data_1(53),
      Q => data_2(53),
      R => '0'
    );
\data_2_reg[54]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => vid_io_in_clk,
      CE => vid_io_in_ce,
      D => data_1(54),
      Q => data_2(54),
      R => '0'
    );
\data_2_reg[55]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => vid_io_in_clk,
      CE => vid_io_in_ce,
      D => data_1(55),
      Q => data_2(55),
      R => '0'
    );
\data_2_reg[56]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => vid_io_in_clk,
      CE => vid_io_in_ce,
      D => data_1(56),
      Q => data_2(56),
      R => '0'
    );
\data_2_reg[57]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => vid_io_in_clk,
      CE => vid_io_in_ce,
      D => data_1(57),
      Q => data_2(57),
      R => '0'
    );
\data_2_reg[58]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => vid_io_in_clk,
      CE => vid_io_in_ce,
      D => data_1(58),
      Q => data_2(58),
      R => '0'
    );
\data_2_reg[59]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => vid_io_in_clk,
      CE => vid_io_in_ce,
      D => data_1(59),
      Q => data_2(59),
      R => '0'
    );
\data_2_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => vid_io_in_clk,
      CE => vid_io_in_ce,
      D => data_1(5),
      Q => data_2(5),
      R => '0'
    );
\data_2_reg[60]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => vid_io_in_clk,
      CE => vid_io_in_ce,
      D => data_1(60),
      Q => data_2(60),
      R => '0'
    );
\data_2_reg[61]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => vid_io_in_clk,
      CE => vid_io_in_ce,
      D => data_1(61),
      Q => data_2(61),
      R => '0'
    );
\data_2_reg[62]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => vid_io_in_clk,
      CE => vid_io_in_ce,
      D => data_1(62),
      Q => data_2(62),
      R => '0'
    );
\data_2_reg[63]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => vid_io_in_clk,
      CE => vid_io_in_ce,
      D => data_1(63),
      Q => data_2(63),
      R => '0'
    );
\data_2_reg[64]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => vid_io_in_clk,
      CE => vid_io_in_ce,
      D => data_1(64),
      Q => data_2(64),
      R => '0'
    );
\data_2_reg[65]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => vid_io_in_clk,
      CE => vid_io_in_ce,
      D => data_1(65),
      Q => data_2(65),
      R => '0'
    );
\data_2_reg[66]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => vid_io_in_clk,
      CE => vid_io_in_ce,
      D => data_1(66),
      Q => data_2(66),
      R => '0'
    );
\data_2_reg[67]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => vid_io_in_clk,
      CE => vid_io_in_ce,
      D => data_1(67),
      Q => data_2(67),
      R => '0'
    );
\data_2_reg[68]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => vid_io_in_clk,
      CE => vid_io_in_ce,
      D => data_1(68),
      Q => data_2(68),
      R => '0'
    );
\data_2_reg[69]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => vid_io_in_clk,
      CE => vid_io_in_ce,
      D => data_1(69),
      Q => data_2(69),
      R => '0'
    );
\data_2_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => vid_io_in_clk,
      CE => vid_io_in_ce,
      D => data_1(6),
      Q => data_2(6),
      R => '0'
    );
\data_2_reg[70]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => vid_io_in_clk,
      CE => vid_io_in_ce,
      D => data_1(70),
      Q => data_2(70),
      R => '0'
    );
\data_2_reg[71]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => vid_io_in_clk,
      CE => vid_io_in_ce,
      D => data_1(71),
      Q => data_2(71),
      R => '0'
    );
\data_2_reg[72]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => vid_io_in_clk,
      CE => vid_io_in_ce,
      D => data_1(72),
      Q => data_2(72),
      R => '0'
    );
\data_2_reg[73]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => vid_io_in_clk,
      CE => vid_io_in_ce,
      D => data_1(73),
      Q => data_2(73),
      R => '0'
    );
\data_2_reg[74]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => vid_io_in_clk,
      CE => vid_io_in_ce,
      D => data_1(74),
      Q => data_2(74),
      R => '0'
    );
\data_2_reg[75]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => vid_io_in_clk,
      CE => vid_io_in_ce,
      D => data_1(75),
      Q => data_2(75),
      R => '0'
    );
\data_2_reg[76]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => vid_io_in_clk,
      CE => vid_io_in_ce,
      D => data_1(76),
      Q => data_2(76),
      R => '0'
    );
\data_2_reg[77]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => vid_io_in_clk,
      CE => vid_io_in_ce,
      D => data_1(77),
      Q => data_2(77),
      R => '0'
    );
\data_2_reg[78]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => vid_io_in_clk,
      CE => vid_io_in_ce,
      D => data_1(78),
      Q => data_2(78),
      R => '0'
    );
\data_2_reg[79]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => vid_io_in_clk,
      CE => vid_io_in_ce,
      D => data_1(79),
      Q => data_2(79),
      R => '0'
    );
\data_2_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => vid_io_in_clk,
      CE => vid_io_in_ce,
      D => data_1(7),
      Q => data_2(7),
      R => '0'
    );
\data_2_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => vid_io_in_clk,
      CE => vid_io_in_ce,
      D => data_1(8),
      Q => data_2(8),
      R => '0'
    );
\data_2_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => vid_io_in_clk,
      CE => vid_io_in_ce,
      D => data_1(9),
      Q => data_2(9),
      R => '0'
    );
\data_3_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => vid_io_in_clk,
      CE => vid_io_in_ce,
      D => data_2(0),
      Q => din(0),
      R => '0'
    );
\data_3_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => vid_io_in_clk,
      CE => vid_io_in_ce,
      D => data_2(10),
      Q => din(10),
      R => '0'
    );
\data_3_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => vid_io_in_clk,
      CE => vid_io_in_ce,
      D => data_2(11),
      Q => din(11),
      R => '0'
    );
\data_3_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => vid_io_in_clk,
      CE => vid_io_in_ce,
      D => data_2(12),
      Q => din(12),
      R => '0'
    );
\data_3_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => vid_io_in_clk,
      CE => vid_io_in_ce,
      D => data_2(13),
      Q => din(13),
      R => '0'
    );
\data_3_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => vid_io_in_clk,
      CE => vid_io_in_ce,
      D => data_2(14),
      Q => din(14),
      R => '0'
    );
\data_3_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => vid_io_in_clk,
      CE => vid_io_in_ce,
      D => data_2(15),
      Q => din(15),
      R => '0'
    );
\data_3_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => vid_io_in_clk,
      CE => vid_io_in_ce,
      D => data_2(16),
      Q => din(16),
      R => '0'
    );
\data_3_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => vid_io_in_clk,
      CE => vid_io_in_ce,
      D => data_2(17),
      Q => din(17),
      R => '0'
    );
\data_3_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => vid_io_in_clk,
      CE => vid_io_in_ce,
      D => data_2(18),
      Q => din(18),
      R => '0'
    );
\data_3_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => vid_io_in_clk,
      CE => vid_io_in_ce,
      D => data_2(19),
      Q => din(19),
      R => '0'
    );
\data_3_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => vid_io_in_clk,
      CE => vid_io_in_ce,
      D => data_2(1),
      Q => din(1),
      R => '0'
    );
\data_3_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => vid_io_in_clk,
      CE => vid_io_in_ce,
      D => data_2(20),
      Q => din(20),
      R => '0'
    );
\data_3_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => vid_io_in_clk,
      CE => vid_io_in_ce,
      D => data_2(21),
      Q => din(21),
      R => '0'
    );
\data_3_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => vid_io_in_clk,
      CE => vid_io_in_ce,
      D => data_2(22),
      Q => din(22),
      R => '0'
    );
\data_3_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => vid_io_in_clk,
      CE => vid_io_in_ce,
      D => data_2(23),
      Q => din(23),
      R => '0'
    );
\data_3_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => vid_io_in_clk,
      CE => vid_io_in_ce,
      D => data_2(24),
      Q => din(24),
      R => '0'
    );
\data_3_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => vid_io_in_clk,
      CE => vid_io_in_ce,
      D => data_2(25),
      Q => din(25),
      R => '0'
    );
\data_3_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => vid_io_in_clk,
      CE => vid_io_in_ce,
      D => data_2(26),
      Q => din(26),
      R => '0'
    );
\data_3_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => vid_io_in_clk,
      CE => vid_io_in_ce,
      D => data_2(27),
      Q => din(27),
      R => '0'
    );
\data_3_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => vid_io_in_clk,
      CE => vid_io_in_ce,
      D => data_2(28),
      Q => din(28),
      R => '0'
    );
\data_3_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => vid_io_in_clk,
      CE => vid_io_in_ce,
      D => data_2(29),
      Q => din(29),
      R => '0'
    );
\data_3_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => vid_io_in_clk,
      CE => vid_io_in_ce,
      D => data_2(2),
      Q => din(2),
      R => '0'
    );
\data_3_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => vid_io_in_clk,
      CE => vid_io_in_ce,
      D => data_2(30),
      Q => din(30),
      R => '0'
    );
\data_3_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => vid_io_in_clk,
      CE => vid_io_in_ce,
      D => data_2(31),
      Q => din(31),
      R => '0'
    );
\data_3_reg[32]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => vid_io_in_clk,
      CE => vid_io_in_ce,
      D => data_2(32),
      Q => din(32),
      R => '0'
    );
\data_3_reg[33]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => vid_io_in_clk,
      CE => vid_io_in_ce,
      D => data_2(33),
      Q => din(33),
      R => '0'
    );
\data_3_reg[34]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => vid_io_in_clk,
      CE => vid_io_in_ce,
      D => data_2(34),
      Q => din(34),
      R => '0'
    );
\data_3_reg[35]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => vid_io_in_clk,
      CE => vid_io_in_ce,
      D => data_2(35),
      Q => din(35),
      R => '0'
    );
\data_3_reg[36]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => vid_io_in_clk,
      CE => vid_io_in_ce,
      D => data_2(36),
      Q => din(36),
      R => '0'
    );
\data_3_reg[37]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => vid_io_in_clk,
      CE => vid_io_in_ce,
      D => data_2(37),
      Q => din(37),
      R => '0'
    );
\data_3_reg[38]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => vid_io_in_clk,
      CE => vid_io_in_ce,
      D => data_2(38),
      Q => din(38),
      R => '0'
    );
\data_3_reg[39]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => vid_io_in_clk,
      CE => vid_io_in_ce,
      D => data_2(39),
      Q => din(39),
      R => '0'
    );
\data_3_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => vid_io_in_clk,
      CE => vid_io_in_ce,
      D => data_2(3),
      Q => din(3),
      R => '0'
    );
\data_3_reg[40]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => vid_io_in_clk,
      CE => vid_io_in_ce,
      D => data_2(40),
      Q => din(40),
      R => '0'
    );
\data_3_reg[41]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => vid_io_in_clk,
      CE => vid_io_in_ce,
      D => data_2(41),
      Q => din(41),
      R => '0'
    );
\data_3_reg[42]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => vid_io_in_clk,
      CE => vid_io_in_ce,
      D => data_2(42),
      Q => din(42),
      R => '0'
    );
\data_3_reg[43]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => vid_io_in_clk,
      CE => vid_io_in_ce,
      D => data_2(43),
      Q => din(43),
      R => '0'
    );
\data_3_reg[44]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => vid_io_in_clk,
      CE => vid_io_in_ce,
      D => data_2(44),
      Q => din(44),
      R => '0'
    );
\data_3_reg[45]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => vid_io_in_clk,
      CE => vid_io_in_ce,
      D => data_2(45),
      Q => din(45),
      R => '0'
    );
\data_3_reg[46]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => vid_io_in_clk,
      CE => vid_io_in_ce,
      D => data_2(46),
      Q => din(46),
      R => '0'
    );
\data_3_reg[47]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => vid_io_in_clk,
      CE => vid_io_in_ce,
      D => data_2(47),
      Q => din(47),
      R => '0'
    );
\data_3_reg[48]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => vid_io_in_clk,
      CE => vid_io_in_ce,
      D => data_2(48),
      Q => din(48),
      R => '0'
    );
\data_3_reg[49]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => vid_io_in_clk,
      CE => vid_io_in_ce,
      D => data_2(49),
      Q => din(49),
      R => '0'
    );
\data_3_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => vid_io_in_clk,
      CE => vid_io_in_ce,
      D => data_2(4),
      Q => din(4),
      R => '0'
    );
\data_3_reg[50]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => vid_io_in_clk,
      CE => vid_io_in_ce,
      D => data_2(50),
      Q => din(50),
      R => '0'
    );
\data_3_reg[51]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => vid_io_in_clk,
      CE => vid_io_in_ce,
      D => data_2(51),
      Q => din(51),
      R => '0'
    );
\data_3_reg[52]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => vid_io_in_clk,
      CE => vid_io_in_ce,
      D => data_2(52),
      Q => din(52),
      R => '0'
    );
\data_3_reg[53]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => vid_io_in_clk,
      CE => vid_io_in_ce,
      D => data_2(53),
      Q => din(53),
      R => '0'
    );
\data_3_reg[54]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => vid_io_in_clk,
      CE => vid_io_in_ce,
      D => data_2(54),
      Q => din(54),
      R => '0'
    );
\data_3_reg[55]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => vid_io_in_clk,
      CE => vid_io_in_ce,
      D => data_2(55),
      Q => din(55),
      R => '0'
    );
\data_3_reg[56]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => vid_io_in_clk,
      CE => vid_io_in_ce,
      D => data_2(56),
      Q => din(56),
      R => '0'
    );
\data_3_reg[57]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => vid_io_in_clk,
      CE => vid_io_in_ce,
      D => data_2(57),
      Q => din(57),
      R => '0'
    );
\data_3_reg[58]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => vid_io_in_clk,
      CE => vid_io_in_ce,
      D => data_2(58),
      Q => din(58),
      R => '0'
    );
\data_3_reg[59]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => vid_io_in_clk,
      CE => vid_io_in_ce,
      D => data_2(59),
      Q => din(59),
      R => '0'
    );
\data_3_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => vid_io_in_clk,
      CE => vid_io_in_ce,
      D => data_2(5),
      Q => din(5),
      R => '0'
    );
\data_3_reg[60]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => vid_io_in_clk,
      CE => vid_io_in_ce,
      D => data_2(60),
      Q => din(60),
      R => '0'
    );
\data_3_reg[61]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => vid_io_in_clk,
      CE => vid_io_in_ce,
      D => data_2(61),
      Q => din(61),
      R => '0'
    );
\data_3_reg[62]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => vid_io_in_clk,
      CE => vid_io_in_ce,
      D => data_2(62),
      Q => din(62),
      R => '0'
    );
\data_3_reg[63]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => vid_io_in_clk,
      CE => vid_io_in_ce,
      D => data_2(63),
      Q => din(63),
      R => '0'
    );
\data_3_reg[64]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => vid_io_in_clk,
      CE => vid_io_in_ce,
      D => data_2(64),
      Q => din(64),
      R => '0'
    );
\data_3_reg[65]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => vid_io_in_clk,
      CE => vid_io_in_ce,
      D => data_2(65),
      Q => din(65),
      R => '0'
    );
\data_3_reg[66]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => vid_io_in_clk,
      CE => vid_io_in_ce,
      D => data_2(66),
      Q => din(66),
      R => '0'
    );
\data_3_reg[67]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => vid_io_in_clk,
      CE => vid_io_in_ce,
      D => data_2(67),
      Q => din(67),
      R => '0'
    );
\data_3_reg[68]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => vid_io_in_clk,
      CE => vid_io_in_ce,
      D => data_2(68),
      Q => din(68),
      R => '0'
    );
\data_3_reg[69]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => vid_io_in_clk,
      CE => vid_io_in_ce,
      D => data_2(69),
      Q => din(69),
      R => '0'
    );
\data_3_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => vid_io_in_clk,
      CE => vid_io_in_ce,
      D => data_2(6),
      Q => din(6),
      R => '0'
    );
\data_3_reg[70]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => vid_io_in_clk,
      CE => vid_io_in_ce,
      D => data_2(70),
      Q => din(70),
      R => '0'
    );
\data_3_reg[71]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => vid_io_in_clk,
      CE => vid_io_in_ce,
      D => data_2(71),
      Q => din(71),
      R => '0'
    );
\data_3_reg[72]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => vid_io_in_clk,
      CE => vid_io_in_ce,
      D => data_2(72),
      Q => din(72),
      R => '0'
    );
\data_3_reg[73]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => vid_io_in_clk,
      CE => vid_io_in_ce,
      D => data_2(73),
      Q => din(73),
      R => '0'
    );
\data_3_reg[74]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => vid_io_in_clk,
      CE => vid_io_in_ce,
      D => data_2(74),
      Q => din(74),
      R => '0'
    );
\data_3_reg[75]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => vid_io_in_clk,
      CE => vid_io_in_ce,
      D => data_2(75),
      Q => din(75),
      R => '0'
    );
\data_3_reg[76]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => vid_io_in_clk,
      CE => vid_io_in_ce,
      D => data_2(76),
      Q => din(76),
      R => '0'
    );
\data_3_reg[77]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => vid_io_in_clk,
      CE => vid_io_in_ce,
      D => data_2(77),
      Q => din(77),
      R => '0'
    );
\data_3_reg[78]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => vid_io_in_clk,
      CE => vid_io_in_ce,
      D => data_2(78),
      Q => din(78),
      R => '0'
    );
\data_3_reg[79]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => vid_io_in_clk,
      CE => vid_io_in_ce,
      D => data_2(79),
      Q => din(79),
      R => '0'
    );
\data_3_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => vid_io_in_clk,
      CE => vid_io_in_ce,
      D => data_2(7),
      Q => din(7),
      R => '0'
    );
\data_3_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => vid_io_in_clk,
      CE => vid_io_in_ce,
      D => data_2(8),
      Q => din(8),
      R => '0'
    );
\data_3_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => vid_io_in_clk,
      CE => vid_io_in_ce,
      D => data_2(9),
      Q => din(9),
      R => '0'
    );
de_1_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => vid_io_in_clk,
      CE => vid_io_in_ce,
      D => vid_active_video,
      Q => \^o1\,
      R => '0'
    );
de_2_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => vid_io_in_clk,
      CE => vid_io_in_ce,
      D => \^o1\,
      Q => de_2,
      R => '0'
    );
de_3_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => vid_io_in_clk,
      CE => vid_io_in_ce,
      D => de_2,
      Q => idf_de,
      R => '0'
    );
eol_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => de_2,
      I1 => \^o1\,
      O => n_0_eol_i_1
    );
eol_reg: unisim.vcomponents.FDRE
    port map (
      C => vid_io_in_clk,
      CE => vid_io_in_ce,
      D => n_0_eol_i_1,
      Q => din(80),
      R => '0'
    );
field_id_1_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => vid_io_in_clk,
      CE => vid_io_in_ce,
      D => vid_field_id,
      Q => \^vtd_field_id\,
      R => '0'
    );
field_id_2_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => vid_io_in_clk,
      CE => vid_io_in_ce,
      D => \^vtd_field_id\,
      Q => field_id_2,
      R => '0'
    );
field_id_3_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => vid_io_in_clk,
      CE => vid_io_in_ce,
      D => field_id_2,
      Q => din(82),
      R => '0'
    );
hblank_1_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => vid_io_in_clk,
      CE => vid_io_in_ce,
      D => vid_hblank,
      Q => vtd_hblank,
      R => '0'
    );
hsync_1_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => vid_io_in_clk,
      CE => vid_io_in_ce,
      D => vid_hsync,
      Q => vtd_hsync,
      R => '0'
    );
sof_1_reg: unisim.vcomponents.FDRE
    port map (
      C => vid_io_in_clk,
      CE => vid_io_in_ce,
      D => sof,
      Q => din(81),
      R => '0'
    );
sof_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
    port map (
      I0 => de_2,
      I1 => \^o1\,
      I2 => n_0_vert_blanking_intvl_reg,
      O => sof0
    );
sof_reg: unisim.vcomponents.FDRE
    port map (
      C => vid_io_in_clk,
      CE => vid_io_in_ce,
      D => sof0,
      Q => sof,
      R => '0'
    );
v_blank_sync_2_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => \^vtd_vblank\,
      I1 => \^vtd_vsync\,
      O => v_blank_sync_1
    );
v_blank_sync_2_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => vid_io_in_clk,
      CE => vid_io_in_ce,
      D => v_blank_sync_1,
      Q => v_blank_sync_2,
      R => '0'
    );
vblank_1_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => vid_io_in_clk,
      CE => vid_io_in_ce,
      D => vid_vblank,
      Q => \^vtd_vblank\,
      R => '0'
    );
vert_blanking_intvl_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B0B0F0F0FFB0F0F0"
    )
    port map (
      I0 => de_2,
      I1 => \^o1\,
      I2 => n_0_vert_blanking_intvl_reg,
      I3 => v_blank_sync_1,
      I4 => vid_io_in_ce,
      I5 => v_blank_sync_2,
      O => n_0_vert_blanking_intvl_i_1
    );
vert_blanking_intvl_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => vid_io_in_clk,
      CE => '1',
      D => n_0_vert_blanking_intvl_i_1,
      Q => n_0_vert_blanking_intvl_reg,
      R => '0'
    );
vsync_1_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => vid_io_in_clk,
      CE => vid_io_in_ce,
      D => vid_vsync,
      Q => \^vtd_vsync\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity v_vid_in_axi4s_0_v_vid_in_axi4s_v3_0_in_coupler is
  port (
    locked_1 : out STD_LOGIC;
    wr_error : out STD_LOGIC;
    O1 : out STD_LOGIC;
    O2 : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 82 downto 0 );
    aclk : in STD_LOGIC;
    vid_io_in_clk : in STD_LOGIC;
    vid_io_in_ce : in STD_LOGIC;
    aclken : in STD_LOGIC;
    axis_enable : in STD_LOGIC;
    I1 : in STD_LOGIC;
    idf_de : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    rst : in STD_LOGIC;
    m_axis_video_tready : in STD_LOGIC;
    din : in STD_LOGIC_VECTOR ( 82 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of v_vid_in_axi4s_0_v_vid_in_axi4s_v3_0_in_coupler : entity is "v_vid_in_axi4s_v3_0_in_coupler";
end v_vid_in_axi4s_0_v_vid_in_axi4s_v3_0_in_coupler;

architecture STRUCTURE of v_vid_in_axi4s_0_v_vid_in_axi4s_v3_0_in_coupler is
  signal \^o2\ : STD_LOGIC;
  signal first_sof_reg : STD_LOGIC;
  signal locked_2 : STD_LOGIC;
  signal n_0_first_sof_reg_i_1 : STD_LOGIC;
  signal n_0_in_bridge_async_fifo_2_i : STD_LOGIC;
  signal n_10_in_bridge_async_fifo_2_i : STD_LOGIC;
  signal n_11_in_bridge_async_fifo_2_i : STD_LOGIC;
  signal n_12_in_bridge_async_fifo_2_i : STD_LOGIC;
  signal n_13_in_bridge_async_fifo_2_i : STD_LOGIC;
  signal n_14_in_bridge_async_fifo_2_i : STD_LOGIC;
  signal n_15_in_bridge_async_fifo_2_i : STD_LOGIC;
  signal n_16_in_bridge_async_fifo_2_i : STD_LOGIC;
  signal n_17_in_bridge_async_fifo_2_i : STD_LOGIC;
  signal n_18_in_bridge_async_fifo_2_i : STD_LOGIC;
  signal n_19_in_bridge_async_fifo_2_i : STD_LOGIC;
  signal n_20_in_bridge_async_fifo_2_i : STD_LOGIC;
  signal n_21_in_bridge_async_fifo_2_i : STD_LOGIC;
  signal n_22_in_bridge_async_fifo_2_i : STD_LOGIC;
  signal n_23_in_bridge_async_fifo_2_i : STD_LOGIC;
  signal n_24_in_bridge_async_fifo_2_i : STD_LOGIC;
  signal n_25_in_bridge_async_fifo_2_i : STD_LOGIC;
  signal n_26_in_bridge_async_fifo_2_i : STD_LOGIC;
  signal n_27_in_bridge_async_fifo_2_i : STD_LOGIC;
  signal n_28_in_bridge_async_fifo_2_i : STD_LOGIC;
  signal n_29_in_bridge_async_fifo_2_i : STD_LOGIC;
  signal n_30_in_bridge_async_fifo_2_i : STD_LOGIC;
  signal n_31_in_bridge_async_fifo_2_i : STD_LOGIC;
  signal n_32_in_bridge_async_fifo_2_i : STD_LOGIC;
  signal n_33_in_bridge_async_fifo_2_i : STD_LOGIC;
  signal n_34_in_bridge_async_fifo_2_i : STD_LOGIC;
  signal n_35_in_bridge_async_fifo_2_i : STD_LOGIC;
  signal n_36_in_bridge_async_fifo_2_i : STD_LOGIC;
  signal n_37_in_bridge_async_fifo_2_i : STD_LOGIC;
  signal n_38_in_bridge_async_fifo_2_i : STD_LOGIC;
  signal n_39_in_bridge_async_fifo_2_i : STD_LOGIC;
  signal n_3_in_bridge_async_fifo_2_i : STD_LOGIC;
  signal n_40_in_bridge_async_fifo_2_i : STD_LOGIC;
  signal n_41_in_bridge_async_fifo_2_i : STD_LOGIC;
  signal n_42_in_bridge_async_fifo_2_i : STD_LOGIC;
  signal n_43_in_bridge_async_fifo_2_i : STD_LOGIC;
  signal n_44_in_bridge_async_fifo_2_i : STD_LOGIC;
  signal n_45_in_bridge_async_fifo_2_i : STD_LOGIC;
  signal n_46_in_bridge_async_fifo_2_i : STD_LOGIC;
  signal n_47_in_bridge_async_fifo_2_i : STD_LOGIC;
  signal n_48_in_bridge_async_fifo_2_i : STD_LOGIC;
  signal n_49_in_bridge_async_fifo_2_i : STD_LOGIC;
  signal n_4_in_bridge_async_fifo_2_i : STD_LOGIC;
  signal n_50_in_bridge_async_fifo_2_i : STD_LOGIC;
  signal n_51_in_bridge_async_fifo_2_i : STD_LOGIC;
  signal n_52_in_bridge_async_fifo_2_i : STD_LOGIC;
  signal n_53_in_bridge_async_fifo_2_i : STD_LOGIC;
  signal n_54_in_bridge_async_fifo_2_i : STD_LOGIC;
  signal n_55_in_bridge_async_fifo_2_i : STD_LOGIC;
  signal n_56_in_bridge_async_fifo_2_i : STD_LOGIC;
  signal n_57_in_bridge_async_fifo_2_i : STD_LOGIC;
  signal n_58_in_bridge_async_fifo_2_i : STD_LOGIC;
  signal n_59_in_bridge_async_fifo_2_i : STD_LOGIC;
  signal n_5_in_bridge_async_fifo_2_i : STD_LOGIC;
  signal n_60_in_bridge_async_fifo_2_i : STD_LOGIC;
  signal n_61_in_bridge_async_fifo_2_i : STD_LOGIC;
  signal n_62_in_bridge_async_fifo_2_i : STD_LOGIC;
  signal n_63_in_bridge_async_fifo_2_i : STD_LOGIC;
  signal n_64_in_bridge_async_fifo_2_i : STD_LOGIC;
  signal n_65_in_bridge_async_fifo_2_i : STD_LOGIC;
  signal n_66_in_bridge_async_fifo_2_i : STD_LOGIC;
  signal n_67_in_bridge_async_fifo_2_i : STD_LOGIC;
  signal n_68_in_bridge_async_fifo_2_i : STD_LOGIC;
  signal n_69_in_bridge_async_fifo_2_i : STD_LOGIC;
  signal n_6_in_bridge_async_fifo_2_i : STD_LOGIC;
  signal n_70_in_bridge_async_fifo_2_i : STD_LOGIC;
  signal n_71_in_bridge_async_fifo_2_i : STD_LOGIC;
  signal n_72_in_bridge_async_fifo_2_i : STD_LOGIC;
  signal n_73_in_bridge_async_fifo_2_i : STD_LOGIC;
  signal n_74_in_bridge_async_fifo_2_i : STD_LOGIC;
  signal n_75_in_bridge_async_fifo_2_i : STD_LOGIC;
  signal n_76_in_bridge_async_fifo_2_i : STD_LOGIC;
  signal n_77_in_bridge_async_fifo_2_i : STD_LOGIC;
  signal n_78_in_bridge_async_fifo_2_i : STD_LOGIC;
  signal n_79_in_bridge_async_fifo_2_i : STD_LOGIC;
  signal n_7_in_bridge_async_fifo_2_i : STD_LOGIC;
  signal n_80_in_bridge_async_fifo_2_i : STD_LOGIC;
  signal n_81_in_bridge_async_fifo_2_i : STD_LOGIC;
  signal n_82_in_bridge_async_fifo_2_i : STD_LOGIC;
  signal n_83_in_bridge_async_fifo_2_i : STD_LOGIC;
  signal n_84_in_bridge_async_fifo_2_i : STD_LOGIC;
  signal n_85_in_bridge_async_fifo_2_i : STD_LOGIC;
  signal n_86_in_bridge_async_fifo_2_i : STD_LOGIC;
  signal n_87_in_bridge_async_fifo_2_i : STD_LOGIC;
  signal n_89_in_bridge_async_fifo_2_i : STD_LOGIC;
  signal n_8_in_bridge_async_fifo_2_i : STD_LOGIC;
  signal n_9_in_bridge_async_fifo_2_i : STD_LOGIC;
  signal p_5_in : STD_LOGIC;
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of locked_1_reg : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of locked_1_reg : label is "yes";
  attribute ASYNC_REG of locked_2_reg : label is std.standard.true;
  attribute KEEP of locked_2_reg : label is "yes";
begin
  O2 <= \^o2\;
first_sof_reg_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000AE0000000000"
    )
    port map (
      I0 => first_sof_reg,
      I1 => p_5_in,
      I2 => n_87_in_bridge_async_fifo_2_i,
      I3 => locked_2,
      I4 => rst,
      I5 => aresetn,
      O => n_0_first_sof_reg_i_1
    );
first_sof_reg_reg: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => '1',
      D => n_0_first_sof_reg_i_1,
      Q => first_sof_reg,
      R => '0'
    );
in_bridge_async_fifo_2_i: entity work.v_vid_in_axi4s_0_v_vid_in_axi4s_v3_0_in_bridge_async_fifo_2
    port map (
      D(82) => n_4_in_bridge_async_fifo_2_i,
      D(81) => n_5_in_bridge_async_fifo_2_i,
      D(80) => n_6_in_bridge_async_fifo_2_i,
      D(79) => n_7_in_bridge_async_fifo_2_i,
      D(78) => n_8_in_bridge_async_fifo_2_i,
      D(77) => n_9_in_bridge_async_fifo_2_i,
      D(76) => n_10_in_bridge_async_fifo_2_i,
      D(75) => n_11_in_bridge_async_fifo_2_i,
      D(74) => n_12_in_bridge_async_fifo_2_i,
      D(73) => n_13_in_bridge_async_fifo_2_i,
      D(72) => n_14_in_bridge_async_fifo_2_i,
      D(71) => n_15_in_bridge_async_fifo_2_i,
      D(70) => n_16_in_bridge_async_fifo_2_i,
      D(69) => n_17_in_bridge_async_fifo_2_i,
      D(68) => n_18_in_bridge_async_fifo_2_i,
      D(67) => n_19_in_bridge_async_fifo_2_i,
      D(66) => n_20_in_bridge_async_fifo_2_i,
      D(65) => n_21_in_bridge_async_fifo_2_i,
      D(64) => n_22_in_bridge_async_fifo_2_i,
      D(63) => n_23_in_bridge_async_fifo_2_i,
      D(62) => n_24_in_bridge_async_fifo_2_i,
      D(61) => n_25_in_bridge_async_fifo_2_i,
      D(60) => n_26_in_bridge_async_fifo_2_i,
      D(59) => n_27_in_bridge_async_fifo_2_i,
      D(58) => n_28_in_bridge_async_fifo_2_i,
      D(57) => n_29_in_bridge_async_fifo_2_i,
      D(56) => n_30_in_bridge_async_fifo_2_i,
      D(55) => n_31_in_bridge_async_fifo_2_i,
      D(54) => n_32_in_bridge_async_fifo_2_i,
      D(53) => n_33_in_bridge_async_fifo_2_i,
      D(52) => n_34_in_bridge_async_fifo_2_i,
      D(51) => n_35_in_bridge_async_fifo_2_i,
      D(50) => n_36_in_bridge_async_fifo_2_i,
      D(49) => n_37_in_bridge_async_fifo_2_i,
      D(48) => n_38_in_bridge_async_fifo_2_i,
      D(47) => n_39_in_bridge_async_fifo_2_i,
      D(46) => n_40_in_bridge_async_fifo_2_i,
      D(45) => n_41_in_bridge_async_fifo_2_i,
      D(44) => n_42_in_bridge_async_fifo_2_i,
      D(43) => n_43_in_bridge_async_fifo_2_i,
      D(42) => n_44_in_bridge_async_fifo_2_i,
      D(41) => n_45_in_bridge_async_fifo_2_i,
      D(40) => n_46_in_bridge_async_fifo_2_i,
      D(39) => n_47_in_bridge_async_fifo_2_i,
      D(38) => n_48_in_bridge_async_fifo_2_i,
      D(37) => n_49_in_bridge_async_fifo_2_i,
      D(36) => n_50_in_bridge_async_fifo_2_i,
      D(35) => n_51_in_bridge_async_fifo_2_i,
      D(34) => n_52_in_bridge_async_fifo_2_i,
      D(33) => n_53_in_bridge_async_fifo_2_i,
      D(32) => n_54_in_bridge_async_fifo_2_i,
      D(31) => n_55_in_bridge_async_fifo_2_i,
      D(30) => n_56_in_bridge_async_fifo_2_i,
      D(29) => n_57_in_bridge_async_fifo_2_i,
      D(28) => n_58_in_bridge_async_fifo_2_i,
      D(27) => n_59_in_bridge_async_fifo_2_i,
      D(26) => n_60_in_bridge_async_fifo_2_i,
      D(25) => n_61_in_bridge_async_fifo_2_i,
      D(24) => n_62_in_bridge_async_fifo_2_i,
      D(23) => n_63_in_bridge_async_fifo_2_i,
      D(22) => n_64_in_bridge_async_fifo_2_i,
      D(21) => n_65_in_bridge_async_fifo_2_i,
      D(20) => n_66_in_bridge_async_fifo_2_i,
      D(19) => n_67_in_bridge_async_fifo_2_i,
      D(18) => n_68_in_bridge_async_fifo_2_i,
      D(17) => n_69_in_bridge_async_fifo_2_i,
      D(16) => n_70_in_bridge_async_fifo_2_i,
      D(15) => n_71_in_bridge_async_fifo_2_i,
      D(14) => n_72_in_bridge_async_fifo_2_i,
      D(13) => n_73_in_bridge_async_fifo_2_i,
      D(12) => n_74_in_bridge_async_fifo_2_i,
      D(11) => n_75_in_bridge_async_fifo_2_i,
      D(10) => n_76_in_bridge_async_fifo_2_i,
      D(9) => n_77_in_bridge_async_fifo_2_i,
      D(8) => n_78_in_bridge_async_fifo_2_i,
      D(7) => n_79_in_bridge_async_fifo_2_i,
      D(6) => n_80_in_bridge_async_fifo_2_i,
      D(5) => n_81_in_bridge_async_fifo_2_i,
      D(4) => n_82_in_bridge_async_fifo_2_i,
      D(3) => n_83_in_bridge_async_fifo_2_i,
      D(2) => n_84_in_bridge_async_fifo_2_i,
      D(1) => n_85_in_bridge_async_fifo_2_i,
      D(0) => n_86_in_bridge_async_fifo_2_i,
      E(0) => n_89_in_bridge_async_fifo_2_i,
      I1 => \^o2\,
      O1 => n_0_in_bridge_async_fifo_2_i,
      O2 => O1,
      O3 => n_3_in_bridge_async_fifo_2_i,
      aclk => aclk,
      aclken => aclken,
      aresetn => aresetn,
      din(82 downto 0) => din(82 downto 0),
      dout0_out(1) => n_87_in_bridge_async_fifo_2_i,
      dout0_out(0) => p_5_in,
      first_sof_reg => first_sof_reg,
      idf_de => idf_de,
      m_axis_video_tready => m_axis_video_tready,
      p_0_in6_in => locked_2,
      rst => rst,
      vid_io_in_ce => vid_io_in_ce,
      vid_io_in_clk => vid_io_in_clk,
      wr_error => wr_error
    );
locked_1_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => aclk,
      CE => aclken,
      D => axis_enable,
      Q => locked_1,
      R => n_0_in_bridge_async_fifo_2_i
    );
locked_2_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => aclk,
      CE => aclken,
      D => I1,
      Q => locked_2,
      R => n_0_in_bridge_async_fifo_2_i
    );
\rd_data_reg[0]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => n_89_in_bridge_async_fifo_2_i,
      D => n_86_in_bridge_async_fifo_2_i,
      Q => Q(0),
      R => n_0_in_bridge_async_fifo_2_i
    );
\rd_data_reg[10]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => n_89_in_bridge_async_fifo_2_i,
      D => n_76_in_bridge_async_fifo_2_i,
      Q => Q(10),
      R => n_0_in_bridge_async_fifo_2_i
    );
\rd_data_reg[11]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => n_89_in_bridge_async_fifo_2_i,
      D => n_75_in_bridge_async_fifo_2_i,
      Q => Q(11),
      R => n_0_in_bridge_async_fifo_2_i
    );
\rd_data_reg[12]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => n_89_in_bridge_async_fifo_2_i,
      D => n_74_in_bridge_async_fifo_2_i,
      Q => Q(12),
      R => n_0_in_bridge_async_fifo_2_i
    );
\rd_data_reg[13]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => n_89_in_bridge_async_fifo_2_i,
      D => n_73_in_bridge_async_fifo_2_i,
      Q => Q(13),
      R => n_0_in_bridge_async_fifo_2_i
    );
\rd_data_reg[14]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => n_89_in_bridge_async_fifo_2_i,
      D => n_72_in_bridge_async_fifo_2_i,
      Q => Q(14),
      R => n_0_in_bridge_async_fifo_2_i
    );
\rd_data_reg[15]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => n_89_in_bridge_async_fifo_2_i,
      D => n_71_in_bridge_async_fifo_2_i,
      Q => Q(15),
      R => n_0_in_bridge_async_fifo_2_i
    );
\rd_data_reg[16]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => n_89_in_bridge_async_fifo_2_i,
      D => n_70_in_bridge_async_fifo_2_i,
      Q => Q(16),
      R => n_0_in_bridge_async_fifo_2_i
    );
\rd_data_reg[17]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => n_89_in_bridge_async_fifo_2_i,
      D => n_69_in_bridge_async_fifo_2_i,
      Q => Q(17),
      R => n_0_in_bridge_async_fifo_2_i
    );
\rd_data_reg[18]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => n_89_in_bridge_async_fifo_2_i,
      D => n_68_in_bridge_async_fifo_2_i,
      Q => Q(18),
      R => n_0_in_bridge_async_fifo_2_i
    );
\rd_data_reg[19]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => n_89_in_bridge_async_fifo_2_i,
      D => n_67_in_bridge_async_fifo_2_i,
      Q => Q(19),
      R => n_0_in_bridge_async_fifo_2_i
    );
\rd_data_reg[1]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => n_89_in_bridge_async_fifo_2_i,
      D => n_85_in_bridge_async_fifo_2_i,
      Q => Q(1),
      R => n_0_in_bridge_async_fifo_2_i
    );
\rd_data_reg[20]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => n_89_in_bridge_async_fifo_2_i,
      D => n_66_in_bridge_async_fifo_2_i,
      Q => Q(20),
      R => n_0_in_bridge_async_fifo_2_i
    );
\rd_data_reg[21]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => n_89_in_bridge_async_fifo_2_i,
      D => n_65_in_bridge_async_fifo_2_i,
      Q => Q(21),
      R => n_0_in_bridge_async_fifo_2_i
    );
\rd_data_reg[22]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => n_89_in_bridge_async_fifo_2_i,
      D => n_64_in_bridge_async_fifo_2_i,
      Q => Q(22),
      R => n_0_in_bridge_async_fifo_2_i
    );
\rd_data_reg[23]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => n_89_in_bridge_async_fifo_2_i,
      D => n_63_in_bridge_async_fifo_2_i,
      Q => Q(23),
      R => n_0_in_bridge_async_fifo_2_i
    );
\rd_data_reg[24]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => n_89_in_bridge_async_fifo_2_i,
      D => n_62_in_bridge_async_fifo_2_i,
      Q => Q(24),
      R => n_0_in_bridge_async_fifo_2_i
    );
\rd_data_reg[25]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => n_89_in_bridge_async_fifo_2_i,
      D => n_61_in_bridge_async_fifo_2_i,
      Q => Q(25),
      R => n_0_in_bridge_async_fifo_2_i
    );
\rd_data_reg[26]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => n_89_in_bridge_async_fifo_2_i,
      D => n_60_in_bridge_async_fifo_2_i,
      Q => Q(26),
      R => n_0_in_bridge_async_fifo_2_i
    );
\rd_data_reg[27]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => n_89_in_bridge_async_fifo_2_i,
      D => n_59_in_bridge_async_fifo_2_i,
      Q => Q(27),
      R => n_0_in_bridge_async_fifo_2_i
    );
\rd_data_reg[28]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => n_89_in_bridge_async_fifo_2_i,
      D => n_58_in_bridge_async_fifo_2_i,
      Q => Q(28),
      R => n_0_in_bridge_async_fifo_2_i
    );
\rd_data_reg[29]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => n_89_in_bridge_async_fifo_2_i,
      D => n_57_in_bridge_async_fifo_2_i,
      Q => Q(29),
      R => n_0_in_bridge_async_fifo_2_i
    );
\rd_data_reg[2]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => n_89_in_bridge_async_fifo_2_i,
      D => n_84_in_bridge_async_fifo_2_i,
      Q => Q(2),
      R => n_0_in_bridge_async_fifo_2_i
    );
\rd_data_reg[30]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => n_89_in_bridge_async_fifo_2_i,
      D => n_56_in_bridge_async_fifo_2_i,
      Q => Q(30),
      R => n_0_in_bridge_async_fifo_2_i
    );
\rd_data_reg[31]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => n_89_in_bridge_async_fifo_2_i,
      D => n_55_in_bridge_async_fifo_2_i,
      Q => Q(31),
      R => n_0_in_bridge_async_fifo_2_i
    );
\rd_data_reg[32]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => n_89_in_bridge_async_fifo_2_i,
      D => n_54_in_bridge_async_fifo_2_i,
      Q => Q(32),
      R => n_0_in_bridge_async_fifo_2_i
    );
\rd_data_reg[33]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => n_89_in_bridge_async_fifo_2_i,
      D => n_53_in_bridge_async_fifo_2_i,
      Q => Q(33),
      R => n_0_in_bridge_async_fifo_2_i
    );
\rd_data_reg[34]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => n_89_in_bridge_async_fifo_2_i,
      D => n_52_in_bridge_async_fifo_2_i,
      Q => Q(34),
      R => n_0_in_bridge_async_fifo_2_i
    );
\rd_data_reg[35]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => n_89_in_bridge_async_fifo_2_i,
      D => n_51_in_bridge_async_fifo_2_i,
      Q => Q(35),
      R => n_0_in_bridge_async_fifo_2_i
    );
\rd_data_reg[36]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => n_89_in_bridge_async_fifo_2_i,
      D => n_50_in_bridge_async_fifo_2_i,
      Q => Q(36),
      R => n_0_in_bridge_async_fifo_2_i
    );
\rd_data_reg[37]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => n_89_in_bridge_async_fifo_2_i,
      D => n_49_in_bridge_async_fifo_2_i,
      Q => Q(37),
      R => n_0_in_bridge_async_fifo_2_i
    );
\rd_data_reg[38]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => n_89_in_bridge_async_fifo_2_i,
      D => n_48_in_bridge_async_fifo_2_i,
      Q => Q(38),
      R => n_0_in_bridge_async_fifo_2_i
    );
\rd_data_reg[39]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => n_89_in_bridge_async_fifo_2_i,
      D => n_47_in_bridge_async_fifo_2_i,
      Q => Q(39),
      R => n_0_in_bridge_async_fifo_2_i
    );
\rd_data_reg[3]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => n_89_in_bridge_async_fifo_2_i,
      D => n_83_in_bridge_async_fifo_2_i,
      Q => Q(3),
      R => n_0_in_bridge_async_fifo_2_i
    );
\rd_data_reg[40]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => n_89_in_bridge_async_fifo_2_i,
      D => n_46_in_bridge_async_fifo_2_i,
      Q => Q(40),
      R => n_0_in_bridge_async_fifo_2_i
    );
\rd_data_reg[41]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => n_89_in_bridge_async_fifo_2_i,
      D => n_45_in_bridge_async_fifo_2_i,
      Q => Q(41),
      R => n_0_in_bridge_async_fifo_2_i
    );
\rd_data_reg[42]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => n_89_in_bridge_async_fifo_2_i,
      D => n_44_in_bridge_async_fifo_2_i,
      Q => Q(42),
      R => n_0_in_bridge_async_fifo_2_i
    );
\rd_data_reg[43]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => n_89_in_bridge_async_fifo_2_i,
      D => n_43_in_bridge_async_fifo_2_i,
      Q => Q(43),
      R => n_0_in_bridge_async_fifo_2_i
    );
\rd_data_reg[44]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => n_89_in_bridge_async_fifo_2_i,
      D => n_42_in_bridge_async_fifo_2_i,
      Q => Q(44),
      R => n_0_in_bridge_async_fifo_2_i
    );
\rd_data_reg[45]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => n_89_in_bridge_async_fifo_2_i,
      D => n_41_in_bridge_async_fifo_2_i,
      Q => Q(45),
      R => n_0_in_bridge_async_fifo_2_i
    );
\rd_data_reg[46]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => n_89_in_bridge_async_fifo_2_i,
      D => n_40_in_bridge_async_fifo_2_i,
      Q => Q(46),
      R => n_0_in_bridge_async_fifo_2_i
    );
\rd_data_reg[47]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => n_89_in_bridge_async_fifo_2_i,
      D => n_39_in_bridge_async_fifo_2_i,
      Q => Q(47),
      R => n_0_in_bridge_async_fifo_2_i
    );
\rd_data_reg[48]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => n_89_in_bridge_async_fifo_2_i,
      D => n_38_in_bridge_async_fifo_2_i,
      Q => Q(48),
      R => n_0_in_bridge_async_fifo_2_i
    );
\rd_data_reg[49]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => n_89_in_bridge_async_fifo_2_i,
      D => n_37_in_bridge_async_fifo_2_i,
      Q => Q(49),
      R => n_0_in_bridge_async_fifo_2_i
    );
\rd_data_reg[4]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => n_89_in_bridge_async_fifo_2_i,
      D => n_82_in_bridge_async_fifo_2_i,
      Q => Q(4),
      R => n_0_in_bridge_async_fifo_2_i
    );
\rd_data_reg[50]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => n_89_in_bridge_async_fifo_2_i,
      D => n_36_in_bridge_async_fifo_2_i,
      Q => Q(50),
      R => n_0_in_bridge_async_fifo_2_i
    );
\rd_data_reg[51]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => n_89_in_bridge_async_fifo_2_i,
      D => n_35_in_bridge_async_fifo_2_i,
      Q => Q(51),
      R => n_0_in_bridge_async_fifo_2_i
    );
\rd_data_reg[52]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => n_89_in_bridge_async_fifo_2_i,
      D => n_34_in_bridge_async_fifo_2_i,
      Q => Q(52),
      R => n_0_in_bridge_async_fifo_2_i
    );
\rd_data_reg[53]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => n_89_in_bridge_async_fifo_2_i,
      D => n_33_in_bridge_async_fifo_2_i,
      Q => Q(53),
      R => n_0_in_bridge_async_fifo_2_i
    );
\rd_data_reg[54]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => n_89_in_bridge_async_fifo_2_i,
      D => n_32_in_bridge_async_fifo_2_i,
      Q => Q(54),
      R => n_0_in_bridge_async_fifo_2_i
    );
\rd_data_reg[55]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => n_89_in_bridge_async_fifo_2_i,
      D => n_31_in_bridge_async_fifo_2_i,
      Q => Q(55),
      R => n_0_in_bridge_async_fifo_2_i
    );
\rd_data_reg[56]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => n_89_in_bridge_async_fifo_2_i,
      D => n_30_in_bridge_async_fifo_2_i,
      Q => Q(56),
      R => n_0_in_bridge_async_fifo_2_i
    );
\rd_data_reg[57]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => n_89_in_bridge_async_fifo_2_i,
      D => n_29_in_bridge_async_fifo_2_i,
      Q => Q(57),
      R => n_0_in_bridge_async_fifo_2_i
    );
\rd_data_reg[58]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => n_89_in_bridge_async_fifo_2_i,
      D => n_28_in_bridge_async_fifo_2_i,
      Q => Q(58),
      R => n_0_in_bridge_async_fifo_2_i
    );
\rd_data_reg[59]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => n_89_in_bridge_async_fifo_2_i,
      D => n_27_in_bridge_async_fifo_2_i,
      Q => Q(59),
      R => n_0_in_bridge_async_fifo_2_i
    );
\rd_data_reg[5]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => n_89_in_bridge_async_fifo_2_i,
      D => n_81_in_bridge_async_fifo_2_i,
      Q => Q(5),
      R => n_0_in_bridge_async_fifo_2_i
    );
\rd_data_reg[60]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => n_89_in_bridge_async_fifo_2_i,
      D => n_26_in_bridge_async_fifo_2_i,
      Q => Q(60),
      R => n_0_in_bridge_async_fifo_2_i
    );
\rd_data_reg[61]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => n_89_in_bridge_async_fifo_2_i,
      D => n_25_in_bridge_async_fifo_2_i,
      Q => Q(61),
      R => n_0_in_bridge_async_fifo_2_i
    );
\rd_data_reg[62]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => n_89_in_bridge_async_fifo_2_i,
      D => n_24_in_bridge_async_fifo_2_i,
      Q => Q(62),
      R => n_0_in_bridge_async_fifo_2_i
    );
\rd_data_reg[63]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => n_89_in_bridge_async_fifo_2_i,
      D => n_23_in_bridge_async_fifo_2_i,
      Q => Q(63),
      R => n_0_in_bridge_async_fifo_2_i
    );
\rd_data_reg[64]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => n_89_in_bridge_async_fifo_2_i,
      D => n_22_in_bridge_async_fifo_2_i,
      Q => Q(64),
      R => n_0_in_bridge_async_fifo_2_i
    );
\rd_data_reg[65]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => n_89_in_bridge_async_fifo_2_i,
      D => n_21_in_bridge_async_fifo_2_i,
      Q => Q(65),
      R => n_0_in_bridge_async_fifo_2_i
    );
\rd_data_reg[66]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => n_89_in_bridge_async_fifo_2_i,
      D => n_20_in_bridge_async_fifo_2_i,
      Q => Q(66),
      R => n_0_in_bridge_async_fifo_2_i
    );
\rd_data_reg[67]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => n_89_in_bridge_async_fifo_2_i,
      D => n_19_in_bridge_async_fifo_2_i,
      Q => Q(67),
      R => n_0_in_bridge_async_fifo_2_i
    );
\rd_data_reg[68]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => n_89_in_bridge_async_fifo_2_i,
      D => n_18_in_bridge_async_fifo_2_i,
      Q => Q(68),
      R => n_0_in_bridge_async_fifo_2_i
    );
\rd_data_reg[69]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => n_89_in_bridge_async_fifo_2_i,
      D => n_17_in_bridge_async_fifo_2_i,
      Q => Q(69),
      R => n_0_in_bridge_async_fifo_2_i
    );
\rd_data_reg[6]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => n_89_in_bridge_async_fifo_2_i,
      D => n_80_in_bridge_async_fifo_2_i,
      Q => Q(6),
      R => n_0_in_bridge_async_fifo_2_i
    );
\rd_data_reg[70]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => n_89_in_bridge_async_fifo_2_i,
      D => n_16_in_bridge_async_fifo_2_i,
      Q => Q(70),
      R => n_0_in_bridge_async_fifo_2_i
    );
\rd_data_reg[71]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => n_89_in_bridge_async_fifo_2_i,
      D => n_15_in_bridge_async_fifo_2_i,
      Q => Q(71),
      R => n_0_in_bridge_async_fifo_2_i
    );
\rd_data_reg[72]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => n_89_in_bridge_async_fifo_2_i,
      D => n_14_in_bridge_async_fifo_2_i,
      Q => Q(72),
      R => n_0_in_bridge_async_fifo_2_i
    );
\rd_data_reg[73]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => n_89_in_bridge_async_fifo_2_i,
      D => n_13_in_bridge_async_fifo_2_i,
      Q => Q(73),
      R => n_0_in_bridge_async_fifo_2_i
    );
\rd_data_reg[74]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => n_89_in_bridge_async_fifo_2_i,
      D => n_12_in_bridge_async_fifo_2_i,
      Q => Q(74),
      R => n_0_in_bridge_async_fifo_2_i
    );
\rd_data_reg[75]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => n_89_in_bridge_async_fifo_2_i,
      D => n_11_in_bridge_async_fifo_2_i,
      Q => Q(75),
      R => n_0_in_bridge_async_fifo_2_i
    );
\rd_data_reg[76]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => n_89_in_bridge_async_fifo_2_i,
      D => n_10_in_bridge_async_fifo_2_i,
      Q => Q(76),
      R => n_0_in_bridge_async_fifo_2_i
    );
\rd_data_reg[77]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => n_89_in_bridge_async_fifo_2_i,
      D => n_9_in_bridge_async_fifo_2_i,
      Q => Q(77),
      R => n_0_in_bridge_async_fifo_2_i
    );
\rd_data_reg[78]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => n_89_in_bridge_async_fifo_2_i,
      D => n_8_in_bridge_async_fifo_2_i,
      Q => Q(78),
      R => n_0_in_bridge_async_fifo_2_i
    );
\rd_data_reg[79]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => n_89_in_bridge_async_fifo_2_i,
      D => n_7_in_bridge_async_fifo_2_i,
      Q => Q(79),
      R => n_0_in_bridge_async_fifo_2_i
    );
\rd_data_reg[7]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => n_89_in_bridge_async_fifo_2_i,
      D => n_79_in_bridge_async_fifo_2_i,
      Q => Q(7),
      R => n_0_in_bridge_async_fifo_2_i
    );
\rd_data_reg[80]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => n_89_in_bridge_async_fifo_2_i,
      D => n_6_in_bridge_async_fifo_2_i,
      Q => Q(80),
      R => n_0_in_bridge_async_fifo_2_i
    );
\rd_data_reg[81]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => n_89_in_bridge_async_fifo_2_i,
      D => n_5_in_bridge_async_fifo_2_i,
      Q => Q(81),
      R => n_0_in_bridge_async_fifo_2_i
    );
\rd_data_reg[82]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => n_89_in_bridge_async_fifo_2_i,
      D => n_4_in_bridge_async_fifo_2_i,
      Q => Q(82),
      R => n_0_in_bridge_async_fifo_2_i
    );
\rd_data_reg[8]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => n_89_in_bridge_async_fifo_2_i,
      D => n_78_in_bridge_async_fifo_2_i,
      Q => Q(8),
      R => n_0_in_bridge_async_fifo_2_i
    );
\rd_data_reg[9]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => n_89_in_bridge_async_fifo_2_i,
      D => n_77_in_bridge_async_fifo_2_i,
      Q => Q(9),
      R => n_0_in_bridge_async_fifo_2_i
    );
valid_reg: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => '1',
      D => n_3_in_bridge_async_fifo_2_i,
      Q => \^o2\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity v_vid_in_axi4s_0_v_vid_in_axi4s_v3_0_vid_in_axi4s_top is
  port (
    vid_io_in_clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    vid_io_in_ce : in STD_LOGIC;
    vid_active_video : in STD_LOGIC;
    vid_vblank : in STD_LOGIC;
    vid_hblank : in STD_LOGIC;
    vid_vsync : in STD_LOGIC;
    vid_hsync : in STD_LOGIC;
    vid_field_id : in STD_LOGIC;
    vid_data : in STD_LOGIC_VECTOR ( 79 downto 0 );
    aclk : in STD_LOGIC;
    aclken : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    m_axis_video_tdata : out STD_LOGIC_VECTOR ( 79 downto 0 );
    m_axis_video_tvalid : out STD_LOGIC;
    m_axis_video_tready : in STD_LOGIC;
    m_axis_video_tuser : out STD_LOGIC;
    m_axis_video_tlast : out STD_LOGIC;
    fid : out STD_LOGIC;
    vtd_active_video : out STD_LOGIC;
    vtd_vblank : out STD_LOGIC;
    vtd_hblank : out STD_LOGIC;
    vtd_vsync : out STD_LOGIC;
    vtd_hsync : out STD_LOGIC;
    vtd_field_id : out STD_LOGIC;
    wr_error : out STD_LOGIC;
    empty : out STD_LOGIC;
    axis_enable : in STD_LOGIC
  );
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of v_vid_in_axi4s_0_v_vid_in_axi4s_v3_0_vid_in_axi4s_top : entity is "yes";
  attribute C_M_AXIS_VIDEO_DATA_WIDTH : integer;
  attribute C_M_AXIS_VIDEO_DATA_WIDTH of v_vid_in_axi4s_0_v_vid_in_axi4s_v3_0_vid_in_axi4s_top : entity is 10;
  attribute C_M_AXIS_VIDEO_FORMAT : integer;
  attribute C_M_AXIS_VIDEO_FORMAT of v_vid_in_axi4s_0_v_vid_in_axi4s_v3_0_vid_in_axi4s_top : entity is 6;
  attribute VID_IN_DATA_WIDTH : integer;
  attribute VID_IN_DATA_WIDTH of v_vid_in_axi4s_0_v_vid_in_axi4s_v3_0_vid_in_axi4s_top : entity is 80;
  attribute C_M_AXIS_VIDEO_TDATA_WIDTH : integer;
  attribute C_M_AXIS_VIDEO_TDATA_WIDTH of v_vid_in_axi4s_0_v_vid_in_axi4s_v3_0_vid_in_axi4s_top : entity is 80;
  attribute RAM_ADDR_BITS : integer;
  attribute RAM_ADDR_BITS of v_vid_in_axi4s_0_v_vid_in_axi4s_v3_0_vid_in_axi4s_top : entity is 10;
  attribute HYSTERESIS_LEVEL : integer;
  attribute HYSTERESIS_LEVEL of v_vid_in_axi4s_0_v_vid_in_axi4s_v3_0_vid_in_axi4s_top : entity is 12;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of v_vid_in_axi4s_0_v_vid_in_axi4s_v3_0_vid_in_axi4s_top : entity is "v_vid_in_axi4s_v3_0_vid_in_axi4s_top";
end v_vid_in_axi4s_0_v_vid_in_axi4s_v3_0_vid_in_axi4s_top;

architecture STRUCTURE of v_vid_in_axi4s_0_v_vid_in_axi4s_v3_0_vid_in_axi4s_top is
  signal idf_data : STD_LOGIC_VECTOR ( 82 downto 0 );
  signal idf_de : STD_LOGIC;
  signal locked_1 : STD_LOGIC;
begin
in_coupler_i: entity work.v_vid_in_axi4s_0_v_vid_in_axi4s_v3_0_in_coupler
    port map (
      I1 => locked_1,
      O1 => empty,
      O2 => m_axis_video_tvalid,
      Q(82) => fid,
      Q(81) => m_axis_video_tuser,
      Q(80) => m_axis_video_tlast,
      Q(79 downto 0) => m_axis_video_tdata(79 downto 0),
      aclk => aclk,
      aclken => aclken,
      aresetn => aresetn,
      axis_enable => axis_enable,
      din(82 downto 0) => idf_data(82 downto 0),
      idf_de => idf_de,
      locked_1 => locked_1,
      m_axis_video_tready => m_axis_video_tready,
      rst => rst,
      vid_io_in_ce => vid_io_in_ce,
      vid_io_in_clk => vid_io_in_clk,
      wr_error => wr_error
    );
vid_in_formatter: entity work.v_vid_in_axi4s_0_v_vid_in_axi4s_v3_0_vid_in_formatter
    port map (
      O1 => vtd_active_video,
      din(82 downto 0) => idf_data(82 downto 0),
      idf_de => idf_de,
      vid_active_video => vid_active_video,
      vid_data(79 downto 0) => vid_data(79 downto 0),
      vid_field_id => vid_field_id,
      vid_hblank => vid_hblank,
      vid_hsync => vid_hsync,
      vid_io_in_ce => vid_io_in_ce,
      vid_io_in_clk => vid_io_in_clk,
      vid_vblank => vid_vblank,
      vid_vsync => vid_vsync,
      vtd_field_id => vtd_field_id,
      vtd_hblank => vtd_hblank,
      vtd_hsync => vtd_hsync,
      vtd_vblank => vtd_vblank,
      vtd_vsync => vtd_vsync
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity v_vid_in_axi4s_0 is
  port (
    vid_io_in_clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    vid_io_in_ce : in STD_LOGIC;
    vid_active_video : in STD_LOGIC;
    vid_vblank : in STD_LOGIC;
    vid_hblank : in STD_LOGIC;
    vid_vsync : in STD_LOGIC;
    vid_hsync : in STD_LOGIC;
    vid_field_id : in STD_LOGIC;
    vid_data : in STD_LOGIC_VECTOR ( 79 downto 0 );
    aclk : in STD_LOGIC;
    aclken : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    m_axis_video_tdata : out STD_LOGIC_VECTOR ( 79 downto 0 );
    m_axis_video_tvalid : out STD_LOGIC;
    m_axis_video_tready : in STD_LOGIC;
    m_axis_video_tuser : out STD_LOGIC;
    m_axis_video_tlast : out STD_LOGIC;
    fid : out STD_LOGIC;
    vtd_active_video : out STD_LOGIC;
    vtd_vblank : out STD_LOGIC;
    vtd_hblank : out STD_LOGIC;
    vtd_vsync : out STD_LOGIC;
    vtd_hsync : out STD_LOGIC;
    vtd_field_id : out STD_LOGIC;
    wr_error : out STD_LOGIC;
    empty : out STD_LOGIC;
    axis_enable : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of v_vid_in_axi4s_0 : entity is true;
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of v_vid_in_axi4s_0 : entity is "v_vid_in_axi4s_v3_0_vid_in_axi4s_top,Vivado 2014.4";
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of v_vid_in_axi4s_0 : entity is "v_vid_in_axi4s_0,v_vid_in_axi4s_v3_0_vid_in_axi4s_top,{}";
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of v_vid_in_axi4s_0 : entity is "v_vid_in_axi4s_0,v_vid_in_axi4s_v3_0_vid_in_axi4s_top,{x_ipProduct=Vivado 2014.4,x_ipVendor=xilinx.com,x_ipLibrary=ip,x_ipName=v_vid_in_axi4s,x_ipVersion=3.0,x_ipCoreRevision=6,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED,C_M_AXIS_VIDEO_DATA_WIDTH=10,C_M_AXIS_VIDEO_FORMAT=6,VID_IN_DATA_WIDTH=80,C_M_AXIS_VIDEO_TDATA_WIDTH=80,RAM_ADDR_BITS=10,HYSTERESIS_LEVEL=12}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of v_vid_in_axi4s_0 : entity is "yes";
end v_vid_in_axi4s_0;

architecture STRUCTURE of v_vid_in_axi4s_0 is
  attribute C_M_AXIS_VIDEO_DATA_WIDTH : integer;
  attribute C_M_AXIS_VIDEO_DATA_WIDTH of inst : label is 10;
  attribute C_M_AXIS_VIDEO_FORMAT : integer;
  attribute C_M_AXIS_VIDEO_FORMAT of inst : label is 6;
  attribute C_M_AXIS_VIDEO_TDATA_WIDTH : integer;
  attribute C_M_AXIS_VIDEO_TDATA_WIDTH of inst : label is 80;
  attribute DowngradeIPIdentifiedWarnings of inst : label is "yes";
  attribute HYSTERESIS_LEVEL : integer;
  attribute HYSTERESIS_LEVEL of inst : label is 12;
  attribute RAM_ADDR_BITS : integer;
  attribute RAM_ADDR_BITS of inst : label is 10;
  attribute VID_IN_DATA_WIDTH : integer;
  attribute VID_IN_DATA_WIDTH of inst : label is 80;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of inst : label is "xilinx.com:interface:axis:1.0 video_out TDATA";
begin
inst: entity work.v_vid_in_axi4s_0_v_vid_in_axi4s_v3_0_vid_in_axi4s_top
    port map (
      aclk => aclk,
      aclken => aclken,
      aresetn => aresetn,
      axis_enable => axis_enable,
      empty => empty,
      fid => fid,
      m_axis_video_tdata(79 downto 0) => m_axis_video_tdata(79 downto 0),
      m_axis_video_tlast => m_axis_video_tlast,
      m_axis_video_tready => m_axis_video_tready,
      m_axis_video_tuser => m_axis_video_tuser,
      m_axis_video_tvalid => m_axis_video_tvalid,
      rst => rst,
      vid_active_video => vid_active_video,
      vid_data(79 downto 0) => vid_data(79 downto 0),
      vid_field_id => vid_field_id,
      vid_hblank => vid_hblank,
      vid_hsync => vid_hsync,
      vid_io_in_ce => vid_io_in_ce,
      vid_io_in_clk => vid_io_in_clk,
      vid_vblank => vid_vblank,
      vid_vsync => vid_vsync,
      vtd_active_video => vtd_active_video,
      vtd_field_id => vtd_field_id,
      vtd_hblank => vtd_hblank,
      vtd_hsync => vtd_hsync,
      vtd_vblank => vtd_vblank,
      vtd_vsync => vtd_vsync,
      wr_error => wr_error
    );
end STRUCTURE;
