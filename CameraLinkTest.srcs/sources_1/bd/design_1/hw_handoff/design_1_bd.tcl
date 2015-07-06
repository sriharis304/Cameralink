
################################################################
# This is a generated script based on design: design_1
#
# Though there are limitations about the generated script,
# the main purpose of this utility is to make learning
# IP Integrator Tcl commands easier.
################################################################

################################################################
# Check if script is running in correct Vivado version.
################################################################
set scripts_vivado_version 2014.4
set current_vivado_version [version -short]

if { [string first $scripts_vivado_version $current_vivado_version] == -1 } {
   puts ""
   puts "ERROR: This script was generated using Vivado <$scripts_vivado_version> and is being run in <$current_vivado_version> of Vivado. Please run the script in Vivado <$scripts_vivado_version> then open the design in Vivado <$current_vivado_version>. Upgrade the design by running \"Tools => Report => Report IP Status...\", then run write_bd_tcl to create an updated script."

   return 1
}

################################################################
# START
################################################################

# To test this script, run the following commands from Vivado Tcl console:
# source design_1_script.tcl

# If you do not already have a project created,
# you can create a project using the following command:
#    create_project project_1 myproj -part xc7z030fbg676-1


# CHANGE DESIGN NAME HERE
set design_name design_1

# If you do not already have an existing IP Integrator design open,
# you can create a design using the following command:
#    create_bd_design $design_name

# CHECKING IF PROJECT EXISTS
if { [get_projects -quiet] eq "" } {
   puts "ERROR: Please open or create a project!"
   return 1
}


# Creating design if needed
set errMsg ""
set nRet 0

set cur_design [current_bd_design -quiet]
set list_cells [get_bd_cells -quiet]

if { ${design_name} eq "" } {
   # USE CASES:
   #    1) Design_name not set

   set errMsg "ERROR: Please set the variable <design_name> to a non-empty value."
   set nRet 1

} elseif { ${cur_design} ne "" && ${list_cells} eq "" } {
   # USE CASES:
   #    2): Current design opened AND is empty AND names same.
   #    3): Current design opened AND is empty AND names diff; design_name NOT in project.
   #    4): Current design opened AND is empty AND names diff; design_name exists in project.

   if { $cur_design ne $design_name } {
      puts "INFO: Changing value of <design_name> from <$design_name> to <$cur_design> since current design is empty."
      set design_name [get_property NAME $cur_design]
   }
   puts "INFO: Constructing design in IPI design <$cur_design>..."

} elseif { ${cur_design} ne "" && $list_cells ne "" && $cur_design eq $design_name } {
   # USE CASES:
   #    5) Current design opened AND has components AND same names.

   set errMsg "ERROR: Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 1
} elseif { [get_files -quiet ${design_name}.bd] ne "" } {
   # USE CASES: 
   #    6) Current opened design, has components, but diff names, design_name exists in project.
   #    7) No opened design, design_name exists in project.

   set errMsg "ERROR: Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 2

} else {
   # USE CASES:
   #    8) No opened design, design_name not in project.
   #    9) Current opened design, has components, but diff names, design_name not in project.

   puts "INFO: Currently there is no design <$design_name> in project, so creating one..."

   create_bd_design $design_name

   puts "INFO: Making design <$design_name> as current_bd_design."
   current_bd_design $design_name

}

puts "INFO: Currently the variable <design_name> is equal to \"$design_name\"."

if { $nRet != 0 } {
   puts $errMsg
   return $nRet
}

##################################################################
# DESIGN PROCs
##################################################################



# Procedure to create entire design; Provide argument to make
# procedure reusable. If parentCell is "", will use root.
proc create_root_design { parentCell } {

  if { $parentCell eq "" } {
     set parentCell [get_bd_cells /]
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     puts "ERROR: Unable to find parent cell <$parentCell>!"
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     puts "ERROR: Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj


  # Create interface ports
  set channel_x [ create_bd_intf_port -mode Slave -vlnv xilinx.com:interface:channel_link_rtl:1.0 channel_x ]
  set channel_y [ create_bd_intf_port -mode Slave -vlnv xilinx.com:interface:channel_link_rtl:1.0 channel_y ]
  set channel_z [ create_bd_intf_port -mode Slave -vlnv xilinx.com:interface:channel_link_rtl:1.0 channel_z ]
  set refclkin [ create_bd_intf_port -mode Slave -vlnv xilinx.com:interface:diff_clock_rtl:1.0 refclkin ]

  # Create ports
  set rst_n [ create_bd_port -dir I rst_n ]

  # Create instance: axis_dwidth_converter_0, and set properties
  set axis_dwidth_converter_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axis_dwidth_converter:1.1 axis_dwidth_converter_0 ]
  set_property -dict [ list CONFIG.HAS_MI_TKEEP {1} CONFIG.HAS_TLAST {1} CONFIG.M_TDATA_NUM_BYTES {8} CONFIG.S_TDATA_NUM_BYTES {10} CONFIG.TUSER_BITS_PER_BYTE {1}  ] $axis_dwidth_converter_0

  # Create instance: cameralink_to_axis_0, and set properties
  set cameralink_to_axis_0 [ create_bd_cell -type ip -vlnv Xilinx.com:user:cameralink_to_axis:1.0 cameralink_to_axis_0 ]

  # Create instance: clk_wiz_0, and set properties
  set clk_wiz_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:clk_wiz:5.1 clk_wiz_0 ]
  set_property -dict [ list CONFIG.CLKIN1_JITTER_PS {206.18} CONFIG.CLKOUT1_JITTER {274.786} CONFIG.CLKOUT1_PHASE_ERROR {271.448} CONFIG.CLKOUT1_REQUESTED_OUT_FREQ {100.000} CONFIG.CLKOUT2_JITTER {116.565} CONFIG.CLKOUT2_PHASE_ERROR {127.730} CONFIG.CLKOUT2_USED {false} CONFIG.MMCM_CLKFBOUT_MULT_F {33} CONFIG.MMCM_CLKOUT0_DIVIDE_F {8} CONFIG.MMCM_CLKOUT1_DIVIDE {1} CONFIG.MMCM_DIVCLK_DIVIDE {2} CONFIG.NUM_OUT_CLKS {1} CONFIG.PRIMITIVE {PLL} CONFIG.PRIM_IN_FREQ {48.5} CONFIG.RESET_TYPE {ACTIVE_LOW}  ] $clk_wiz_0

  # Create instance: hls_cropping_strm_0, and set properties
  set hls_cropping_strm_0 [ create_bd_cell -type ip -vlnv xilinx.com:hls:hls_cropping_strm:1.0 hls_cropping_strm_0 ]

  # Create instance: hls_synchr_strm_0, and set properties
  set hls_synchr_strm_0 [ create_bd_cell -type ip -vlnv xilinx.com:hls:hls_synchr_strm:1.0 hls_synchr_strm_0 ]

  # Create instance: hls_threshold_0, and set properties
  set hls_threshold_0 [ create_bd_cell -type ip -vlnv xilinx.com:hls:hls_threshold:1.0 hls_threshold_0 ]

  # Create instance: ila_0, and set properties
  set ila_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:ila:5.0 ila_0 ]
  set_property -dict [ list CONFIG.C_ENABLE_ILA_AXI_MON {false} CONFIG.C_MONITOR_TYPE {Native} CONFIG.C_NUM_OF_PROBES {15} CONFIG.C_PROBE0_WIDTH {1} CONFIG.C_PROBE14_WIDTH {16} CONFIG.C_PROBE4_WIDTH {8} CONFIG.C_PROBE7_WIDTH {64}  ] $ila_0

  # Create instance: util_reduced_logic_0, and set properties
  set util_reduced_logic_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_reduced_logic:2.0 util_reduced_logic_0 ]

  # Create instance: xlconcat_0, and set properties
  set xlconcat_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconcat:2.1 xlconcat_0 ]
  set_property -dict [ list CONFIG.NUM_PORTS {10}  ] $xlconcat_0

  # Create instance: xlconstant_0, and set properties
  set xlconstant_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 xlconstant_0 ]

  # Create interface connections
  connect_bd_intf_net -intf_net channel_x_1 [get_bd_intf_ports channel_x] [get_bd_intf_pins cameralink_to_axis_0/channel_x]
  connect_bd_intf_net -intf_net channel_y_1 [get_bd_intf_ports channel_y] [get_bd_intf_pins cameralink_to_axis_0/channel_y]
  connect_bd_intf_net -intf_net channel_z_1 [get_bd_intf_ports channel_z] [get_bd_intf_pins cameralink_to_axis_0/channel_z]
  connect_bd_intf_net -intf_net refclkin_1 [get_bd_intf_ports refclkin] [get_bd_intf_pins cameralink_to_axis_0/refclk_in]

  # Create port connections
  connect_bd_net -net axis_dwidth_converter_0_m_axis_tdata [get_bd_pins axis_dwidth_converter_0/m_axis_tdata] [get_bd_pins hls_synchr_strm_0/src_V_V_TDATA] [get_bd_pins ila_0/probe7]
  connect_bd_net -net axis_dwidth_converter_0_m_axis_tlast [get_bd_pins axis_dwidth_converter_0/m_axis_tlast] [get_bd_pins ila_0/probe10]
  connect_bd_net -net axis_dwidth_converter_0_m_axis_tuser [get_bd_pins axis_dwidth_converter_0/m_axis_tuser] [get_bd_pins util_reduced_logic_0/Op1]
  connect_bd_net -net axis_dwidth_converter_0_m_axis_tvalid [get_bd_pins axis_dwidth_converter_0/m_axis_tvalid] [get_bd_pins hls_synchr_strm_0/src_V_V_TVALID] [get_bd_pins ila_0/probe9]
  connect_bd_net -net axis_dwidth_converter_0_s_axis_tready [get_bd_pins axis_dwidth_converter_0/s_axis_tready] [get_bd_pins cameralink_to_axis_0/m_axis_video_tready]
  connect_bd_net -net cameralink_to_axis_0_m_axis_video_tdata [get_bd_pins axis_dwidth_converter_0/s_axis_tdata] [get_bd_pins cameralink_to_axis_0/m_axis_video_tdata]
  connect_bd_net -net cameralink_to_axis_0_m_axis_video_tlast [get_bd_pins axis_dwidth_converter_0/s_axis_tlast] [get_bd_pins cameralink_to_axis_0/m_axis_video_tlast]
  connect_bd_net -net cameralink_to_axis_0_m_axis_video_tuser [get_bd_pins cameralink_to_axis_0/m_axis_video_tuser] [get_bd_pins xlconcat_0/In0] [get_bd_pins xlconcat_0/In1] [get_bd_pins xlconcat_0/In2] [get_bd_pins xlconcat_0/In3] [get_bd_pins xlconcat_0/In4] [get_bd_pins xlconcat_0/In5] [get_bd_pins xlconcat_0/In6] [get_bd_pins xlconcat_0/In7] [get_bd_pins xlconcat_0/In8] [get_bd_pins xlconcat_0/In9]
  connect_bd_net -net cameralink_to_axis_0_m_axis_video_tvalid [get_bd_pins axis_dwidth_converter_0/s_axis_tvalid] [get_bd_pins cameralink_to_axis_0/m_axis_video_tvalid]
  connect_bd_net -net cameralink_to_axis_0_refclk_out [get_bd_pins cameralink_to_axis_0/refclk_out] [get_bd_pins clk_wiz_0/clk_in1]
  connect_bd_net -net clk_wiz_0_clk_out1 [get_bd_pins axis_dwidth_converter_0/aclk] [get_bd_pins cameralink_to_axis_0/aclk] [get_bd_pins clk_wiz_0/clk_out1] [get_bd_pins hls_cropping_strm_0/ap_clk] [get_bd_pins hls_synchr_strm_0/ap_clk] [get_bd_pins hls_threshold_0/ap_clk] [get_bd_pins ila_0/clk]
  connect_bd_net -net clk_wiz_0_locked [get_bd_pins cameralink_to_axis_0/aclken] [get_bd_pins cameralink_to_axis_0/axis_enable] [get_bd_pins clk_wiz_0/locked] [get_bd_pins ila_0/probe11]
  connect_bd_net -net hls_cropping_strm_0_dst_V_V_TDATA [get_bd_pins hls_cropping_strm_0/dst_V_V_TDATA] [get_bd_pins ila_0/probe14]
  connect_bd_net -net hls_cropping_strm_0_dst_V_V_TVALID [get_bd_pins hls_cropping_strm_0/dst_V_V_TVALID] [get_bd_pins ila_0/probe12]
  connect_bd_net -net hls_cropping_strm_0_sof_o [get_bd_pins hls_cropping_strm_0/sof_o] [get_bd_pins ila_0/probe13]
  connect_bd_net -net hls_cropping_strm_0_src_V_V_TREADY [get_bd_pins hls_cropping_strm_0/src_V_V_TREADY] [get_bd_pins hls_threshold_0/dst_V_V_TREADY]
  connect_bd_net -net hls_synchr_strm_0_dst_V_V_TDATA [get_bd_pins hls_synchr_strm_0/dst_V_V_TDATA] [get_bd_pins hls_threshold_0/src_V_V_TDATA]
  connect_bd_net -net hls_synchr_strm_0_dst_V_V_TVALID [get_bd_pins hls_synchr_strm_0/dst_V_V_TVALID] [get_bd_pins hls_threshold_0/src_V_V_TVALID]
  connect_bd_net -net hls_synchr_strm_0_src_V_V_TREADY [get_bd_pins axis_dwidth_converter_0/m_axis_tready] [get_bd_pins hls_synchr_strm_0/src_V_V_TREADY]
  connect_bd_net -net hls_synchr_strm_0_start_sigo [get_bd_pins hls_synchr_strm_0/start_sigo] [get_bd_pins hls_threshold_0/sof_i] [get_bd_pins ila_0/probe0]
  connect_bd_net -net hls_synchr_strm_0_start_sigo_ap_vld [get_bd_pins hls_synchr_strm_0/start_sigo_ap_vld] [get_bd_pins ila_0/probe1]
  connect_bd_net -net hls_threshold_0_dst_V_V_TDATA [get_bd_pins hls_cropping_strm_0/src_V_V_TDATA] [get_bd_pins hls_threshold_0/dst_V_V_TDATA] [get_bd_pins ila_0/probe4]
  connect_bd_net -net hls_threshold_0_dst_V_V_TVALID [get_bd_pins hls_cropping_strm_0/src_V_V_TVALID] [get_bd_pins hls_threshold_0/dst_V_V_TVALID] [get_bd_pins ila_0/probe6]
  connect_bd_net -net hls_threshold_0_sof_o [get_bd_pins hls_cropping_strm_0/sof_i] [get_bd_pins hls_threshold_0/sof_o] [get_bd_pins ila_0/probe5]
  connect_bd_net -net hls_threshold_0_src_V_V_TREADY [get_bd_pins hls_synchr_strm_0/dst_V_V_TREADY] [get_bd_pins hls_threshold_0/src_V_V_TREADY]
  connect_bd_net -net rst_n_1 [get_bd_ports rst_n] [get_bd_pins axis_dwidth_converter_0/aresetn] [get_bd_pins cameralink_to_axis_0/aresetn] [get_bd_pins cameralink_to_axis_0/rst_n] [get_bd_pins clk_wiz_0/resetn] [get_bd_pins hls_cropping_strm_0/ap_rst_n] [get_bd_pins hls_synchr_strm_0/ap_rst_n] [get_bd_pins hls_threshold_0/ap_rst_n]
  connect_bd_net -net util_reduced_logic_0_Res [get_bd_pins hls_synchr_strm_0/start_sig] [get_bd_pins ila_0/probe8] [get_bd_pins util_reduced_logic_0/Res]
  connect_bd_net -net xlconcat_0_dout [get_bd_pins axis_dwidth_converter_0/s_axis_tuser] [get_bd_pins ila_0/probe2] [get_bd_pins ila_0/probe3] [get_bd_pins xlconcat_0/dout]
  connect_bd_net -net xlconstant_0_dout [get_bd_pins hls_cropping_strm_0/dst_V_V_TREADY] [get_bd_pins xlconstant_0/dout]

  # Create address segments
  

  # Restore current instance
  current_bd_instance $oldCurInst

  save_bd_design
}
# End of create_root_design()


##################################################################
# MAIN FLOW
##################################################################

create_root_design ""


