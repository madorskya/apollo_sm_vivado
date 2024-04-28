// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (lin64) Build 4029153 Fri Oct 13 20:13:54 MDT 2023
// Date        : Sat Apr 20 17:10:05 2024
// Host        : tesla.bu.edu running 64-bit AlmaLinux release 8.8 (Sapphire Caracal)
// Command     : write_verilog -force -mode synth_stub -rename_top zynq_bd_C2C1_AXILITE_FW_0 -prefix
//               zynq_bd_C2C1_AXILITE_FW_0_ zynq_bd_CM_MON_AXI_FW_0_stub.v
// Design      : zynq_bd_CM_MON_AXI_FW_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xczu7ev-fbvb900-2-i
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "axi_firewall_v1_2_4_top,Vivado 2023.2" *)
module zynq_bd_C2C1_AXILITE_FW_0(aclk, aresetn, s_axi_awaddr, s_axi_awprot, 
  s_axi_awvalid, s_axi_awready, s_axi_wdata, s_axi_wstrb, s_axi_wvalid, s_axi_wready, 
  s_axi_bresp, s_axi_bvalid, s_axi_bready, s_axi_araddr, s_axi_arprot, s_axi_arvalid, 
  s_axi_arready, s_axi_rdata, s_axi_rresp, s_axi_rvalid, s_axi_rready, m_axi_awaddr, 
  m_axi_awprot, m_axi_awvalid, m_axi_awready, m_axi_wdata, m_axi_wstrb, m_axi_wvalid, 
  m_axi_wready, m_axi_bresp, m_axi_bvalid, m_axi_bready, m_axi_araddr, m_axi_arprot, 
  m_axi_arvalid, m_axi_arready, m_axi_rdata, m_axi_rresp, m_axi_rvalid, m_axi_rready, 
  s_axi_ctl_awaddr, s_axi_ctl_awvalid, s_axi_ctl_awready, s_axi_ctl_wdata, s_axi_ctl_wstrb, 
  s_axi_ctl_wvalid, s_axi_ctl_wready, s_axi_ctl_bresp, s_axi_ctl_bvalid, s_axi_ctl_bready, 
  s_axi_ctl_araddr, s_axi_ctl_arvalid, s_axi_ctl_arready, s_axi_ctl_rdata, s_axi_ctl_rresp, 
  s_axi_ctl_rvalid, s_axi_ctl_rready, mi_w_error, mi_r_error, ip2intc_irpt)
/* synthesis syn_black_box black_box_pad_pin="aresetn,s_axi_awaddr[31:0],s_axi_awprot[2:0],s_axi_awvalid,s_axi_awready,s_axi_wdata[31:0],s_axi_wstrb[3:0],s_axi_wvalid,s_axi_wready,s_axi_bresp[1:0],s_axi_bvalid,s_axi_bready,s_axi_araddr[31:0],s_axi_arprot[2:0],s_axi_arvalid,s_axi_arready,s_axi_rdata[31:0],s_axi_rresp[1:0],s_axi_rvalid,s_axi_rready,m_axi_awaddr[31:0],m_axi_awprot[2:0],m_axi_awvalid,m_axi_awready,m_axi_wdata[31:0],m_axi_wstrb[3:0],m_axi_wvalid,m_axi_wready,m_axi_bresp[1:0],m_axi_bvalid,m_axi_bready,m_axi_araddr[31:0],m_axi_arprot[2:0],m_axi_arvalid,m_axi_arready,m_axi_rdata[31:0],m_axi_rresp[1:0],m_axi_rvalid,m_axi_rready,s_axi_ctl_awaddr[11:0],s_axi_ctl_awvalid,s_axi_ctl_awready,s_axi_ctl_wdata[31:0],s_axi_ctl_wstrb[3:0],s_axi_ctl_wvalid,s_axi_ctl_wready,s_axi_ctl_bresp[1:0],s_axi_ctl_bvalid,s_axi_ctl_bready,s_axi_ctl_araddr[11:0],s_axi_ctl_arvalid,s_axi_ctl_arready,s_axi_ctl_rdata[31:0],s_axi_ctl_rresp[1:0],s_axi_ctl_rvalid,s_axi_ctl_rready,mi_w_error,mi_r_error,ip2intc_irpt" */
/* synthesis syn_force_seq_prim="aclk" */;
  input aclk /* synthesis syn_isclock = 1 */;
  input aresetn;
  input [31:0]s_axi_awaddr;
  input [2:0]s_axi_awprot;
  input s_axi_awvalid;
  output s_axi_awready;
  input [31:0]s_axi_wdata;
  input [3:0]s_axi_wstrb;
  input s_axi_wvalid;
  output s_axi_wready;
  output [1:0]s_axi_bresp;
  output s_axi_bvalid;
  input s_axi_bready;
  input [31:0]s_axi_araddr;
  input [2:0]s_axi_arprot;
  input s_axi_arvalid;
  output s_axi_arready;
  output [31:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rvalid;
  input s_axi_rready;
  output [31:0]m_axi_awaddr;
  output [2:0]m_axi_awprot;
  output m_axi_awvalid;
  input m_axi_awready;
  output [31:0]m_axi_wdata;
  output [3:0]m_axi_wstrb;
  output m_axi_wvalid;
  input m_axi_wready;
  input [1:0]m_axi_bresp;
  input m_axi_bvalid;
  output m_axi_bready;
  output [31:0]m_axi_araddr;
  output [2:0]m_axi_arprot;
  output m_axi_arvalid;
  input m_axi_arready;
  input [31:0]m_axi_rdata;
  input [1:0]m_axi_rresp;
  input m_axi_rvalid;
  output m_axi_rready;
  input [11:0]s_axi_ctl_awaddr;
  input s_axi_ctl_awvalid;
  output s_axi_ctl_awready;
  input [31:0]s_axi_ctl_wdata;
  input [3:0]s_axi_ctl_wstrb;
  input s_axi_ctl_wvalid;
  output s_axi_ctl_wready;
  output [1:0]s_axi_ctl_bresp;
  output s_axi_ctl_bvalid;
  input s_axi_ctl_bready;
  input [11:0]s_axi_ctl_araddr;
  input s_axi_ctl_arvalid;
  output s_axi_ctl_arready;
  output [31:0]s_axi_ctl_rdata;
  output [1:0]s_axi_ctl_rresp;
  output s_axi_ctl_rvalid;
  input s_axi_ctl_rready;
  output mi_w_error;
  output mi_r_error;
  output ip2intc_irpt;
endmodule
