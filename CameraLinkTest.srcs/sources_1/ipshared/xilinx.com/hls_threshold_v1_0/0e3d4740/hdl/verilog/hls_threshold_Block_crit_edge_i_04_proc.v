// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2014.4
// Copyright (C) 2014 Xilinx Inc. All rights reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module hls_threshold_Block_crit_edge_i_04_proc (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_continue,
        ap_idle,
        ap_ready,
        src_V_V_TDATA,
        src_V_V_TVALID,
        src_V_V_TREADY,
        dst_V_V_TDATA,
        dst_V_V_TVALID,
        dst_V_V_TREADY,
        sof_i,
        sof_o,
        sof_o_ap_vld
);

parameter    ap_const_logic_1 = 1'b1;
parameter    ap_const_logic_0 = 1'b0;
parameter    ap_ST_st1_fsm_0 = 1'b1;
parameter    ap_const_lv32_0 = 32'b00000000000000000000000000000000;
parameter    ap_const_lv1_1 = 1'b1;
parameter    ap_const_lv1_0 = 1'b0;
parameter    ap_const_lv8_64 = 8'b1100100;
parameter    ap_const_lv32_8 = 32'b1000;
parameter    ap_const_lv32_F = 32'b1111;
parameter    ap_const_lv32_10 = 32'b10000;
parameter    ap_const_lv32_17 = 32'b10111;
parameter    ap_const_lv32_18 = 32'b11000;
parameter    ap_const_lv32_1F = 32'b11111;
parameter    ap_const_lv32_20 = 32'b100000;
parameter    ap_const_lv32_27 = 32'b100111;
parameter    ap_const_lv32_28 = 32'b101000;
parameter    ap_const_lv32_2F = 32'b101111;
parameter    ap_const_lv32_30 = 32'b110000;
parameter    ap_const_lv32_37 = 32'b110111;
parameter    ap_const_lv32_38 = 32'b111000;
parameter    ap_const_lv32_3F = 32'b111111;
parameter    ap_true = 1'b1;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
input  [63:0] src_V_V_TDATA;
input   src_V_V_TVALID;
output   src_V_V_TREADY;
output  [7:0] dst_V_V_TDATA;
output   dst_V_V_TVALID;
input   dst_V_V_TREADY;
input  [0:0] sof_i;
output  [0:0] sof_o;
output   sof_o_ap_vld;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg src_V_V_TREADY;
reg dst_V_V_TVALID;
reg[0:0] sof_o;
reg sof_o_ap_vld;
reg    ap_done_reg = 1'b0;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm = 1'b1;
reg    ap_sig_cseq_ST_st1_fsm_0;
reg    ap_sig_bdd_20;
reg    ap_sig_bdd_42;
reg    ap_sig_ioackin_dst_V_V_TREADY;
reg    ap_reg_ioackin_dst_V_V_TREADY = 1'b0;
reg   [0:0] sof_o_preg = 1'b0;
wire   [7:0] tmp_fu_86_p1;
wire   [7:0] p_Result_1_fu_96_p4;
wire   [7:0] p_Result_s_fu_112_p4;
wire   [7:0] p_Result_3_fu_128_p4;
wire   [7:0] p_Result_4_fu_144_p4;
wire   [7:0] p_Result_5_fu_160_p4;
wire   [7:0] p_Result_6_fu_176_p4;
wire   [7:0] p_Result_7_fu_192_p4;
wire   [0:0] tmp_3_fu_90_p2;
wire   [0:0] tmp_3_1_fu_106_p2;
wire   [0:0] tmp_3_2_fu_122_p2;
wire   [0:0] tmp_3_3_fu_138_p2;
wire   [0:0] tmp_3_4_fu_154_p2;
wire   [0:0] tmp_3_5_fu_170_p2;
wire   [0:0] tmp_3_6_fu_186_p2;
wire   [0:0] tmp_3_7_fu_202_p2;
reg   [0:0] ap_NS_fsm;
reg    ap_sig_bdd_170;




/// the current state (ap_CS_fsm) of the state machine. ///
always @ (posedge ap_clk)
begin : ap_ret_ap_CS_fsm
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_st1_fsm_0;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

/// ap_done_reg assign process. ///
always @ (posedge ap_clk)
begin : ap_ret_ap_done_reg
    if (ap_rst == 1'b1) begin
        ap_done_reg <= ap_const_logic_0;
    end else begin
        if ((ap_const_logic_1 == ap_continue)) begin
            ap_done_reg <= ap_const_logic_0;
        end else if (((ap_const_logic_1 == ap_sig_cseq_ST_st1_fsm_0) & ~(ap_sig_bdd_42 | (ap_const_logic_0 == ap_sig_ioackin_dst_V_V_TREADY)))) begin
            ap_done_reg <= ap_const_logic_1;
        end
    end
end

/// ap_reg_ioackin_dst_V_V_TREADY assign process. ///
always @ (posedge ap_clk)
begin : ap_ret_ap_reg_ioackin_dst_V_V_TREADY
    if (ap_rst == 1'b1) begin
        ap_reg_ioackin_dst_V_V_TREADY <= ap_const_logic_0;
    end else begin
        if ((ap_const_logic_1 == ap_sig_cseq_ST_st1_fsm_0)) begin
            if (~(ap_sig_bdd_42 | (ap_const_logic_0 == ap_sig_ioackin_dst_V_V_TREADY))) begin
                ap_reg_ioackin_dst_V_V_TREADY <= ap_const_logic_0;
            end else if (ap_sig_bdd_170) begin
                ap_reg_ioackin_dst_V_V_TREADY <= ap_const_logic_1;
            end
        end
    end
end

/// sof_o_preg assign process. ///
always @ (posedge ap_clk)
begin : ap_ret_sof_o_preg
    if (ap_rst == 1'b1) begin
        sof_o_preg <= ap_const_lv1_0;
    end else begin
        if (((ap_const_logic_1 == ap_sig_cseq_ST_st1_fsm_0) & ~ap_sig_bdd_42)) begin
            sof_o_preg <= sof_i;
        end
    end
end

/// ap_done assign process. ///
always @ (ap_done_reg or ap_sig_cseq_ST_st1_fsm_0 or ap_sig_bdd_42 or ap_sig_ioackin_dst_V_V_TREADY)
begin
    if (((ap_const_logic_1 == ap_done_reg) | ((ap_const_logic_1 == ap_sig_cseq_ST_st1_fsm_0) & ~(ap_sig_bdd_42 | (ap_const_logic_0 == ap_sig_ioackin_dst_V_V_TREADY))))) begin
        ap_done = ap_const_logic_1;
    end else begin
        ap_done = ap_const_logic_0;
    end
end

/// ap_idle assign process. ///
always @ (ap_start or ap_sig_cseq_ST_st1_fsm_0)
begin
    if ((~(ap_const_logic_1 == ap_start) & (ap_const_logic_1 == ap_sig_cseq_ST_st1_fsm_0))) begin
        ap_idle = ap_const_logic_1;
    end else begin
        ap_idle = ap_const_logic_0;
    end
end

/// ap_ready assign process. ///
always @ (ap_sig_cseq_ST_st1_fsm_0 or ap_sig_bdd_42 or ap_sig_ioackin_dst_V_V_TREADY)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_st1_fsm_0) & ~(ap_sig_bdd_42 | (ap_const_logic_0 == ap_sig_ioackin_dst_V_V_TREADY)))) begin
        ap_ready = ap_const_logic_1;
    end else begin
        ap_ready = ap_const_logic_0;
    end
end

/// ap_sig_cseq_ST_st1_fsm_0 assign process. ///
always @ (ap_sig_bdd_20)
begin
    if (ap_sig_bdd_20) begin
        ap_sig_cseq_ST_st1_fsm_0 = ap_const_logic_1;
    end else begin
        ap_sig_cseq_ST_st1_fsm_0 = ap_const_logic_0;
    end
end

/// ap_sig_ioackin_dst_V_V_TREADY assign process. ///
always @ (dst_V_V_TREADY or ap_reg_ioackin_dst_V_V_TREADY)
begin
    if ((ap_const_logic_0 == ap_reg_ioackin_dst_V_V_TREADY)) begin
        ap_sig_ioackin_dst_V_V_TREADY = dst_V_V_TREADY;
    end else begin
        ap_sig_ioackin_dst_V_V_TREADY = ap_const_logic_1;
    end
end

/// dst_V_V_TVALID assign process. ///
always @ (ap_sig_cseq_ST_st1_fsm_0 or ap_sig_bdd_42 or ap_reg_ioackin_dst_V_V_TREADY)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_st1_fsm_0) & ~ap_sig_bdd_42 & (ap_const_logic_0 == ap_reg_ioackin_dst_V_V_TREADY))) begin
        dst_V_V_TVALID = ap_const_logic_1;
    end else begin
        dst_V_V_TVALID = ap_const_logic_0;
    end
end

/// sof_o assign process. ///
always @ (ap_sig_cseq_ST_st1_fsm_0 or sof_i or ap_sig_bdd_42 or sof_o_preg)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_st1_fsm_0) & ~ap_sig_bdd_42)) begin
        sof_o = sof_i;
    end else begin
        sof_o = sof_o_preg;
    end
end

/// sof_o_ap_vld assign process. ///
always @ (ap_sig_cseq_ST_st1_fsm_0 or ap_sig_bdd_42)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_st1_fsm_0) & ~ap_sig_bdd_42)) begin
        sof_o_ap_vld = ap_const_logic_1;
    end else begin
        sof_o_ap_vld = ap_const_logic_0;
    end
end

/// src_V_V_TREADY assign process. ///
always @ (ap_sig_cseq_ST_st1_fsm_0 or ap_sig_bdd_42 or ap_sig_ioackin_dst_V_V_TREADY)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_st1_fsm_0) & ~(ap_sig_bdd_42 | (ap_const_logic_0 == ap_sig_ioackin_dst_V_V_TREADY)))) begin
        src_V_V_TREADY = ap_const_logic_1;
    end else begin
        src_V_V_TREADY = ap_const_logic_0;
    end
end
/// the next state (ap_NS_fsm) of the state machine. ///
always @ (ap_CS_fsm or ap_sig_bdd_42 or ap_sig_ioackin_dst_V_V_TREADY)
begin
    case (ap_CS_fsm)
        ap_ST_st1_fsm_0 : 
        begin
            ap_NS_fsm = ap_ST_st1_fsm_0;
        end
        default : 
        begin
            ap_NS_fsm = 'bx;
        end
    endcase
end


/// ap_sig_bdd_170 assign process. ///
always @ (dst_V_V_TREADY or ap_sig_bdd_42)
begin
    ap_sig_bdd_170 = (~ap_sig_bdd_42 & (ap_const_logic_1 == dst_V_V_TREADY));
end

/// ap_sig_bdd_20 assign process. ///
always @ (ap_CS_fsm)
begin
    ap_sig_bdd_20 = (ap_CS_fsm[ap_const_lv32_0] == ap_const_lv1_1);
end

/// ap_sig_bdd_42 assign process. ///
always @ (ap_start or ap_done_reg or src_V_V_TVALID)
begin
    ap_sig_bdd_42 = ((src_V_V_TVALID == ap_const_logic_0) | (ap_start == ap_const_logic_0) | (ap_done_reg == ap_const_logic_1));
end
assign dst_V_V_TDATA = {{{{{{{{{{{{{{tmp_3_fu_90_p2}, {tmp_3_1_fu_106_p2}}}, {tmp_3_2_fu_122_p2}}}, {tmp_3_3_fu_138_p2}}}, {tmp_3_4_fu_154_p2}}}, {tmp_3_5_fu_170_p2}}}, {tmp_3_6_fu_186_p2}}}, {tmp_3_7_fu_202_p2}};
assign p_Result_1_fu_96_p4 = {{src_V_V_TDATA[ap_const_lv32_F : ap_const_lv32_8]}};
assign p_Result_3_fu_128_p4 = {{src_V_V_TDATA[ap_const_lv32_1F : ap_const_lv32_18]}};
assign p_Result_4_fu_144_p4 = {{src_V_V_TDATA[ap_const_lv32_27 : ap_const_lv32_20]}};
assign p_Result_5_fu_160_p4 = {{src_V_V_TDATA[ap_const_lv32_2F : ap_const_lv32_28]}};
assign p_Result_6_fu_176_p4 = {{src_V_V_TDATA[ap_const_lv32_37 : ap_const_lv32_30]}};
assign p_Result_7_fu_192_p4 = {{src_V_V_TDATA[ap_const_lv32_3F : ap_const_lv32_38]}};
assign p_Result_s_fu_112_p4 = {{src_V_V_TDATA[ap_const_lv32_17 : ap_const_lv32_10]}};
assign tmp_3_1_fu_106_p2 = (p_Result_1_fu_96_p4 > ap_const_lv8_64? 1'b1: 1'b0);
assign tmp_3_2_fu_122_p2 = (p_Result_s_fu_112_p4 > ap_const_lv8_64? 1'b1: 1'b0);
assign tmp_3_3_fu_138_p2 = (p_Result_3_fu_128_p4 > ap_const_lv8_64? 1'b1: 1'b0);
assign tmp_3_4_fu_154_p2 = (p_Result_4_fu_144_p4 > ap_const_lv8_64? 1'b1: 1'b0);
assign tmp_3_5_fu_170_p2 = (p_Result_5_fu_160_p4 > ap_const_lv8_64? 1'b1: 1'b0);
assign tmp_3_6_fu_186_p2 = (p_Result_6_fu_176_p4 > ap_const_lv8_64? 1'b1: 1'b0);
assign tmp_3_7_fu_202_p2 = (p_Result_7_fu_192_p4 > ap_const_lv8_64? 1'b1: 1'b0);
assign tmp_3_fu_90_p2 = (tmp_fu_86_p1 > ap_const_lv8_64? 1'b1: 1'b0);
assign tmp_fu_86_p1 = src_V_V_TDATA[7:0];


endmodule //hls_threshold_Block_crit_edge_i_04_proc

