module  cameralink_to_axis(
input       rst_n,
input		refclkin_p,				// Reference clock for input delay control
input		refclkin_n,				// Reference clock for input delay control
input		clkin1_p,  clkin1_n,			// lvds channel 1 clock input
input	[3:0] datain1_p, datain1_n,		// lvds channel 1 data inputs

input		clkin2_p,  clkin2_n,			// lvds channel 1 clock input
input	[3:0] datain2_p, datain2_n,		// lvds channel 1 data inputs

input	clkin3_p,  clkin3_n,			// lvds channel 1 clock input
input	[3:0] datain3_p, datain3_n,		// lvds channel 1 data inputs

output refclk_out,
//AXI Stream signals
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 aclk_intf CLK" *)
input wire aclk,
(* X_INTERFACE_INFO = "xilinx.com:signal:clockenable:1.0 aclken_intf CE" *)
input wire aclken,
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 aresetn_intf RST" *)
input wire aresetn,
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 video_out TDATA" *)
output wire [79 : 0] m_axis_video_tdata,
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 video_out TVALID" *)
output wire m_axis_video_tvalid,
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 video_out TREADY" *)
input wire m_axis_video_tready,
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 video_out TUSER" *)
output wire m_axis_video_tuser,
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 video_out TLAST" *)
output wire m_axis_video_tlast,
output wire fid,

//AXI Video Sync Signals
(* X_INTERFACE_INFO = "xilinx.com:interface:video_timing:2.0 vtiming_out ACTIVE_VIDEO" *)
output wire vtd_active_video,
(* X_INTERFACE_INFO = "xilinx.com:interface:video_timing:2.0 vtiming_out VBLANK" *)
output wire vtd_vblank,
(* X_INTERFACE_INFO = "xilinx.com:interface:video_timing:2.0 vtiming_out HBLANK" *)
output wire vtd_hblank,
(* X_INTERFACE_INFO = "xilinx.com:interface:video_timing:2.0 vtiming_out VSYNC" *)
output wire vtd_vsync,
(* X_INTERFACE_INFO = "xilinx.com:interface:video_timing:2.0 vtiming_out HSYNC" *)
output wire vtd_hsync,
(* X_INTERFACE_INFO = "xilinx.com:interface:video_timing:2.0 vtiming_out FIELD" *)
output wire vtd_field_id,
output wire wr_error,
output wire empty,
input wire axis_enable
);

logic [83:0] deserialized_raw_out;

logic [79:0] vid_data;
logic vid_vblank;
logic vid_hblank;
logic data_locked;
logic vid_active_video;

logic [1:0] reset_counter; 
logic locked_reset;

top_lvds_4x3_7to1_sdr_rx top_lvds_4x3_7to1_sdr_rx_inst(
    .rst_n,
    .refclkin_p,				// Reference clock for input delay control
    .refclkin_n,				// Reference clock for input delay control
    .clkin1_p,  
    .clkin1_n,			// lvds channel 1 clock input
    .datain1_p, 
    .datain1_n,		// lvds channel 1 data inputs
    
    .clkin2_p,  
    .clkin2_n,			// lvds channel 1 clock input
    .datain2_p,
    .datain2_n,		// lvds channel 1 data inputs
    
    .clkin3_p,  
    .clkin3_n,			// lvds channel 1 clock input
    .datain3_p, 
    .datain3_n,		// lvds channel 1 data inputs
    
    .refclk_out,
    .clk_out,
    .data_out (deserialized_raw_out),
    .data_locked
);

always_ff @ (posedge clk_out, negedge rst_n) begin
    if(~rst_n)
        reset_counter <= 2'h0;
    else begin
        if(data_locked == 1'b1 && reset_counter <2'h2) begin
            locked_reset <= 1'b1;
            reset_counter <= reset_counter+ 1;
        end else begin
            locked_reset <= 1'b0;
        end
    end
end



// decoding data received
cameralink_decode cameralink_decode_inst (
	 .rxdall(deserialized_raw_out),
	 .vid_data,
	 .vid_active_video,
	 .vid_vblank,
	 .vid_hblank
 );
 
 v_vid_in_axi4s_0
 v_vid_in_axi4s_0_inst    (
   .vid_io_in_clk      (clk_out),
   .rst                (~rst_n | locked_reset),
   .vid_io_in_ce       (data_locked),
   .vid_active_video   (vid_active_video),
   .vid_vblank         (vid_vblank),
   .vid_hblank         (vid_hblank),
   .vid_vsync          (1'b0),
   .vid_hsync          (1'b0),
   .vid_field_id       (1'b0),
   .vid_data           (vid_data),
 
   .aclk,
   .aclken,
   .aresetn,
   .m_axis_video_tdata,
   .m_axis_video_tvalid,
   .m_axis_video_tready,
   .m_axis_video_tuser,
   .m_axis_video_tlast,
   .fid,
 
   .vtd_active_video,
   .vtd_vblank,
   .vtd_hblank,
   .vtd_vsync,
   .vtd_hsync,
   .vtd_field_id,
        
   .wr_error,
   .empty,
 
   .axis_enable
 );



 
 endmodule
 
