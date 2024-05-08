// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (lin64) Build 4029153 Fri Oct 13 20:13:54 MDT 2023
// Date        : Wed May  8 09:38:52 2024
// Host        : tesla.bu.edu running 64-bit AlmaLinux release 8.8 (Sapphire Caracal)
// Command     : write_verilog -force -mode funcsim
//               /home/madorsky/github/apollo/apollo_sm_vivado/rev2a_xczu7ev/zynq_bd/ip/zynq_bd_IRQ0_INTR_CTRL_0/zynq_bd_IRQ0_INTR_CTRL_0_sim_netlist.v
// Design      : zynq_bd_IRQ0_INTR_CTRL_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xczu7ev-fbvb900-2-i
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "zynq_bd_IRQ0_INTR_CTRL_0,axi_intc,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "axi_intc,Vivado 2023.2" *) 
(* NotValidForBitStream *)
module zynq_bd_IRQ0_INTR_CTRL_0
   (s_axi_aclk,
    s_axi_aresetn,
    s_axi_awaddr,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_araddr,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rvalid,
    s_axi_rready,
    intr,
    irq);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 s_axi_aclk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME s_axi_aclk, ASSOCIATED_BUSIF s_axi, ASSOCIATED_RESET s_axi_aresetn, FREQ_HZ 49999500, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN zynq_bd_ZynqMPSoC_0_pl_clk1, INSERT_VIP 0" *) input s_axi_aclk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 s_resetn RST" *) (* x_interface_parameter = "XIL_INTERFACENAME s_resetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input s_axi_aresetn;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi AWADDR" *) (* x_interface_parameter = "XIL_INTERFACENAME s_axi, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 49999500, ID_WIDTH 0, ADDR_WIDTH 9, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN zynq_bd_ZynqMPSoC_0_pl_clk1, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input [8:0]s_axi_awaddr;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi AWVALID" *) input s_axi_awvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi AWREADY" *) output s_axi_awready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi WDATA" *) input [31:0]s_axi_wdata;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi WSTRB" *) input [3:0]s_axi_wstrb;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi WVALID" *) input s_axi_wvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi WREADY" *) output s_axi_wready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi BRESP" *) output [1:0]s_axi_bresp;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi BVALID" *) output s_axi_bvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi BREADY" *) input s_axi_bready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi ARADDR" *) input [8:0]s_axi_araddr;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi ARVALID" *) input s_axi_arvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi ARREADY" *) output s_axi_arready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi RDATA" *) output [31:0]s_axi_rdata;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi RRESP" *) output [1:0]s_axi_rresp;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi RVALID" *) output s_axi_rvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi RREADY" *) input s_axi_rready;
  (* x_interface_info = "xilinx.com:signal:interrupt:1.0 interrupt_input INTERRUPT" *) (* x_interface_parameter = "XIL_INTERFACENAME interrupt_input, SENSITIVITY LEVEL_HIGH:LEVEL_HIGH:EDGE_RISING:EDGE_RISING:EDGE_RISING:EDGE_RISING:EDGE_RISING:LEVEL_HIGH:NULL:NULL:NULL:NULL, PORTWIDTH 24" *) input [23:0]intr;
  (* x_interface_info = "xilinx.com:signal:interrupt:1.0 interrupt_irq INTERRUPT" *) (* x_interface_parameter = "XIL_INTERFACENAME interrupt_irq, SENSITIVITY LEVEL_HIGH, PORTWIDTH 1" *) output irq;

  wire \<const0> ;
  wire [23:0]intr;
  wire irq;
  wire s_axi_aclk;
  wire [8:0]s_axi_araddr;
  wire s_axi_aresetn;
  wire s_axi_arready;
  wire s_axi_arvalid;
  wire [8:0]s_axi_awaddr;
  wire s_axi_awready;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire [1:1]\^s_axi_bresp ;
  wire s_axi_bvalid;
  wire [31:0]s_axi_rdata;
  wire s_axi_rready;
  wire [1:1]\^s_axi_rresp ;
  wire s_axi_rvalid;
  wire [31:0]s_axi_wdata;
  wire s_axi_wready;
  wire [3:0]s_axi_wstrb;
  wire s_axi_wvalid;
  wire [31:0]NLW_U0_interrupt_address_UNCONNECTED;
  wire [1:0]NLW_U0_processor_ack_out_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  assign s_axi_bresp[1] = \^s_axi_bresp [1];
  assign s_axi_bresp[0] = \<const0> ;
  assign s_axi_rresp[1] = \^s_axi_rresp [1];
  assign s_axi_rresp[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* C_ADDR_WIDTH = "32" *) 
  (* C_ASYNC_INTR = "32'b11111111000000001111111111111111" *) 
  (* C_CASCADE_MASTER = "0" *) 
  (* C_DISABLE_SYNCHRONIZERS = "0" *) 
  (* C_ENABLE_ASYNC = "0" *) 
  (* C_EN_CASCADE_MODE = "0" *) 
  (* C_FAMILY = "zynquplus" *) 
  (* C_HAS_CIE = "1" *) 
  (* C_HAS_FAST = "0" *) 
  (* C_HAS_ILR = "0" *) 
  (* C_HAS_IPR = "1" *) 
  (* C_HAS_IVR = "1" *) 
  (* C_HAS_SIE = "1" *) 
  (* C_INSTANCE = "zynq_bd_IRQ0_INTR_CTRL_0" *) 
  (* C_IRQ_ACTIVE = "1'b1" *) 
  (* C_IRQ_IS_LEVEL = "1" *) 
  (* C_IVAR_RESET_VALUE = "64'b0000000000000000000000000000000000000000000000000000000000010000" *) 
  (* C_KIND_OF_EDGE = "32'b11111111111111111111111111111111" *) 
  (* C_KIND_OF_INTR = "32'b11111111111111111111111111111111" *) 
  (* C_KIND_OF_LVL = "32'b11111111111111111111111111111111" *) 
  (* C_MB_CLK_NOT_CONNECTED = "1" *) 
  (* C_NUM_INTR_INPUTS = "24" *) 
  (* C_NUM_SW_INTR = "0" *) 
  (* C_NUM_SYNC_FF = "2" *) 
  (* C_S_AXI_ADDR_WIDTH = "9" *) 
  (* C_S_AXI_DATA_WIDTH = "32" *) 
  (* hdl = "VHDL" *) 
  (* imp_netlist = "TRUE" *) 
  (* ip_group = "LOGICORE" *) 
  (* iptype = "PERIPHERAL" *) 
  (* run_ngcbuild = "TRUE" *) 
  (* style = "HDL" *) 
  zynq_bd_IRQ0_INTR_CTRL_0_axi_intc U0
       (.interrupt_address(NLW_U0_interrupt_address_UNCONNECTED[31:0]),
        .interrupt_address_in({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .intr(intr),
        .irq(irq),
        .irq_in(1'b0),
        .processor_ack({1'b0,1'b0}),
        .processor_ack_out(NLW_U0_processor_ack_out_UNCONNECTED[1:0]),
        .processor_clk(1'b0),
        .processor_rst(1'b0),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_araddr({s_axi_araddr[8:2],1'b0,1'b0}),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_arready(s_axi_arready),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr({s_axi_awaddr[8:2],1'b0,1'b0}),
        .s_axi_awready(s_axi_awready),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bready(s_axi_bready),
        .s_axi_bresp({\^s_axi_bresp ,NLW_U0_s_axi_bresp_UNCONNECTED[0]}),
        .s_axi_bvalid(s_axi_bvalid),
        .s_axi_rdata(s_axi_rdata),
        .s_axi_rready(s_axi_rready),
        .s_axi_rresp({\^s_axi_rresp ,NLW_U0_s_axi_rresp_UNCONNECTED[0]}),
        .s_axi_rvalid(s_axi_rvalid),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s_axi_wdata[23:0]}),
        .s_axi_wready(s_axi_wready),
        .s_axi_wstrb(s_axi_wstrb),
        .s_axi_wvalid(s_axi_wvalid));
endmodule

(* ORIG_REF_NAME = "address_decoder" *) 
module zynq_bd_IRQ0_INTR_CTRL_0_address_decoder
   (p_18_in,
    Bus_RNW_reg_reg_0,
    Bus_RNW_reg_reg_1,
    Bus_RNW_reg_reg_2,
    Bus_RNW_reg_reg_3,
    Bus_RNW_reg_reg_4,
    Bus_RNW_reg_reg_5,
    Bus_RNW_reg_reg_6,
    Bus_RNW_reg_reg_7,
    Bus_RNW_reg_reg_8,
    Bus_RNW_reg_reg_9,
    Bus_RNW_reg_reg_10,
    Bus_RNW_reg_reg_11,
    Bus_RNW_reg_reg_12,
    Bus_RNW_reg_reg_13,
    Bus_RNW_reg_reg_14,
    Bus_RNW_reg_reg_15,
    Bus_RNW_reg_reg_16,
    Bus_RNW_reg_reg_17,
    Bus_RNW_reg_reg_18,
    Bus_RNW_reg_reg_19,
    Bus_RNW_reg_reg_20,
    Bus_RNW_reg_reg_21,
    Bus_RNW_reg_reg_22,
    Bus_RNW_reg_reg_23,
    Bus_RNW_reg_reg_24,
    iar,
    iar1_out,
    iar3_out,
    iar5_out,
    iar7_out,
    iar9_out,
    iar11_out,
    iar13_out,
    iar15_out,
    iar17_out,
    iar19_out,
    iar21_out,
    iar23_out,
    iar25_out,
    iar27_out,
    iar29_out,
    iar31_out,
    iar33_out,
    iar35_out,
    iar37_out,
    iar39_out,
    iar41_out,
    iar43_out,
    iar44_out,
    bus2ip_wrce,
    ip2bus_rdack_reg,
    ip2bus_wrack_reg,
    ip2bus_rdack_prev2,
    Or128_vec2stdlogic19_out,
    ip2bus_wrack_prev2,
    Or128_vec2stdlogic,
    D,
    s_axi_wdata_1_sp_1,
    s_axi_wdata_0_sp_1,
    Bus_RNW_reg_reg_25,
    Bus_RNW_reg_reg_26,
    Bus_RNW_reg_reg_27,
    Bus_RNW_reg_reg_28,
    Bus_RNW_reg_reg_29,
    Bus_RNW_reg_reg_30,
    Bus_RNW_reg_reg_31,
    Bus_RNW_reg_reg_32,
    Bus_RNW_reg_reg_33,
    Bus_RNW_reg_reg_34,
    Bus_RNW_reg_reg_35,
    Bus_RNW_reg_reg_36,
    Bus_RNW_reg_reg_37,
    Bus_RNW_reg_reg_38,
    Bus_RNW_reg_reg_39,
    Bus_RNW_reg_reg_40,
    Bus_RNW_reg_reg_41,
    Bus_RNW_reg_reg_42,
    Bus_RNW_reg_reg_43,
    Bus_RNW_reg_reg_44,
    Bus_RNW_reg_reg_45,
    Bus_RNW_reg_reg_46,
    Bus_RNW_reg_reg_47,
    Bus_RNW_reg_reg_48,
    Q,
    s_axi_aclk,
    s_axi_wdata,
    s_axi_aresetn,
    \SIE_GEN.SIE_BIT_GEN[0].sie_reg[0] ,
    p_0_in71_in,
    p_0_in70_in,
    p_0_in69_in,
    p_0_in68_in,
    p_0_in67_in,
    p_0_in66_in,
    p_0_in65_in,
    p_0_in64_in,
    p_0_in63_in,
    p_0_in62_in,
    p_0_in61_in,
    p_0_in60_in,
    p_0_in59_in,
    p_0_in58_in,
    p_0_in57_in,
    p_0_in56_in,
    p_0_in55_in,
    p_0_in54_in,
    p_0_in53_in,
    p_0_in52_in,
    p_0_in51_in,
    p_0_in50_in,
    p_0_in49_in,
    \GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0 ,
    ip2bus_rdack,
    s_axi_arready,
    s_axi_arready_0,
    ip2bus_wrack,
    s_axi_awready,
    ip2bus_rdack_int_d1,
    ip2bus_wrack_int_d1,
    \s_axi_rdata_i_reg[0] ,
    \s_axi_rdata_i_reg[0]_0 ,
    \s_axi_rdata_i_reg[1] ,
    \s_axi_rdata_i_reg[1]_0 ,
    \s_axi_rdata_i_reg[2] ,
    \s_axi_rdata_i_reg[23] ,
    \s_axi_rdata_i_reg[3] ,
    \s_axi_rdata_i_reg[4] ,
    \s_axi_rdata_i_reg[5] ,
    \s_axi_rdata_i_reg[6] ,
    \s_axi_rdata_i_reg[7] ,
    \s_axi_rdata_i_reg[8] ,
    \s_axi_rdata_i_reg[9] ,
    \s_axi_rdata_i_reg[10] ,
    \s_axi_rdata_i_reg[11] ,
    \s_axi_rdata_i_reg[12] ,
    \s_axi_rdata_i_reg[13] ,
    \s_axi_rdata_i_reg[14] ,
    \s_axi_rdata_i_reg[15] ,
    \s_axi_rdata_i_reg[16] ,
    \s_axi_rdata_i_reg[17] ,
    \s_axi_rdata_i_reg[18] ,
    \s_axi_rdata_i_reg[19] ,
    \s_axi_rdata_i_reg[20] ,
    \s_axi_rdata_i_reg[21] ,
    \s_axi_rdata_i_reg[22] ,
    \s_axi_rdata_i_reg[23]_0 ,
    \s_axi_rdata_i_reg[31] ,
    p_0_in,
    mer,
    p_0_in25_in,
    p_0_in26_in,
    p_0_in27_in,
    p_0_in28_in,
    p_0_in29_in,
    p_0_in30_in,
    p_0_in31_in,
    p_0_in32_in,
    p_0_in33_in,
    p_0_in34_in,
    p_0_in35_in,
    p_0_in36_in,
    p_0_in37_in,
    p_0_in38_in,
    p_0_in39_in,
    p_0_in40_in,
    p_0_in41_in,
    p_0_in42_in,
    p_0_in43_in,
    p_0_in44_in,
    p_0_in45_in,
    p_0_in46_in,
    p_0_in47_in,
    \CIE_GEN.CIE_BIT_GEN[0].cie_reg[0] ,
    Bus_RNW_reg_reg_49);
  output p_18_in;
  output Bus_RNW_reg_reg_0;
  output Bus_RNW_reg_reg_1;
  output Bus_RNW_reg_reg_2;
  output Bus_RNW_reg_reg_3;
  output Bus_RNW_reg_reg_4;
  output Bus_RNW_reg_reg_5;
  output Bus_RNW_reg_reg_6;
  output Bus_RNW_reg_reg_7;
  output Bus_RNW_reg_reg_8;
  output Bus_RNW_reg_reg_9;
  output Bus_RNW_reg_reg_10;
  output Bus_RNW_reg_reg_11;
  output Bus_RNW_reg_reg_12;
  output Bus_RNW_reg_reg_13;
  output Bus_RNW_reg_reg_14;
  output Bus_RNW_reg_reg_15;
  output Bus_RNW_reg_reg_16;
  output Bus_RNW_reg_reg_17;
  output Bus_RNW_reg_reg_18;
  output Bus_RNW_reg_reg_19;
  output Bus_RNW_reg_reg_20;
  output Bus_RNW_reg_reg_21;
  output Bus_RNW_reg_reg_22;
  output Bus_RNW_reg_reg_23;
  output Bus_RNW_reg_reg_24;
  output iar;
  output iar1_out;
  output iar3_out;
  output iar5_out;
  output iar7_out;
  output iar9_out;
  output iar11_out;
  output iar13_out;
  output iar15_out;
  output iar17_out;
  output iar19_out;
  output iar21_out;
  output iar23_out;
  output iar25_out;
  output iar27_out;
  output iar29_out;
  output iar31_out;
  output iar33_out;
  output iar35_out;
  output iar37_out;
  output iar39_out;
  output iar41_out;
  output iar43_out;
  output iar44_out;
  output [0:0]bus2ip_wrce;
  output ip2bus_rdack_reg;
  output ip2bus_wrack_reg;
  output ip2bus_rdack_prev2;
  output Or128_vec2stdlogic19_out;
  output ip2bus_wrack_prev2;
  output Or128_vec2stdlogic;
  output [24:0]D;
  output s_axi_wdata_1_sp_1;
  output s_axi_wdata_0_sp_1;
  output Bus_RNW_reg_reg_25;
  output Bus_RNW_reg_reg_26;
  output Bus_RNW_reg_reg_27;
  output Bus_RNW_reg_reg_28;
  output Bus_RNW_reg_reg_29;
  output Bus_RNW_reg_reg_30;
  output Bus_RNW_reg_reg_31;
  output Bus_RNW_reg_reg_32;
  output Bus_RNW_reg_reg_33;
  output Bus_RNW_reg_reg_34;
  output Bus_RNW_reg_reg_35;
  output Bus_RNW_reg_reg_36;
  output Bus_RNW_reg_reg_37;
  output Bus_RNW_reg_reg_38;
  output Bus_RNW_reg_reg_39;
  output Bus_RNW_reg_reg_40;
  output Bus_RNW_reg_reg_41;
  output Bus_RNW_reg_reg_42;
  output Bus_RNW_reg_reg_43;
  output Bus_RNW_reg_reg_44;
  output Bus_RNW_reg_reg_45;
  output Bus_RNW_reg_reg_46;
  output Bus_RNW_reg_reg_47;
  output Bus_RNW_reg_reg_48;
  input Q;
  input s_axi_aclk;
  input [23:0]s_axi_wdata;
  input s_axi_aresetn;
  input \SIE_GEN.SIE_BIT_GEN[0].sie_reg[0] ;
  input p_0_in71_in;
  input p_0_in70_in;
  input p_0_in69_in;
  input p_0_in68_in;
  input p_0_in67_in;
  input p_0_in66_in;
  input p_0_in65_in;
  input p_0_in64_in;
  input p_0_in63_in;
  input p_0_in62_in;
  input p_0_in61_in;
  input p_0_in60_in;
  input p_0_in59_in;
  input p_0_in58_in;
  input p_0_in57_in;
  input p_0_in56_in;
  input p_0_in55_in;
  input p_0_in54_in;
  input p_0_in53_in;
  input p_0_in52_in;
  input p_0_in51_in;
  input p_0_in50_in;
  input p_0_in49_in;
  input [6:0]\GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0 ;
  input ip2bus_rdack;
  input [3:0]s_axi_arready;
  input s_axi_arready_0;
  input ip2bus_wrack;
  input s_axi_awready;
  input ip2bus_rdack_int_d1;
  input ip2bus_wrack_int_d1;
  input \s_axi_rdata_i_reg[0] ;
  input \s_axi_rdata_i_reg[0]_0 ;
  input \s_axi_rdata_i_reg[1] ;
  input \s_axi_rdata_i_reg[1]_0 ;
  input \s_axi_rdata_i_reg[2] ;
  input [21:0]\s_axi_rdata_i_reg[23] ;
  input \s_axi_rdata_i_reg[3] ;
  input \s_axi_rdata_i_reg[4] ;
  input \s_axi_rdata_i_reg[5] ;
  input \s_axi_rdata_i_reg[6] ;
  input \s_axi_rdata_i_reg[7] ;
  input \s_axi_rdata_i_reg[8] ;
  input \s_axi_rdata_i_reg[9] ;
  input \s_axi_rdata_i_reg[10] ;
  input \s_axi_rdata_i_reg[11] ;
  input \s_axi_rdata_i_reg[12] ;
  input \s_axi_rdata_i_reg[13] ;
  input \s_axi_rdata_i_reg[14] ;
  input \s_axi_rdata_i_reg[15] ;
  input \s_axi_rdata_i_reg[16] ;
  input \s_axi_rdata_i_reg[17] ;
  input \s_axi_rdata_i_reg[18] ;
  input \s_axi_rdata_i_reg[19] ;
  input \s_axi_rdata_i_reg[20] ;
  input \s_axi_rdata_i_reg[21] ;
  input \s_axi_rdata_i_reg[22] ;
  input \s_axi_rdata_i_reg[23]_0 ;
  input \s_axi_rdata_i_reg[31] ;
  input p_0_in;
  input mer;
  input p_0_in25_in;
  input p_0_in26_in;
  input p_0_in27_in;
  input p_0_in28_in;
  input p_0_in29_in;
  input p_0_in30_in;
  input p_0_in31_in;
  input p_0_in32_in;
  input p_0_in33_in;
  input p_0_in34_in;
  input p_0_in35_in;
  input p_0_in36_in;
  input p_0_in37_in;
  input p_0_in38_in;
  input p_0_in39_in;
  input p_0_in40_in;
  input p_0_in41_in;
  input p_0_in42_in;
  input p_0_in43_in;
  input p_0_in44_in;
  input p_0_in45_in;
  input p_0_in46_in;
  input p_0_in47_in;
  input \CIE_GEN.CIE_BIT_GEN[0].cie_reg[0] ;
  input Bus_RNW_reg_reg_49;

  wire Bus_RNW_reg_i_1_n_0;
  wire Bus_RNW_reg_reg_0;
  wire Bus_RNW_reg_reg_1;
  wire Bus_RNW_reg_reg_10;
  wire Bus_RNW_reg_reg_11;
  wire Bus_RNW_reg_reg_12;
  wire Bus_RNW_reg_reg_13;
  wire Bus_RNW_reg_reg_14;
  wire Bus_RNW_reg_reg_15;
  wire Bus_RNW_reg_reg_16;
  wire Bus_RNW_reg_reg_17;
  wire Bus_RNW_reg_reg_18;
  wire Bus_RNW_reg_reg_19;
  wire Bus_RNW_reg_reg_2;
  wire Bus_RNW_reg_reg_20;
  wire Bus_RNW_reg_reg_21;
  wire Bus_RNW_reg_reg_22;
  wire Bus_RNW_reg_reg_23;
  wire Bus_RNW_reg_reg_24;
  wire Bus_RNW_reg_reg_25;
  wire Bus_RNW_reg_reg_26;
  wire Bus_RNW_reg_reg_27;
  wire Bus_RNW_reg_reg_28;
  wire Bus_RNW_reg_reg_29;
  wire Bus_RNW_reg_reg_3;
  wire Bus_RNW_reg_reg_30;
  wire Bus_RNW_reg_reg_31;
  wire Bus_RNW_reg_reg_32;
  wire Bus_RNW_reg_reg_33;
  wire Bus_RNW_reg_reg_34;
  wire Bus_RNW_reg_reg_35;
  wire Bus_RNW_reg_reg_36;
  wire Bus_RNW_reg_reg_37;
  wire Bus_RNW_reg_reg_38;
  wire Bus_RNW_reg_reg_39;
  wire Bus_RNW_reg_reg_4;
  wire Bus_RNW_reg_reg_40;
  wire Bus_RNW_reg_reg_41;
  wire Bus_RNW_reg_reg_42;
  wire Bus_RNW_reg_reg_43;
  wire Bus_RNW_reg_reg_44;
  wire Bus_RNW_reg_reg_45;
  wire Bus_RNW_reg_reg_46;
  wire Bus_RNW_reg_reg_47;
  wire Bus_RNW_reg_reg_48;
  wire Bus_RNW_reg_reg_49;
  wire Bus_RNW_reg_reg_5;
  wire Bus_RNW_reg_reg_6;
  wire Bus_RNW_reg_reg_7;
  wire Bus_RNW_reg_reg_8;
  wire Bus_RNW_reg_reg_9;
  wire \CIE_GEN.CIE_BIT_GEN[0].cie_reg[0] ;
  wire [24:0]D;
  wire \GEN_BKEND_CE_REGISTERS[0].ce_out_i[0]_i_1_n_0 ;
  wire \GEN_BKEND_CE_REGISTERS[14].ce_out_i[14]_i_2_n_0 ;
  wire \GEN_BKEND_CE_REGISTERS[15].ce_out_i[15]_i_2_n_0 ;
  wire \GEN_BKEND_CE_REGISTERS[18].ce_out_i[18]_i_2_n_0 ;
  wire [6:0]\GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0 ;
  wire \GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg_n_0_[18] ;
  wire \GEN_BKEND_CE_REGISTERS[1].ce_out_i[1]_i_1_n_0 ;
  wire \GEN_BKEND_CE_REGISTERS[2].ce_out_i[2]_i_1_n_0 ;
  wire \GEN_BKEND_CE_REGISTERS[2].ce_out_i[2]_i_2_n_0 ;
  wire \GEN_BKEND_CE_REGISTERS[3].ce_out_i[3]_i_1_n_0 ;
  wire \GEN_BKEND_CE_REGISTERS[4].ce_out_i[4]_i_1_n_0 ;
  wire \GEN_BKEND_CE_REGISTERS[5].ce_out_i[5]_i_1_n_0 ;
  wire \GEN_BKEND_CE_REGISTERS[5].ce_out_i[5]_i_2_n_0 ;
  wire \GEN_BKEND_CE_REGISTERS[6].ce_out_i[6]_i_2_n_0 ;
  wire \GEN_BKEND_CE_REGISTERS[7].ce_out_i[7]_i_2_n_0 ;
  wire Or128_vec2stdlogic;
  wire Or128_vec2stdlogic19_out;
  wire Q;
  wire \SIE_GEN.SIE_BIT_GEN[0].sie_reg[0] ;
  wire [0:0]bus2ip_wrce;
  wire ce_expnd_i_1;
  wire ce_expnd_i_10;
  wire ce_expnd_i_11;
  wire ce_expnd_i_12;
  wire ce_expnd_i_3;
  wire ce_expnd_i_4;
  wire ce_expnd_i_5;
  wire ce_expnd_i_6;
  wire ce_expnd_i_7;
  wire ce_expnd_i_8;
  wire ce_expnd_i_9;
  wire cs_ce_clr;
  wire iar;
  wire iar11_out;
  wire iar13_out;
  wire iar15_out;
  wire iar17_out;
  wire iar19_out;
  wire iar1_out;
  wire iar21_out;
  wire iar23_out;
  wire iar25_out;
  wire iar27_out;
  wire iar29_out;
  wire iar31_out;
  wire iar33_out;
  wire iar35_out;
  wire iar37_out;
  wire iar39_out;
  wire iar3_out;
  wire iar41_out;
  wire iar43_out;
  wire iar44_out;
  wire iar5_out;
  wire iar7_out;
  wire iar9_out;
  wire ip2bus_rdack;
  wire ip2bus_rdack_int_d1;
  wire ip2bus_rdack_prev2;
  wire ip2bus_rdack_reg;
  wire ip2bus_wrack;
  wire ip2bus_wrack_i_2_n_0;
  wire ip2bus_wrack_i_3_n_0;
  wire ip2bus_wrack_int_d1;
  wire ip2bus_wrack_int_d1_i_2_n_0;
  wire ip2bus_wrack_int_d1_i_3_n_0;
  wire ip2bus_wrack_int_d1_i_4_n_0;
  wire ip2bus_wrack_int_d1_i_5_n_0;
  wire ip2bus_wrack_int_d1_i_6_n_0;
  wire ip2bus_wrack_prev2;
  wire ip2bus_wrack_reg;
  wire mer;
  wire p_0_in;
  wire p_0_in25_in;
  wire p_0_in26_in;
  wire p_0_in27_in;
  wire p_0_in28_in;
  wire p_0_in29_in;
  wire p_0_in30_in;
  wire p_0_in31_in;
  wire p_0_in32_in;
  wire p_0_in33_in;
  wire p_0_in34_in;
  wire p_0_in35_in;
  wire p_0_in36_in;
  wire p_0_in37_in;
  wire p_0_in38_in;
  wire p_0_in39_in;
  wire p_0_in40_in;
  wire p_0_in41_in;
  wire p_0_in42_in;
  wire p_0_in43_in;
  wire p_0_in44_in;
  wire p_0_in45_in;
  wire p_0_in46_in;
  wire p_0_in47_in;
  wire p_0_in49_in;
  wire p_0_in50_in;
  wire p_0_in51_in;
  wire p_0_in52_in;
  wire p_0_in53_in;
  wire p_0_in54_in;
  wire p_0_in55_in;
  wire p_0_in56_in;
  wire p_0_in57_in;
  wire p_0_in58_in;
  wire p_0_in59_in;
  wire p_0_in60_in;
  wire p_0_in61_in;
  wire p_0_in62_in;
  wire p_0_in63_in;
  wire p_0_in64_in;
  wire p_0_in65_in;
  wire p_0_in66_in;
  wire p_0_in67_in;
  wire p_0_in68_in;
  wire p_0_in69_in;
  wire p_0_in70_in;
  wire p_0_in71_in;
  wire p_10_in;
  wire p_11_in;
  wire p_12_in;
  wire p_13_in;
  wire p_14_in;
  wire p_15_in;
  wire p_16_in;
  wire p_17_in;
  wire p_18_in;
  wire p_1_in;
  wire p_2_in;
  wire p_3_in;
  wire p_4_in;
  wire p_5_in;
  wire p_6_in;
  wire p_7_in;
  wire p_8_in;
  wire p_9_in;
  wire pselect_hit_i_1;
  wire s_axi_aclk;
  wire s_axi_aresetn;
  wire [3:0]s_axi_arready;
  wire s_axi_arready_0;
  wire s_axi_awready;
  wire \s_axi_rdata_i[23]_i_3_n_0 ;
  wire \s_axi_rdata_i[31]_i_2_n_0 ;
  wire \s_axi_rdata_i_reg[0] ;
  wire \s_axi_rdata_i_reg[0]_0 ;
  wire \s_axi_rdata_i_reg[10] ;
  wire \s_axi_rdata_i_reg[11] ;
  wire \s_axi_rdata_i_reg[12] ;
  wire \s_axi_rdata_i_reg[13] ;
  wire \s_axi_rdata_i_reg[14] ;
  wire \s_axi_rdata_i_reg[15] ;
  wire \s_axi_rdata_i_reg[16] ;
  wire \s_axi_rdata_i_reg[17] ;
  wire \s_axi_rdata_i_reg[18] ;
  wire \s_axi_rdata_i_reg[19] ;
  wire \s_axi_rdata_i_reg[1] ;
  wire \s_axi_rdata_i_reg[1]_0 ;
  wire \s_axi_rdata_i_reg[20] ;
  wire \s_axi_rdata_i_reg[21] ;
  wire \s_axi_rdata_i_reg[22] ;
  wire [21:0]\s_axi_rdata_i_reg[23] ;
  wire \s_axi_rdata_i_reg[23]_0 ;
  wire \s_axi_rdata_i_reg[2] ;
  wire \s_axi_rdata_i_reg[31] ;
  wire \s_axi_rdata_i_reg[3] ;
  wire \s_axi_rdata_i_reg[4] ;
  wire \s_axi_rdata_i_reg[5] ;
  wire \s_axi_rdata_i_reg[6] ;
  wire \s_axi_rdata_i_reg[7] ;
  wire \s_axi_rdata_i_reg[8] ;
  wire \s_axi_rdata_i_reg[9] ;
  wire [23:0]s_axi_wdata;
  wire s_axi_wdata_0_sn_1;
  wire s_axi_wdata_1_sn_1;

  assign s_axi_wdata_0_sp_1 = s_axi_wdata_0_sn_1;
  assign s_axi_wdata_1_sp_1 = s_axi_wdata_1_sn_1;
  LUT3 #(
    .INIT(8'hB8)) 
    Bus_RNW_reg_i_1
       (.I0(Bus_RNW_reg_reg_49),
        .I1(Q),
        .I2(Bus_RNW_reg_reg_0),
        .O(Bus_RNW_reg_i_1_n_0));
  FDRE Bus_RNW_reg_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Bus_RNW_reg_i_1_n_0),
        .Q(Bus_RNW_reg_reg_0),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h00004000)) 
    \CIE_GEN.CIE_BIT_GEN[0].cie[0]_i_1 
       (.I0(Bus_RNW_reg_reg_0),
        .I1(p_13_in),
        .I2(s_axi_wdata[0]),
        .I3(s_axi_aresetn),
        .I4(\CIE_GEN.CIE_BIT_GEN[0].cie_reg[0] ),
        .O(Bus_RNW_reg_reg_48));
  LUT5 #(
    .INIT(32'h00004000)) 
    \CIE_GEN.CIE_BIT_GEN[10].cie[10]_i_1 
       (.I0(Bus_RNW_reg_reg_0),
        .I1(p_13_in),
        .I2(s_axi_wdata[10]),
        .I3(s_axi_aresetn),
        .I4(p_0_in38_in),
        .O(Bus_RNW_reg_reg_38));
  LUT5 #(
    .INIT(32'h00004000)) 
    \CIE_GEN.CIE_BIT_GEN[11].cie[11]_i_1 
       (.I0(Bus_RNW_reg_reg_0),
        .I1(p_13_in),
        .I2(s_axi_wdata[11]),
        .I3(s_axi_aresetn),
        .I4(p_0_in37_in),
        .O(Bus_RNW_reg_reg_37));
  LUT5 #(
    .INIT(32'h00004000)) 
    \CIE_GEN.CIE_BIT_GEN[12].cie[12]_i_1 
       (.I0(Bus_RNW_reg_reg_0),
        .I1(p_13_in),
        .I2(s_axi_wdata[12]),
        .I3(s_axi_aresetn),
        .I4(p_0_in36_in),
        .O(Bus_RNW_reg_reg_36));
  LUT5 #(
    .INIT(32'h00004000)) 
    \CIE_GEN.CIE_BIT_GEN[13].cie[13]_i_1 
       (.I0(Bus_RNW_reg_reg_0),
        .I1(p_13_in),
        .I2(s_axi_wdata[13]),
        .I3(s_axi_aresetn),
        .I4(p_0_in35_in),
        .O(Bus_RNW_reg_reg_35));
  LUT5 #(
    .INIT(32'h00004000)) 
    \CIE_GEN.CIE_BIT_GEN[14].cie[14]_i_1 
       (.I0(Bus_RNW_reg_reg_0),
        .I1(p_13_in),
        .I2(s_axi_wdata[14]),
        .I3(s_axi_aresetn),
        .I4(p_0_in34_in),
        .O(Bus_RNW_reg_reg_34));
  LUT5 #(
    .INIT(32'h00004000)) 
    \CIE_GEN.CIE_BIT_GEN[15].cie[15]_i_1 
       (.I0(Bus_RNW_reg_reg_0),
        .I1(p_13_in),
        .I2(s_axi_wdata[15]),
        .I3(s_axi_aresetn),
        .I4(p_0_in33_in),
        .O(Bus_RNW_reg_reg_33));
  LUT5 #(
    .INIT(32'h00004000)) 
    \CIE_GEN.CIE_BIT_GEN[16].cie[16]_i_1 
       (.I0(Bus_RNW_reg_reg_0),
        .I1(p_13_in),
        .I2(s_axi_wdata[16]),
        .I3(s_axi_aresetn),
        .I4(p_0_in32_in),
        .O(Bus_RNW_reg_reg_32));
  LUT5 #(
    .INIT(32'h00004000)) 
    \CIE_GEN.CIE_BIT_GEN[17].cie[17]_i_1 
       (.I0(Bus_RNW_reg_reg_0),
        .I1(p_13_in),
        .I2(s_axi_wdata[17]),
        .I3(s_axi_aresetn),
        .I4(p_0_in31_in),
        .O(Bus_RNW_reg_reg_31));
  LUT5 #(
    .INIT(32'h00004000)) 
    \CIE_GEN.CIE_BIT_GEN[18].cie[18]_i_1 
       (.I0(Bus_RNW_reg_reg_0),
        .I1(p_13_in),
        .I2(s_axi_wdata[18]),
        .I3(s_axi_aresetn),
        .I4(p_0_in30_in),
        .O(Bus_RNW_reg_reg_30));
  LUT5 #(
    .INIT(32'h00004000)) 
    \CIE_GEN.CIE_BIT_GEN[19].cie[19]_i_1 
       (.I0(Bus_RNW_reg_reg_0),
        .I1(p_13_in),
        .I2(s_axi_wdata[19]),
        .I3(s_axi_aresetn),
        .I4(p_0_in29_in),
        .O(Bus_RNW_reg_reg_29));
  LUT5 #(
    .INIT(32'h00004000)) 
    \CIE_GEN.CIE_BIT_GEN[1].cie[1]_i_1 
       (.I0(Bus_RNW_reg_reg_0),
        .I1(p_13_in),
        .I2(s_axi_wdata[1]),
        .I3(s_axi_aresetn),
        .I4(p_0_in47_in),
        .O(Bus_RNW_reg_reg_47));
  LUT5 #(
    .INIT(32'h00004000)) 
    \CIE_GEN.CIE_BIT_GEN[20].cie[20]_i_1 
       (.I0(Bus_RNW_reg_reg_0),
        .I1(p_13_in),
        .I2(s_axi_wdata[20]),
        .I3(s_axi_aresetn),
        .I4(p_0_in28_in),
        .O(Bus_RNW_reg_reg_28));
  LUT5 #(
    .INIT(32'h00004000)) 
    \CIE_GEN.CIE_BIT_GEN[21].cie[21]_i_1 
       (.I0(Bus_RNW_reg_reg_0),
        .I1(p_13_in),
        .I2(s_axi_wdata[21]),
        .I3(s_axi_aresetn),
        .I4(p_0_in27_in),
        .O(Bus_RNW_reg_reg_27));
  LUT5 #(
    .INIT(32'h00004000)) 
    \CIE_GEN.CIE_BIT_GEN[22].cie[22]_i_1 
       (.I0(Bus_RNW_reg_reg_0),
        .I1(p_13_in),
        .I2(s_axi_wdata[22]),
        .I3(s_axi_aresetn),
        .I4(p_0_in26_in),
        .O(Bus_RNW_reg_reg_26));
  LUT5 #(
    .INIT(32'h00004000)) 
    \CIE_GEN.CIE_BIT_GEN[23].cie[23]_i_1 
       (.I0(Bus_RNW_reg_reg_0),
        .I1(p_13_in),
        .I2(s_axi_wdata[23]),
        .I3(s_axi_aresetn),
        .I4(p_0_in25_in),
        .O(Bus_RNW_reg_reg_25));
  LUT5 #(
    .INIT(32'h00004000)) 
    \CIE_GEN.CIE_BIT_GEN[2].cie[2]_i_1 
       (.I0(Bus_RNW_reg_reg_0),
        .I1(p_13_in),
        .I2(s_axi_wdata[2]),
        .I3(s_axi_aresetn),
        .I4(p_0_in46_in),
        .O(Bus_RNW_reg_reg_46));
  LUT5 #(
    .INIT(32'h00004000)) 
    \CIE_GEN.CIE_BIT_GEN[3].cie[3]_i_1 
       (.I0(Bus_RNW_reg_reg_0),
        .I1(p_13_in),
        .I2(s_axi_wdata[3]),
        .I3(s_axi_aresetn),
        .I4(p_0_in45_in),
        .O(Bus_RNW_reg_reg_45));
  LUT5 #(
    .INIT(32'h00004000)) 
    \CIE_GEN.CIE_BIT_GEN[4].cie[4]_i_1 
       (.I0(Bus_RNW_reg_reg_0),
        .I1(p_13_in),
        .I2(s_axi_wdata[4]),
        .I3(s_axi_aresetn),
        .I4(p_0_in44_in),
        .O(Bus_RNW_reg_reg_44));
  LUT5 #(
    .INIT(32'h00004000)) 
    \CIE_GEN.CIE_BIT_GEN[5].cie[5]_i_1 
       (.I0(Bus_RNW_reg_reg_0),
        .I1(p_13_in),
        .I2(s_axi_wdata[5]),
        .I3(s_axi_aresetn),
        .I4(p_0_in43_in),
        .O(Bus_RNW_reg_reg_43));
  LUT5 #(
    .INIT(32'h00004000)) 
    \CIE_GEN.CIE_BIT_GEN[6].cie[6]_i_1 
       (.I0(Bus_RNW_reg_reg_0),
        .I1(p_13_in),
        .I2(s_axi_wdata[6]),
        .I3(s_axi_aresetn),
        .I4(p_0_in42_in),
        .O(Bus_RNW_reg_reg_42));
  LUT5 #(
    .INIT(32'h00004000)) 
    \CIE_GEN.CIE_BIT_GEN[7].cie[7]_i_1 
       (.I0(Bus_RNW_reg_reg_0),
        .I1(p_13_in),
        .I2(s_axi_wdata[7]),
        .I3(s_axi_aresetn),
        .I4(p_0_in41_in),
        .O(Bus_RNW_reg_reg_41));
  LUT5 #(
    .INIT(32'h00004000)) 
    \CIE_GEN.CIE_BIT_GEN[8].cie[8]_i_1 
       (.I0(Bus_RNW_reg_reg_0),
        .I1(p_13_in),
        .I2(s_axi_wdata[8]),
        .I3(s_axi_aresetn),
        .I4(p_0_in40_in),
        .O(Bus_RNW_reg_reg_40));
  LUT5 #(
    .INIT(32'h00004000)) 
    \CIE_GEN.CIE_BIT_GEN[9].cie[9]_i_1 
       (.I0(Bus_RNW_reg_reg_0),
        .I1(p_13_in),
        .I2(s_axi_wdata[9]),
        .I3(s_axi_aresetn),
        .I4(p_0_in39_in),
        .O(Bus_RNW_reg_reg_39));
  LUT6 #(
    .INIT(64'h0000000100000000)) 
    \GEN_BKEND_CE_REGISTERS[0].ce_out_i[0]_i_1 
       (.I0(\GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0 [0]),
        .I1(\GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0 [3]),
        .I2(\GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0 [6]),
        .I3(\GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0 [5]),
        .I4(\GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0 [4]),
        .I5(\s_axi_rdata_i[23]_i_3_n_0 ),
        .O(\GEN_BKEND_CE_REGISTERS[0].ce_out_i[0]_i_1_n_0 ));
  FDRE \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(\GEN_BKEND_CE_REGISTERS[0].ce_out_i[0]_i_1_n_0 ),
        .Q(p_18_in),
        .R(cs_ce_clr));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \GEN_BKEND_CE_REGISTERS[10].ce_out_i[10]_i_1 
       (.I0(\GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0 [2]),
        .I1(\GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0 [1]),
        .I2(\GEN_BKEND_CE_REGISTERS[14].ce_out_i[14]_i_2_n_0 ),
        .O(ce_expnd_i_8));
  FDRE \GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(ce_expnd_i_8),
        .Q(p_8_in),
        .R(cs_ce_clr));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \GEN_BKEND_CE_REGISTERS[11].ce_out_i[11]_i_1 
       (.I0(\GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0 [2]),
        .I1(\GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0 [1]),
        .I2(\GEN_BKEND_CE_REGISTERS[15].ce_out_i[15]_i_2_n_0 ),
        .O(ce_expnd_i_7));
  FDRE \GEN_BKEND_CE_REGISTERS[11].ce_out_i_reg[11] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(ce_expnd_i_7),
        .Q(p_7_in),
        .R(cs_ce_clr));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \GEN_BKEND_CE_REGISTERS[12].ce_out_i[12]_i_1 
       (.I0(\GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0 [1]),
        .I1(\GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0 [2]),
        .I2(\GEN_BKEND_CE_REGISTERS[14].ce_out_i[14]_i_2_n_0 ),
        .O(ce_expnd_i_6));
  FDRE \GEN_BKEND_CE_REGISTERS[12].ce_out_i_reg[12] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(ce_expnd_i_6),
        .Q(p_6_in),
        .R(cs_ce_clr));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \GEN_BKEND_CE_REGISTERS[13].ce_out_i[13]_i_1 
       (.I0(\GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0 [1]),
        .I1(\GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0 [2]),
        .I2(\GEN_BKEND_CE_REGISTERS[15].ce_out_i[15]_i_2_n_0 ),
        .O(ce_expnd_i_5));
  FDRE \GEN_BKEND_CE_REGISTERS[13].ce_out_i_reg[13] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(ce_expnd_i_5),
        .Q(p_5_in),
        .R(cs_ce_clr));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \GEN_BKEND_CE_REGISTERS[14].ce_out_i[14]_i_1 
       (.I0(\GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0 [2]),
        .I1(\GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0 [1]),
        .I2(\GEN_BKEND_CE_REGISTERS[14].ce_out_i[14]_i_2_n_0 ),
        .O(ce_expnd_i_4));
  LUT6 #(
    .INIT(64'hFFFFFFFBFFFFFFFF)) 
    \GEN_BKEND_CE_REGISTERS[14].ce_out_i[14]_i_2 
       (.I0(\GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0 [0]),
        .I1(Q),
        .I2(\GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0 [6]),
        .I3(\GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0 [4]),
        .I4(\GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0 [5]),
        .I5(\GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0 [3]),
        .O(\GEN_BKEND_CE_REGISTERS[14].ce_out_i[14]_i_2_n_0 ));
  FDRE \GEN_BKEND_CE_REGISTERS[14].ce_out_i_reg[14] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(ce_expnd_i_4),
        .Q(p_4_in),
        .R(cs_ce_clr));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \GEN_BKEND_CE_REGISTERS[15].ce_out_i[15]_i_1 
       (.I0(\GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0 [2]),
        .I1(\GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0 [1]),
        .I2(\GEN_BKEND_CE_REGISTERS[15].ce_out_i[15]_i_2_n_0 ),
        .O(ce_expnd_i_3));
  LUT6 #(
    .INIT(64'hFFFBFFFFFFFFFFFF)) 
    \GEN_BKEND_CE_REGISTERS[15].ce_out_i[15]_i_2 
       (.I0(\GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0 [6]),
        .I1(Q),
        .I2(\GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0 [5]),
        .I3(\GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0 [4]),
        .I4(\GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0 [0]),
        .I5(\GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0 [3]),
        .O(\GEN_BKEND_CE_REGISTERS[15].ce_out_i[15]_i_2_n_0 ));
  FDRE \GEN_BKEND_CE_REGISTERS[15].ce_out_i_reg[15] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(ce_expnd_i_3),
        .Q(p_3_in),
        .R(cs_ce_clr));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \GEN_BKEND_CE_REGISTERS[16].ce_out_i[16]_i_1 
       (.I0(\GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0 [6]),
        .I1(\GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0 [5]),
        .O(pselect_hit_i_1));
  FDRE \GEN_BKEND_CE_REGISTERS[16].ce_out_i_reg[16] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(pselect_hit_i_1),
        .Q(p_2_in),
        .R(cs_ce_clr));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \GEN_BKEND_CE_REGISTERS[17].ce_out_i[17]_i_1 
       (.I0(\GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0 [6]),
        .I1(\GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0 [0]),
        .O(ce_expnd_i_1));
  FDRE \GEN_BKEND_CE_REGISTERS[17].ce_out_i_reg[17] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(ce_expnd_i_1),
        .Q(p_1_in),
        .R(cs_ce_clr));
  LUT3 #(
    .INIT(8'hFB)) 
    \GEN_BKEND_CE_REGISTERS[18].ce_out_i[18]_i_1 
       (.I0(ip2bus_rdack_reg),
        .I1(s_axi_aresetn),
        .I2(ip2bus_wrack_reg),
        .O(cs_ce_clr));
  LUT2 #(
    .INIT(4'h4)) 
    \GEN_BKEND_CE_REGISTERS[18].ce_out_i[18]_i_2 
       (.I0(\GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0 [6]),
        .I1(\GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0 [0]),
        .O(\GEN_BKEND_CE_REGISTERS[18].ce_out_i[18]_i_2_n_0 ));
  FDRE \GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(\GEN_BKEND_CE_REGISTERS[18].ce_out_i[18]_i_2_n_0 ),
        .Q(\GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg_n_0_[18] ),
        .R(cs_ce_clr));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \GEN_BKEND_CE_REGISTERS[1].ce_out_i[1]_i_1 
       (.I0(\GEN_BKEND_CE_REGISTERS[5].ce_out_i[5]_i_2_n_0 ),
        .I1(\GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0 [2]),
        .I2(\GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0 [1]),
        .O(\GEN_BKEND_CE_REGISTERS[1].ce_out_i[1]_i_1_n_0 ));
  FDRE \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(\GEN_BKEND_CE_REGISTERS[1].ce_out_i[1]_i_1_n_0 ),
        .Q(p_17_in),
        .R(cs_ce_clr));
  LUT6 #(
    .INIT(64'h0000000100000000)) 
    \GEN_BKEND_CE_REGISTERS[2].ce_out_i[2]_i_1 
       (.I0(\GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0 [0]),
        .I1(\GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0 [3]),
        .I2(\GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0 [6]),
        .I3(\GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0 [5]),
        .I4(\GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0 [4]),
        .I5(\GEN_BKEND_CE_REGISTERS[2].ce_out_i[2]_i_2_n_0 ),
        .O(\GEN_BKEND_CE_REGISTERS[2].ce_out_i[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \GEN_BKEND_CE_REGISTERS[2].ce_out_i[2]_i_2 
       (.I0(\GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0 [1]),
        .I1(\GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0 [2]),
        .O(\GEN_BKEND_CE_REGISTERS[2].ce_out_i[2]_i_2_n_0 ));
  FDRE \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(\GEN_BKEND_CE_REGISTERS[2].ce_out_i[2]_i_1_n_0 ),
        .Q(p_16_in),
        .R(cs_ce_clr));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h20)) 
    \GEN_BKEND_CE_REGISTERS[3].ce_out_i[3]_i_1 
       (.I0(\GEN_BKEND_CE_REGISTERS[5].ce_out_i[5]_i_2_n_0 ),
        .I1(\GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0 [2]),
        .I2(\GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0 [1]),
        .O(\GEN_BKEND_CE_REGISTERS[3].ce_out_i[3]_i_1_n_0 ));
  FDRE \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(\GEN_BKEND_CE_REGISTERS[3].ce_out_i[3]_i_1_n_0 ),
        .Q(p_15_in),
        .R(cs_ce_clr));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'h20)) 
    \GEN_BKEND_CE_REGISTERS[4].ce_out_i[4]_i_1 
       (.I0(\GEN_BKEND_CE_REGISTERS[6].ce_out_i[6]_i_2_n_0 ),
        .I1(\GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0 [1]),
        .I2(\GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0 [2]),
        .O(\GEN_BKEND_CE_REGISTERS[4].ce_out_i[4]_i_1_n_0 ));
  FDRE \GEN_BKEND_CE_REGISTERS[4].ce_out_i_reg[4] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(\GEN_BKEND_CE_REGISTERS[4].ce_out_i[4]_i_1_n_0 ),
        .Q(p_14_in),
        .R(cs_ce_clr));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h20)) 
    \GEN_BKEND_CE_REGISTERS[5].ce_out_i[5]_i_1 
       (.I0(\GEN_BKEND_CE_REGISTERS[5].ce_out_i[5]_i_2_n_0 ),
        .I1(\GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0 [1]),
        .I2(\GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0 [2]),
        .O(\GEN_BKEND_CE_REGISTERS[5].ce_out_i[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000001000000000)) 
    \GEN_BKEND_CE_REGISTERS[5].ce_out_i[5]_i_2 
       (.I0(\GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0 [3]),
        .I1(\GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0 [6]),
        .I2(Q),
        .I3(\GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0 [5]),
        .I4(\GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0 [4]),
        .I5(\GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0 [0]),
        .O(\GEN_BKEND_CE_REGISTERS[5].ce_out_i[5]_i_2_n_0 ));
  FDRE \GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(\GEN_BKEND_CE_REGISTERS[5].ce_out_i[5]_i_1_n_0 ),
        .Q(p_13_in),
        .R(cs_ce_clr));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \GEN_BKEND_CE_REGISTERS[6].ce_out_i[6]_i_1 
       (.I0(\GEN_BKEND_CE_REGISTERS[6].ce_out_i[6]_i_2_n_0 ),
        .I1(\GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0 [2]),
        .I2(\GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0 [1]),
        .O(ce_expnd_i_12));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \GEN_BKEND_CE_REGISTERS[6].ce_out_i[6]_i_2 
       (.I0(\GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0 [4]),
        .I1(\GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0 [5]),
        .I2(Q),
        .I3(\GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0 [6]),
        .I4(\GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0 [3]),
        .I5(\GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0 [0]),
        .O(\GEN_BKEND_CE_REGISTERS[6].ce_out_i[6]_i_2_n_0 ));
  FDRE \GEN_BKEND_CE_REGISTERS[6].ce_out_i_reg[6] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(ce_expnd_i_12),
        .Q(p_12_in),
        .R(cs_ce_clr));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h00020000)) 
    \GEN_BKEND_CE_REGISTERS[7].ce_out_i[7]_i_1 
       (.I0(\GEN_BKEND_CE_REGISTERS[7].ce_out_i[7]_i_2_n_0 ),
        .I1(\GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0 [6]),
        .I2(\GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0 [5]),
        .I3(\GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0 [4]),
        .I4(\GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0 [0]),
        .O(ce_expnd_i_11));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \GEN_BKEND_CE_REGISTERS[7].ce_out_i[7]_i_2 
       (.I0(\GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0 [2]),
        .I1(\GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0 [1]),
        .I2(\GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0 [3]),
        .O(\GEN_BKEND_CE_REGISTERS[7].ce_out_i[7]_i_2_n_0 ));
  FDRE \GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(ce_expnd_i_11),
        .Q(p_11_in),
        .R(cs_ce_clr));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \GEN_BKEND_CE_REGISTERS[8].ce_out_i[8]_i_1 
       (.I0(\GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0 [2]),
        .I1(\GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0 [1]),
        .I2(\GEN_BKEND_CE_REGISTERS[14].ce_out_i[14]_i_2_n_0 ),
        .O(ce_expnd_i_10));
  FDRE \GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg[8] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(ce_expnd_i_10),
        .Q(p_10_in),
        .R(cs_ce_clr));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \GEN_BKEND_CE_REGISTERS[9].ce_out_i[9]_i_1 
       (.I0(\GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0 [2]),
        .I1(\GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0 [1]),
        .I2(\GEN_BKEND_CE_REGISTERS[15].ce_out_i[15]_i_2_n_0 ),
        .O(ce_expnd_i_9));
  FDRE \GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(ce_expnd_i_9),
        .Q(p_9_in),
        .R(cs_ce_clr));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \REG_GEN[0].IAR_NORMAL_MODE_GEN.iar[0]_i_2 
       (.I0(s_axi_wdata[0]),
        .I1(p_15_in),
        .I2(Bus_RNW_reg_reg_0),
        .O(iar44_out));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \REG_GEN[0].ier[0]_i_2 
       (.I0(p_16_in),
        .I1(Bus_RNW_reg_reg_0),
        .O(bus2ip_wrce));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \REG_GEN[10].IAR_NORMAL_MODE_GEN.iar[10]_i_2 
       (.I0(s_axi_wdata[10]),
        .I1(p_15_in),
        .I2(Bus_RNW_reg_reg_0),
        .O(iar25_out));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \REG_GEN[11].IAR_NORMAL_MODE_GEN.iar[11]_i_2 
       (.I0(s_axi_wdata[11]),
        .I1(p_15_in),
        .I2(Bus_RNW_reg_reg_0),
        .O(iar23_out));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \REG_GEN[12].IAR_NORMAL_MODE_GEN.iar[12]_i_2 
       (.I0(s_axi_wdata[12]),
        .I1(p_15_in),
        .I2(Bus_RNW_reg_reg_0),
        .O(iar21_out));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \REG_GEN[13].IAR_NORMAL_MODE_GEN.iar[13]_i_2 
       (.I0(s_axi_wdata[13]),
        .I1(p_15_in),
        .I2(Bus_RNW_reg_reg_0),
        .O(iar19_out));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \REG_GEN[14].IAR_NORMAL_MODE_GEN.iar[14]_i_2 
       (.I0(s_axi_wdata[14]),
        .I1(p_15_in),
        .I2(Bus_RNW_reg_reg_0),
        .O(iar17_out));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \REG_GEN[15].IAR_NORMAL_MODE_GEN.iar[15]_i_2 
       (.I0(s_axi_wdata[15]),
        .I1(p_15_in),
        .I2(Bus_RNW_reg_reg_0),
        .O(iar15_out));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \REG_GEN[16].IAR_NORMAL_MODE_GEN.iar[16]_i_2 
       (.I0(s_axi_wdata[16]),
        .I1(p_15_in),
        .I2(Bus_RNW_reg_reg_0),
        .O(iar13_out));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \REG_GEN[17].IAR_NORMAL_MODE_GEN.iar[17]_i_2 
       (.I0(s_axi_wdata[17]),
        .I1(p_15_in),
        .I2(Bus_RNW_reg_reg_0),
        .O(iar11_out));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \REG_GEN[18].IAR_NORMAL_MODE_GEN.iar[18]_i_2 
       (.I0(s_axi_wdata[18]),
        .I1(p_15_in),
        .I2(Bus_RNW_reg_reg_0),
        .O(iar9_out));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \REG_GEN[19].IAR_NORMAL_MODE_GEN.iar[19]_i_2 
       (.I0(s_axi_wdata[19]),
        .I1(p_15_in),
        .I2(Bus_RNW_reg_reg_0),
        .O(iar7_out));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \REG_GEN[1].IAR_NORMAL_MODE_GEN.iar[1]_i_2 
       (.I0(s_axi_wdata[1]),
        .I1(p_15_in),
        .I2(Bus_RNW_reg_reg_0),
        .O(iar43_out));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \REG_GEN[20].IAR_NORMAL_MODE_GEN.iar[20]_i_2 
       (.I0(s_axi_wdata[20]),
        .I1(p_15_in),
        .I2(Bus_RNW_reg_reg_0),
        .O(iar5_out));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \REG_GEN[21].IAR_NORMAL_MODE_GEN.iar[21]_i_2 
       (.I0(s_axi_wdata[21]),
        .I1(p_15_in),
        .I2(Bus_RNW_reg_reg_0),
        .O(iar3_out));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \REG_GEN[22].IAR_NORMAL_MODE_GEN.iar[22]_i_2 
       (.I0(s_axi_wdata[22]),
        .I1(p_15_in),
        .I2(Bus_RNW_reg_reg_0),
        .O(iar1_out));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \REG_GEN[23].IAR_NORMAL_MODE_GEN.iar[23]_i_2 
       (.I0(s_axi_wdata[23]),
        .I1(p_15_in),
        .I2(Bus_RNW_reg_reg_0),
        .O(iar));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \REG_GEN[2].IAR_NORMAL_MODE_GEN.iar[2]_i_2 
       (.I0(s_axi_wdata[2]),
        .I1(p_15_in),
        .I2(Bus_RNW_reg_reg_0),
        .O(iar41_out));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \REG_GEN[3].IAR_NORMAL_MODE_GEN.iar[3]_i_2 
       (.I0(s_axi_wdata[3]),
        .I1(p_15_in),
        .I2(Bus_RNW_reg_reg_0),
        .O(iar39_out));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \REG_GEN[4].IAR_NORMAL_MODE_GEN.iar[4]_i_2 
       (.I0(s_axi_wdata[4]),
        .I1(p_15_in),
        .I2(Bus_RNW_reg_reg_0),
        .O(iar37_out));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \REG_GEN[5].IAR_NORMAL_MODE_GEN.iar[5]_i_2 
       (.I0(s_axi_wdata[5]),
        .I1(p_15_in),
        .I2(Bus_RNW_reg_reg_0),
        .O(iar35_out));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \REG_GEN[6].IAR_NORMAL_MODE_GEN.iar[6]_i_2 
       (.I0(s_axi_wdata[6]),
        .I1(p_15_in),
        .I2(Bus_RNW_reg_reg_0),
        .O(iar33_out));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \REG_GEN[7].IAR_NORMAL_MODE_GEN.iar[7]_i_2 
       (.I0(s_axi_wdata[7]),
        .I1(p_15_in),
        .I2(Bus_RNW_reg_reg_0),
        .O(iar31_out));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \REG_GEN[8].IAR_NORMAL_MODE_GEN.iar[8]_i_2 
       (.I0(s_axi_wdata[8]),
        .I1(p_15_in),
        .I2(Bus_RNW_reg_reg_0),
        .O(iar29_out));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \REG_GEN[9].IAR_NORMAL_MODE_GEN.iar[9]_i_2 
       (.I0(s_axi_wdata[9]),
        .I1(p_15_in),
        .I2(Bus_RNW_reg_reg_0),
        .O(iar27_out));
  LUT5 #(
    .INIT(32'h00004000)) 
    \SIE_GEN.SIE_BIT_GEN[0].sie[0]_i_1 
       (.I0(Bus_RNW_reg_reg_0),
        .I1(p_14_in),
        .I2(s_axi_wdata[0]),
        .I3(s_axi_aresetn),
        .I4(\SIE_GEN.SIE_BIT_GEN[0].sie_reg[0] ),
        .O(Bus_RNW_reg_reg_1));
  LUT5 #(
    .INIT(32'h00004000)) 
    \SIE_GEN.SIE_BIT_GEN[10].sie[10]_i_1 
       (.I0(Bus_RNW_reg_reg_0),
        .I1(p_14_in),
        .I2(s_axi_wdata[10]),
        .I3(s_axi_aresetn),
        .I4(p_0_in62_in),
        .O(Bus_RNW_reg_reg_11));
  LUT5 #(
    .INIT(32'h00004000)) 
    \SIE_GEN.SIE_BIT_GEN[11].sie[11]_i_1 
       (.I0(Bus_RNW_reg_reg_0),
        .I1(p_14_in),
        .I2(s_axi_wdata[11]),
        .I3(s_axi_aresetn),
        .I4(p_0_in61_in),
        .O(Bus_RNW_reg_reg_12));
  LUT5 #(
    .INIT(32'h00004000)) 
    \SIE_GEN.SIE_BIT_GEN[12].sie[12]_i_1 
       (.I0(Bus_RNW_reg_reg_0),
        .I1(p_14_in),
        .I2(s_axi_wdata[12]),
        .I3(s_axi_aresetn),
        .I4(p_0_in60_in),
        .O(Bus_RNW_reg_reg_13));
  LUT5 #(
    .INIT(32'h00004000)) 
    \SIE_GEN.SIE_BIT_GEN[13].sie[13]_i_1 
       (.I0(Bus_RNW_reg_reg_0),
        .I1(p_14_in),
        .I2(s_axi_wdata[13]),
        .I3(s_axi_aresetn),
        .I4(p_0_in59_in),
        .O(Bus_RNW_reg_reg_14));
  LUT5 #(
    .INIT(32'h00004000)) 
    \SIE_GEN.SIE_BIT_GEN[14].sie[14]_i_1 
       (.I0(Bus_RNW_reg_reg_0),
        .I1(p_14_in),
        .I2(s_axi_wdata[14]),
        .I3(s_axi_aresetn),
        .I4(p_0_in58_in),
        .O(Bus_RNW_reg_reg_15));
  LUT5 #(
    .INIT(32'h00004000)) 
    \SIE_GEN.SIE_BIT_GEN[15].sie[15]_i_1 
       (.I0(Bus_RNW_reg_reg_0),
        .I1(p_14_in),
        .I2(s_axi_wdata[15]),
        .I3(s_axi_aresetn),
        .I4(p_0_in57_in),
        .O(Bus_RNW_reg_reg_16));
  LUT5 #(
    .INIT(32'h00004000)) 
    \SIE_GEN.SIE_BIT_GEN[16].sie[16]_i_1 
       (.I0(Bus_RNW_reg_reg_0),
        .I1(p_14_in),
        .I2(s_axi_wdata[16]),
        .I3(s_axi_aresetn),
        .I4(p_0_in56_in),
        .O(Bus_RNW_reg_reg_17));
  LUT5 #(
    .INIT(32'h00004000)) 
    \SIE_GEN.SIE_BIT_GEN[17].sie[17]_i_1 
       (.I0(Bus_RNW_reg_reg_0),
        .I1(p_14_in),
        .I2(s_axi_wdata[17]),
        .I3(s_axi_aresetn),
        .I4(p_0_in55_in),
        .O(Bus_RNW_reg_reg_18));
  LUT5 #(
    .INIT(32'h00004000)) 
    \SIE_GEN.SIE_BIT_GEN[18].sie[18]_i_1 
       (.I0(Bus_RNW_reg_reg_0),
        .I1(p_14_in),
        .I2(s_axi_wdata[18]),
        .I3(s_axi_aresetn),
        .I4(p_0_in54_in),
        .O(Bus_RNW_reg_reg_19));
  LUT5 #(
    .INIT(32'h00004000)) 
    \SIE_GEN.SIE_BIT_GEN[19].sie[19]_i_1 
       (.I0(Bus_RNW_reg_reg_0),
        .I1(p_14_in),
        .I2(s_axi_wdata[19]),
        .I3(s_axi_aresetn),
        .I4(p_0_in53_in),
        .O(Bus_RNW_reg_reg_20));
  LUT5 #(
    .INIT(32'h00004000)) 
    \SIE_GEN.SIE_BIT_GEN[1].sie[1]_i_1 
       (.I0(Bus_RNW_reg_reg_0),
        .I1(p_14_in),
        .I2(s_axi_wdata[1]),
        .I3(s_axi_aresetn),
        .I4(p_0_in71_in),
        .O(Bus_RNW_reg_reg_2));
  LUT5 #(
    .INIT(32'h00004000)) 
    \SIE_GEN.SIE_BIT_GEN[20].sie[20]_i_1 
       (.I0(Bus_RNW_reg_reg_0),
        .I1(p_14_in),
        .I2(s_axi_wdata[20]),
        .I3(s_axi_aresetn),
        .I4(p_0_in52_in),
        .O(Bus_RNW_reg_reg_21));
  LUT5 #(
    .INIT(32'h00004000)) 
    \SIE_GEN.SIE_BIT_GEN[21].sie[21]_i_1 
       (.I0(Bus_RNW_reg_reg_0),
        .I1(p_14_in),
        .I2(s_axi_wdata[21]),
        .I3(s_axi_aresetn),
        .I4(p_0_in51_in),
        .O(Bus_RNW_reg_reg_22));
  LUT5 #(
    .INIT(32'h00004000)) 
    \SIE_GEN.SIE_BIT_GEN[22].sie[22]_i_1 
       (.I0(Bus_RNW_reg_reg_0),
        .I1(p_14_in),
        .I2(s_axi_wdata[22]),
        .I3(s_axi_aresetn),
        .I4(p_0_in50_in),
        .O(Bus_RNW_reg_reg_23));
  LUT5 #(
    .INIT(32'h00004000)) 
    \SIE_GEN.SIE_BIT_GEN[23].sie[23]_i_1 
       (.I0(Bus_RNW_reg_reg_0),
        .I1(p_14_in),
        .I2(s_axi_wdata[23]),
        .I3(s_axi_aresetn),
        .I4(p_0_in49_in),
        .O(Bus_RNW_reg_reg_24));
  LUT5 #(
    .INIT(32'h00004000)) 
    \SIE_GEN.SIE_BIT_GEN[2].sie[2]_i_1 
       (.I0(Bus_RNW_reg_reg_0),
        .I1(p_14_in),
        .I2(s_axi_wdata[2]),
        .I3(s_axi_aresetn),
        .I4(p_0_in70_in),
        .O(Bus_RNW_reg_reg_3));
  LUT5 #(
    .INIT(32'h00004000)) 
    \SIE_GEN.SIE_BIT_GEN[3].sie[3]_i_1 
       (.I0(Bus_RNW_reg_reg_0),
        .I1(p_14_in),
        .I2(s_axi_wdata[3]),
        .I3(s_axi_aresetn),
        .I4(p_0_in69_in),
        .O(Bus_RNW_reg_reg_4));
  LUT5 #(
    .INIT(32'h00004000)) 
    \SIE_GEN.SIE_BIT_GEN[4].sie[4]_i_1 
       (.I0(Bus_RNW_reg_reg_0),
        .I1(p_14_in),
        .I2(s_axi_wdata[4]),
        .I3(s_axi_aresetn),
        .I4(p_0_in68_in),
        .O(Bus_RNW_reg_reg_5));
  LUT5 #(
    .INIT(32'h00004000)) 
    \SIE_GEN.SIE_BIT_GEN[5].sie[5]_i_1 
       (.I0(Bus_RNW_reg_reg_0),
        .I1(p_14_in),
        .I2(s_axi_wdata[5]),
        .I3(s_axi_aresetn),
        .I4(p_0_in67_in),
        .O(Bus_RNW_reg_reg_6));
  LUT5 #(
    .INIT(32'h00004000)) 
    \SIE_GEN.SIE_BIT_GEN[6].sie[6]_i_1 
       (.I0(Bus_RNW_reg_reg_0),
        .I1(p_14_in),
        .I2(s_axi_wdata[6]),
        .I3(s_axi_aresetn),
        .I4(p_0_in66_in),
        .O(Bus_RNW_reg_reg_7));
  LUT5 #(
    .INIT(32'h00004000)) 
    \SIE_GEN.SIE_BIT_GEN[7].sie[7]_i_1 
       (.I0(Bus_RNW_reg_reg_0),
        .I1(p_14_in),
        .I2(s_axi_wdata[7]),
        .I3(s_axi_aresetn),
        .I4(p_0_in65_in),
        .O(Bus_RNW_reg_reg_8));
  LUT5 #(
    .INIT(32'h00004000)) 
    \SIE_GEN.SIE_BIT_GEN[8].sie[8]_i_1 
       (.I0(Bus_RNW_reg_reg_0),
        .I1(p_14_in),
        .I2(s_axi_wdata[8]),
        .I3(s_axi_aresetn),
        .I4(p_0_in64_in),
        .O(Bus_RNW_reg_reg_9));
  LUT5 #(
    .INIT(32'h00004000)) 
    \SIE_GEN.SIE_BIT_GEN[9].sie[9]_i_1 
       (.I0(Bus_RNW_reg_reg_0),
        .I1(p_14_in),
        .I2(s_axi_wdata[9]),
        .I3(s_axi_aresetn),
        .I4(p_0_in63_in),
        .O(Bus_RNW_reg_reg_10));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h04)) 
    ip2bus_rdack_i_1
       (.I0(ip2bus_wrack_i_2_n_0),
        .I1(Bus_RNW_reg_reg_0),
        .I2(ip2bus_rdack_int_d1),
        .O(ip2bus_rdack_prev2));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h8A)) 
    ip2bus_rdack_int_d1_i_1
       (.I0(Bus_RNW_reg_reg_0),
        .I1(ip2bus_wrack_int_d1_i_2_n_0),
        .I2(ip2bus_wrack_int_d1_i_3_n_0),
        .O(Or128_vec2stdlogic19_out));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h01)) 
    ip2bus_wrack_i_1
       (.I0(ip2bus_wrack_i_2_n_0),
        .I1(Bus_RNW_reg_reg_0),
        .I2(ip2bus_wrack_int_d1),
        .O(ip2bus_wrack_prev2));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    ip2bus_wrack_i_2
       (.I0(ip2bus_wrack_int_d1_i_3_n_0),
        .I1(ip2bus_wrack_i_3_n_0),
        .I2(\GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg_n_0_[18] ),
        .I3(p_7_in),
        .I4(p_13_in),
        .I5(p_14_in),
        .O(ip2bus_wrack_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    ip2bus_wrack_i_3
       (.I0(p_5_in),
        .I1(p_8_in),
        .I2(p_4_in),
        .I3(p_2_in),
        .I4(ip2bus_wrack_int_d1_i_4_n_0),
        .O(ip2bus_wrack_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h45)) 
    ip2bus_wrack_int_d1_i_1
       (.I0(Bus_RNW_reg_reg_0),
        .I1(ip2bus_wrack_int_d1_i_2_n_0),
        .I2(ip2bus_wrack_int_d1_i_3_n_0),
        .O(Or128_vec2stdlogic));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    ip2bus_wrack_int_d1_i_2
       (.I0(p_14_in),
        .I1(p_13_in),
        .I2(p_7_in),
        .I3(\GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg_n_0_[18] ),
        .I4(ip2bus_wrack_int_d1_i_4_n_0),
        .I5(ip2bus_wrack_int_d1_i_5_n_0),
        .O(ip2bus_wrack_int_d1_i_2_n_0));
  LUT4 #(
    .INIT(16'h0001)) 
    ip2bus_wrack_int_d1_i_3
       (.I0(p_12_in),
        .I1(p_9_in),
        .I2(p_17_in),
        .I3(ip2bus_wrack_int_d1_i_6_n_0),
        .O(ip2bus_wrack_int_d1_i_3_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    ip2bus_wrack_int_d1_i_4
       (.I0(p_1_in),
        .I1(p_15_in),
        .I2(p_3_in),
        .I3(p_6_in),
        .O(ip2bus_wrack_int_d1_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    ip2bus_wrack_int_d1_i_5
       (.I0(p_2_in),
        .I1(p_4_in),
        .I2(p_8_in),
        .I3(p_5_in),
        .O(ip2bus_wrack_int_d1_i_5_n_0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    ip2bus_wrack_int_d1_i_6
       (.I0(p_18_in),
        .I1(p_11_in),
        .I2(p_10_in),
        .I3(p_16_in),
        .O(ip2bus_wrack_int_d1_i_6_n_0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'hFB08)) 
    \mer_int[0]_i_1 
       (.I0(s_axi_wdata[0]),
        .I1(p_11_in),
        .I2(Bus_RNW_reg_reg_0),
        .I3(mer),
        .O(s_axi_wdata_0_sn_1));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'hFF20)) 
    \mer_int[1]_i_1 
       (.I0(s_axi_wdata[1]),
        .I1(Bus_RNW_reg_reg_0),
        .I2(p_11_in),
        .I3(p_0_in),
        .O(s_axi_wdata_1_sn_1));
  LUT6 #(
    .INIT(64'hAAAAABAAAAAAAAAA)) 
    s_axi_arready_INST_0
       (.I0(ip2bus_rdack),
        .I1(s_axi_arready[0]),
        .I2(s_axi_arready[1]),
        .I3(s_axi_arready[3]),
        .I4(s_axi_arready[2]),
        .I5(s_axi_arready_0),
        .O(ip2bus_rdack_reg));
  LUT5 #(
    .INIT(32'h888A8888)) 
    \s_axi_rdata_i[0]_i_1 
       (.I0(\s_axi_rdata_i[31]_i_2_n_0 ),
        .I1(\s_axi_rdata_i_reg[0] ),
        .I2(\GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0 [3]),
        .I3(\GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0 [0]),
        .I4(\s_axi_rdata_i_reg[0]_0 ),
        .O(D[0]));
  LUT6 #(
    .INIT(64'hA0A2000280820002)) 
    \s_axi_rdata_i[10]_i_1 
       (.I0(\s_axi_rdata_i[31]_i_2_n_0 ),
        .I1(\GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0 [3]),
        .I2(\GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0 [0]),
        .I3(\s_axi_rdata_i_reg[10] ),
        .I4(\s_axi_rdata_i[23]_i_3_n_0 ),
        .I5(\s_axi_rdata_i_reg[23] [8]),
        .O(D[10]));
  LUT6 #(
    .INIT(64'hA0A2000280820002)) 
    \s_axi_rdata_i[11]_i_1 
       (.I0(\s_axi_rdata_i[31]_i_2_n_0 ),
        .I1(\GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0 [3]),
        .I2(\GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0 [0]),
        .I3(\s_axi_rdata_i_reg[11] ),
        .I4(\s_axi_rdata_i[23]_i_3_n_0 ),
        .I5(\s_axi_rdata_i_reg[23] [9]),
        .O(D[11]));
  LUT6 #(
    .INIT(64'hA0A2000280820002)) 
    \s_axi_rdata_i[12]_i_1 
       (.I0(\s_axi_rdata_i[31]_i_2_n_0 ),
        .I1(\GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0 [3]),
        .I2(\GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0 [0]),
        .I3(\s_axi_rdata_i_reg[12] ),
        .I4(\s_axi_rdata_i[23]_i_3_n_0 ),
        .I5(\s_axi_rdata_i_reg[23] [10]),
        .O(D[12]));
  LUT6 #(
    .INIT(64'hA0A2000280820002)) 
    \s_axi_rdata_i[13]_i_1 
       (.I0(\s_axi_rdata_i[31]_i_2_n_0 ),
        .I1(\GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0 [3]),
        .I2(\GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0 [0]),
        .I3(\s_axi_rdata_i_reg[13] ),
        .I4(\s_axi_rdata_i[23]_i_3_n_0 ),
        .I5(\s_axi_rdata_i_reg[23] [11]),
        .O(D[13]));
  LUT6 #(
    .INIT(64'hA0A2000280820002)) 
    \s_axi_rdata_i[14]_i_1 
       (.I0(\s_axi_rdata_i[31]_i_2_n_0 ),
        .I1(\GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0 [3]),
        .I2(\GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0 [0]),
        .I3(\s_axi_rdata_i_reg[14] ),
        .I4(\s_axi_rdata_i[23]_i_3_n_0 ),
        .I5(\s_axi_rdata_i_reg[23] [12]),
        .O(D[14]));
  LUT6 #(
    .INIT(64'hA0A2000280820002)) 
    \s_axi_rdata_i[15]_i_1 
       (.I0(\s_axi_rdata_i[31]_i_2_n_0 ),
        .I1(\GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0 [3]),
        .I2(\GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0 [0]),
        .I3(\s_axi_rdata_i_reg[15] ),
        .I4(\s_axi_rdata_i[23]_i_3_n_0 ),
        .I5(\s_axi_rdata_i_reg[23] [13]),
        .O(D[15]));
  LUT6 #(
    .INIT(64'hA0A2000280820002)) 
    \s_axi_rdata_i[16]_i_1 
       (.I0(\s_axi_rdata_i[31]_i_2_n_0 ),
        .I1(\GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0 [3]),
        .I2(\GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0 [0]),
        .I3(\s_axi_rdata_i_reg[16] ),
        .I4(\s_axi_rdata_i[23]_i_3_n_0 ),
        .I5(\s_axi_rdata_i_reg[23] [14]),
        .O(D[16]));
  LUT6 #(
    .INIT(64'hA0A2000280820002)) 
    \s_axi_rdata_i[17]_i_1 
       (.I0(\s_axi_rdata_i[31]_i_2_n_0 ),
        .I1(\GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0 [3]),
        .I2(\GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0 [0]),
        .I3(\s_axi_rdata_i_reg[17] ),
        .I4(\s_axi_rdata_i[23]_i_3_n_0 ),
        .I5(\s_axi_rdata_i_reg[23] [15]),
        .O(D[17]));
  LUT6 #(
    .INIT(64'hA0A2000280820002)) 
    \s_axi_rdata_i[18]_i_1 
       (.I0(\s_axi_rdata_i[31]_i_2_n_0 ),
        .I1(\GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0 [3]),
        .I2(\GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0 [0]),
        .I3(\s_axi_rdata_i_reg[18] ),
        .I4(\s_axi_rdata_i[23]_i_3_n_0 ),
        .I5(\s_axi_rdata_i_reg[23] [16]),
        .O(D[18]));
  LUT6 #(
    .INIT(64'hA0A2000280820002)) 
    \s_axi_rdata_i[19]_i_1 
       (.I0(\s_axi_rdata_i[31]_i_2_n_0 ),
        .I1(\GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0 [3]),
        .I2(\GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0 [0]),
        .I3(\s_axi_rdata_i_reg[19] ),
        .I4(\s_axi_rdata_i[23]_i_3_n_0 ),
        .I5(\s_axi_rdata_i_reg[23] [17]),
        .O(D[19]));
  LUT5 #(
    .INIT(32'h888A8888)) 
    \s_axi_rdata_i[1]_i_1 
       (.I0(\s_axi_rdata_i[31]_i_2_n_0 ),
        .I1(\s_axi_rdata_i_reg[1] ),
        .I2(\GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0 [3]),
        .I3(\GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0 [0]),
        .I4(\s_axi_rdata_i_reg[1]_0 ),
        .O(D[1]));
  LUT6 #(
    .INIT(64'hA0A2000280820002)) 
    \s_axi_rdata_i[20]_i_1 
       (.I0(\s_axi_rdata_i[31]_i_2_n_0 ),
        .I1(\GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0 [3]),
        .I2(\GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0 [0]),
        .I3(\s_axi_rdata_i_reg[20] ),
        .I4(\s_axi_rdata_i[23]_i_3_n_0 ),
        .I5(\s_axi_rdata_i_reg[23] [18]),
        .O(D[20]));
  LUT6 #(
    .INIT(64'hA0A2000280820002)) 
    \s_axi_rdata_i[21]_i_1 
       (.I0(\s_axi_rdata_i[31]_i_2_n_0 ),
        .I1(\GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0 [3]),
        .I2(\GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0 [0]),
        .I3(\s_axi_rdata_i_reg[21] ),
        .I4(\s_axi_rdata_i[23]_i_3_n_0 ),
        .I5(\s_axi_rdata_i_reg[23] [19]),
        .O(D[21]));
  LUT6 #(
    .INIT(64'hA0A2000280820002)) 
    \s_axi_rdata_i[22]_i_1 
       (.I0(\s_axi_rdata_i[31]_i_2_n_0 ),
        .I1(\GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0 [3]),
        .I2(\GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0 [0]),
        .I3(\s_axi_rdata_i_reg[22] ),
        .I4(\s_axi_rdata_i[23]_i_3_n_0 ),
        .I5(\s_axi_rdata_i_reg[23] [20]),
        .O(D[22]));
  LUT6 #(
    .INIT(64'hA0A2000280820002)) 
    \s_axi_rdata_i[23]_i_1 
       (.I0(\s_axi_rdata_i[31]_i_2_n_0 ),
        .I1(\GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0 [3]),
        .I2(\GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0 [0]),
        .I3(\s_axi_rdata_i_reg[23]_0 ),
        .I4(\s_axi_rdata_i[23]_i_3_n_0 ),
        .I5(\s_axi_rdata_i_reg[23] [21]),
        .O(D[23]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \s_axi_rdata_i[23]_i_3 
       (.I0(\GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0 [1]),
        .I1(\GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0 [2]),
        .O(\s_axi_rdata_i[23]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hA2A0020082800200)) 
    \s_axi_rdata_i[2]_i_1 
       (.I0(\s_axi_rdata_i[31]_i_2_n_0 ),
        .I1(\GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0 [3]),
        .I2(\GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0 [0]),
        .I3(\s_axi_rdata_i_reg[2] ),
        .I4(\s_axi_rdata_i[23]_i_3_n_0 ),
        .I5(\s_axi_rdata_i_reg[23] [0]),
        .O(D[2]));
  LUT6 #(
    .INIT(64'h002000000000A800)) 
    \s_axi_rdata_i[31]_i_1 
       (.I0(\s_axi_rdata_i[31]_i_2_n_0 ),
        .I1(\GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0 [3]),
        .I2(\s_axi_rdata_i_reg[31] ),
        .I3(\GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0 [0]),
        .I4(\GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0 [2]),
        .I5(\GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0 [1]),
        .O(D[24]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00000010)) 
    \s_axi_rdata_i[31]_i_2 
       (.I0(ip2bus_wrack_int_d1_i_3_n_0),
        .I1(\GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0 [6]),
        .I2(Bus_RNW_reg_reg_0),
        .I3(\GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0 [4]),
        .I4(\GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0 [5]),
        .O(\s_axi_rdata_i[31]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hA2A0020082800200)) 
    \s_axi_rdata_i[3]_i_1 
       (.I0(\s_axi_rdata_i[31]_i_2_n_0 ),
        .I1(\GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0 [3]),
        .I2(\GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0 [0]),
        .I3(\s_axi_rdata_i_reg[3] ),
        .I4(\s_axi_rdata_i[23]_i_3_n_0 ),
        .I5(\s_axi_rdata_i_reg[23] [1]),
        .O(D[3]));
  LUT6 #(
    .INIT(64'hA2A0020082800200)) 
    \s_axi_rdata_i[4]_i_1 
       (.I0(\s_axi_rdata_i[31]_i_2_n_0 ),
        .I1(\GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0 [3]),
        .I2(\GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0 [0]),
        .I3(\s_axi_rdata_i_reg[4] ),
        .I4(\s_axi_rdata_i[23]_i_3_n_0 ),
        .I5(\s_axi_rdata_i_reg[23] [2]),
        .O(D[4]));
  LUT6 #(
    .INIT(64'hA0A2000280820002)) 
    \s_axi_rdata_i[5]_i_1 
       (.I0(\s_axi_rdata_i[31]_i_2_n_0 ),
        .I1(\GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0 [3]),
        .I2(\GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0 [0]),
        .I3(\s_axi_rdata_i_reg[5] ),
        .I4(\s_axi_rdata_i[23]_i_3_n_0 ),
        .I5(\s_axi_rdata_i_reg[23] [3]),
        .O(D[5]));
  LUT6 #(
    .INIT(64'hA0A2000280820002)) 
    \s_axi_rdata_i[6]_i_1 
       (.I0(\s_axi_rdata_i[31]_i_2_n_0 ),
        .I1(\GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0 [3]),
        .I2(\GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0 [0]),
        .I3(\s_axi_rdata_i_reg[6] ),
        .I4(\s_axi_rdata_i[23]_i_3_n_0 ),
        .I5(\s_axi_rdata_i_reg[23] [4]),
        .O(D[6]));
  LUT6 #(
    .INIT(64'hA0A2000280820002)) 
    \s_axi_rdata_i[7]_i_1 
       (.I0(\s_axi_rdata_i[31]_i_2_n_0 ),
        .I1(\GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0 [3]),
        .I2(\GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0 [0]),
        .I3(\s_axi_rdata_i_reg[7] ),
        .I4(\s_axi_rdata_i[23]_i_3_n_0 ),
        .I5(\s_axi_rdata_i_reg[23] [5]),
        .O(D[7]));
  LUT6 #(
    .INIT(64'hA0A2000280820002)) 
    \s_axi_rdata_i[8]_i_1 
       (.I0(\s_axi_rdata_i[31]_i_2_n_0 ),
        .I1(\GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0 [3]),
        .I2(\GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0 [0]),
        .I3(\s_axi_rdata_i_reg[8] ),
        .I4(\s_axi_rdata_i[23]_i_3_n_0 ),
        .I5(\s_axi_rdata_i_reg[23] [6]),
        .O(D[8]));
  LUT6 #(
    .INIT(64'hA0A2000280820002)) 
    \s_axi_rdata_i[9]_i_1 
       (.I0(\s_axi_rdata_i[31]_i_2_n_0 ),
        .I1(\GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0 [3]),
        .I2(\GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0 [0]),
        .I3(\s_axi_rdata_i_reg[9] ),
        .I4(\s_axi_rdata_i[23]_i_3_n_0 ),
        .I5(\s_axi_rdata_i_reg[23] [7]),
        .O(D[9]));
  LUT6 #(
    .INIT(64'hAAAAABAAAAAAAAAA)) 
    s_axi_wready_INST_0
       (.I0(ip2bus_wrack),
        .I1(s_axi_arready[0]),
        .I2(s_axi_arready[1]),
        .I3(s_axi_arready[3]),
        .I4(s_axi_arready[2]),
        .I5(s_axi_awready),
        .O(ip2bus_wrack_reg));
endmodule

(* C_ADDR_WIDTH = "32" *) (* C_ASYNC_INTR = "32'b11111111000000001111111111111111" *) (* C_CASCADE_MASTER = "0" *) 
(* C_DISABLE_SYNCHRONIZERS = "0" *) (* C_ENABLE_ASYNC = "0" *) (* C_EN_CASCADE_MODE = "0" *) 
(* C_FAMILY = "zynquplus" *) (* C_HAS_CIE = "1" *) (* C_HAS_FAST = "0" *) 
(* C_HAS_ILR = "0" *) (* C_HAS_IPR = "1" *) (* C_HAS_IVR = "1" *) 
(* C_HAS_SIE = "1" *) (* C_INSTANCE = "zynq_bd_IRQ0_INTR_CTRL_0" *) (* C_IRQ_ACTIVE = "1'b1" *) 
(* C_IRQ_IS_LEVEL = "1" *) (* C_IVAR_RESET_VALUE = "64'b0000000000000000000000000000000000000000000000000000000000010000" *) (* C_KIND_OF_EDGE = "32'b11111111111111111111111111111111" *) 
(* C_KIND_OF_INTR = "32'b11111111111111111111111111111111" *) (* C_KIND_OF_LVL = "32'b11111111111111111111111111111111" *) (* C_MB_CLK_NOT_CONNECTED = "1" *) 
(* C_NUM_INTR_INPUTS = "24" *) (* C_NUM_SW_INTR = "0" *) (* C_NUM_SYNC_FF = "2" *) 
(* C_S_AXI_ADDR_WIDTH = "9" *) (* C_S_AXI_DATA_WIDTH = "32" *) (* ORIG_REF_NAME = "axi_intc" *) 
(* hdl = "VHDL" *) (* imp_netlist = "TRUE" *) (* ip_group = "LOGICORE" *) 
(* iptype = "PERIPHERAL" *) (* run_ngcbuild = "TRUE" *) (* style = "HDL" *) 
module zynq_bd_IRQ0_INTR_CTRL_0_axi_intc
   (s_axi_aclk,
    s_axi_aresetn,
    s_axi_awaddr,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_araddr,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rvalid,
    s_axi_rready,
    intr,
    processor_clk,
    processor_rst,
    irq,
    processor_ack,
    interrupt_address,
    irq_in,
    interrupt_address_in,
    processor_ack_out);
  (* sigis = "Clk" *) input s_axi_aclk;
  (* sigis = "Rstn" *) input s_axi_aresetn;
  input [8:0]s_axi_awaddr;
  input s_axi_awvalid;
  output s_axi_awready;
  input [31:0]s_axi_wdata;
  input [3:0]s_axi_wstrb;
  input s_axi_wvalid;
  output s_axi_wready;
  output [1:0]s_axi_bresp;
  output s_axi_bvalid;
  input s_axi_bready;
  input [8:0]s_axi_araddr;
  input s_axi_arvalid;
  output s_axi_arready;
  output [31:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rvalid;
  input s_axi_rready;
  (* BUFFER_TYPE = "none" *) input [23:0]intr;
  input processor_clk;
  input processor_rst;
  output irq;
  input [1:0]processor_ack;
  output [31:0]interrupt_address;
  input irq_in;
  input [31:0]interrupt_address_in;
  output [1:0]processor_ack_out;

  wire \<const0> ;
  wire AXI_LITE_IPIF_I_n_10;
  wire AXI_LITE_IPIF_I_n_11;
  wire AXI_LITE_IPIF_I_n_12;
  wire AXI_LITE_IPIF_I_n_13;
  wire AXI_LITE_IPIF_I_n_14;
  wire AXI_LITE_IPIF_I_n_15;
  wire AXI_LITE_IPIF_I_n_16;
  wire AXI_LITE_IPIF_I_n_17;
  wire AXI_LITE_IPIF_I_n_18;
  wire AXI_LITE_IPIF_I_n_19;
  wire AXI_LITE_IPIF_I_n_20;
  wire AXI_LITE_IPIF_I_n_21;
  wire AXI_LITE_IPIF_I_n_22;
  wire AXI_LITE_IPIF_I_n_23;
  wire AXI_LITE_IPIF_I_n_24;
  wire AXI_LITE_IPIF_I_n_25;
  wire AXI_LITE_IPIF_I_n_26;
  wire AXI_LITE_IPIF_I_n_27;
  wire AXI_LITE_IPIF_I_n_28;
  wire AXI_LITE_IPIF_I_n_5;
  wire AXI_LITE_IPIF_I_n_6;
  wire AXI_LITE_IPIF_I_n_62;
  wire AXI_LITE_IPIF_I_n_63;
  wire AXI_LITE_IPIF_I_n_64;
  wire AXI_LITE_IPIF_I_n_65;
  wire AXI_LITE_IPIF_I_n_66;
  wire AXI_LITE_IPIF_I_n_67;
  wire AXI_LITE_IPIF_I_n_68;
  wire AXI_LITE_IPIF_I_n_69;
  wire AXI_LITE_IPIF_I_n_7;
  wire AXI_LITE_IPIF_I_n_70;
  wire AXI_LITE_IPIF_I_n_71;
  wire AXI_LITE_IPIF_I_n_72;
  wire AXI_LITE_IPIF_I_n_73;
  wire AXI_LITE_IPIF_I_n_74;
  wire AXI_LITE_IPIF_I_n_75;
  wire AXI_LITE_IPIF_I_n_76;
  wire AXI_LITE_IPIF_I_n_77;
  wire AXI_LITE_IPIF_I_n_78;
  wire AXI_LITE_IPIF_I_n_79;
  wire AXI_LITE_IPIF_I_n_8;
  wire AXI_LITE_IPIF_I_n_80;
  wire AXI_LITE_IPIF_I_n_81;
  wire AXI_LITE_IPIF_I_n_82;
  wire AXI_LITE_IPIF_I_n_83;
  wire AXI_LITE_IPIF_I_n_84;
  wire AXI_LITE_IPIF_I_n_85;
  wire AXI_LITE_IPIF_I_n_86;
  wire AXI_LITE_IPIF_I_n_87;
  wire AXI_LITE_IPIF_I_n_9;
  wire INTC_CORE_I_n_0;
  wire INTC_CORE_I_n_2;
  wire INTC_CORE_I_n_26;
  wire INTC_CORE_I_n_52;
  wire INTC_CORE_I_n_53;
  wire INTC_CORE_I_n_54;
  wire INTC_CORE_I_n_55;
  wire INTC_CORE_I_n_56;
  wire INTC_CORE_I_n_57;
  wire INTC_CORE_I_n_58;
  wire INTC_CORE_I_n_59;
  wire INTC_CORE_I_n_60;
  wire INTC_CORE_I_n_61;
  wire INTC_CORE_I_n_62;
  wire INTC_CORE_I_n_63;
  wire INTC_CORE_I_n_64;
  wire INTC_CORE_I_n_65;
  wire INTC_CORE_I_n_66;
  wire INTC_CORE_I_n_67;
  wire INTC_CORE_I_n_68;
  wire INTC_CORE_I_n_69;
  wire INTC_CORE_I_n_70;
  wire INTC_CORE_I_n_71;
  wire INTC_CORE_I_n_72;
  wire INTC_CORE_I_n_73;
  wire INTC_CORE_I_n_74;
  wire INTC_CORE_I_n_75;
  wire INTC_CORE_I_n_76;
  wire \I_SLAVE_ATTACHMENT/I_DECODER/Bus_RNW_reg ;
  wire \I_SLAVE_ATTACHMENT/I_DECODER/p_18_in ;
  wire Or128_vec2stdlogic;
  wire Or128_vec2stdlogic19_out;
  wire [4:3]bus2ip_addr;
  wire [16:16]bus2ip_wrce;
  wire iar;
  wire iar11_out;
  wire iar13_out;
  wire iar15_out;
  wire iar17_out;
  wire iar19_out;
  wire iar1_out;
  wire iar21_out;
  wire iar23_out;
  wire iar25_out;
  wire iar27_out;
  wire iar29_out;
  wire iar31_out;
  wire iar33_out;
  wire iar35_out;
  wire iar37_out;
  wire iar39_out;
  wire iar3_out;
  wire iar41_out;
  wire iar43_out;
  wire iar44_out;
  wire iar5_out;
  wire iar7_out;
  wire iar9_out;
  wire [23:0]intr;
  wire ip2bus_rdack;
  wire ip2bus_rdack_int_d1;
  wire ip2bus_rdack_prev2;
  wire ip2bus_wrack;
  wire ip2bus_wrack_int_d1;
  wire ip2bus_wrack_prev2;
  wire [23:0]ipr;
  wire irq;
  wire mer;
  wire p_0_in;
  wire p_0_in25_in;
  wire p_0_in26_in;
  wire p_0_in27_in;
  wire p_0_in28_in;
  wire p_0_in29_in;
  wire p_0_in30_in;
  wire p_0_in31_in;
  wire p_0_in32_in;
  wire p_0_in33_in;
  wire p_0_in34_in;
  wire p_0_in35_in;
  wire p_0_in36_in;
  wire p_0_in37_in;
  wire p_0_in38_in;
  wire p_0_in39_in;
  wire p_0_in40_in;
  wire p_0_in41_in;
  wire p_0_in42_in;
  wire p_0_in43_in;
  wire p_0_in44_in;
  wire p_0_in45_in;
  wire p_0_in46_in;
  wire p_0_in47_in;
  wire p_0_in49_in;
  wire p_0_in50_in;
  wire p_0_in51_in;
  wire p_0_in52_in;
  wire p_0_in53_in;
  wire p_0_in54_in;
  wire p_0_in55_in;
  wire p_0_in56_in;
  wire p_0_in57_in;
  wire p_0_in58_in;
  wire p_0_in59_in;
  wire p_0_in60_in;
  wire p_0_in61_in;
  wire p_0_in62_in;
  wire p_0_in63_in;
  wire p_0_in64_in;
  wire p_0_in65_in;
  wire p_0_in66_in;
  wire p_0_in67_in;
  wire p_0_in68_in;
  wire p_0_in69_in;
  wire p_0_in70_in;
  wire p_0_in71_in;
  wire s_axi_aclk;
  wire [8:0]s_axi_araddr;
  wire s_axi_aresetn;
  wire s_axi_arready;
  wire s_axi_arvalid;
  wire [8:0]s_axi_awaddr;
  wire s_axi_awready;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire [1:1]\^s_axi_bresp ;
  wire s_axi_bvalid;
  wire [30:0]\^s_axi_rdata ;
  wire s_axi_rready;
  wire [1:1]\^s_axi_rresp ;
  wire s_axi_rvalid;
  wire [31:0]s_axi_wdata;
  wire [3:0]s_axi_wstrb;
  wire s_axi_wvalid;

  assign interrupt_address[31] = \<const0> ;
  assign interrupt_address[30] = \<const0> ;
  assign interrupt_address[29] = \<const0> ;
  assign interrupt_address[28] = \<const0> ;
  assign interrupt_address[27] = \<const0> ;
  assign interrupt_address[26] = \<const0> ;
  assign interrupt_address[25] = \<const0> ;
  assign interrupt_address[24] = \<const0> ;
  assign interrupt_address[23] = \<const0> ;
  assign interrupt_address[22] = \<const0> ;
  assign interrupt_address[21] = \<const0> ;
  assign interrupt_address[20] = \<const0> ;
  assign interrupt_address[19] = \<const0> ;
  assign interrupt_address[18] = \<const0> ;
  assign interrupt_address[17] = \<const0> ;
  assign interrupt_address[16] = \<const0> ;
  assign interrupt_address[15] = \<const0> ;
  assign interrupt_address[14] = \<const0> ;
  assign interrupt_address[13] = \<const0> ;
  assign interrupt_address[12] = \<const0> ;
  assign interrupt_address[11] = \<const0> ;
  assign interrupt_address[10] = \<const0> ;
  assign interrupt_address[9] = \<const0> ;
  assign interrupt_address[8] = \<const0> ;
  assign interrupt_address[7] = \<const0> ;
  assign interrupt_address[6] = \<const0> ;
  assign interrupt_address[5] = \<const0> ;
  assign interrupt_address[4] = \<const0> ;
  assign interrupt_address[3] = \<const0> ;
  assign interrupt_address[2] = \<const0> ;
  assign interrupt_address[1] = \<const0> ;
  assign interrupt_address[0] = \<const0> ;
  assign processor_ack_out[1] = \<const0> ;
  assign processor_ack_out[0] = \<const0> ;
  assign s_axi_bresp[1] = \^s_axi_bresp [1];
  assign s_axi_bresp[0] = \<const0> ;
  assign s_axi_rdata[31] = \^s_axi_rdata [30];
  assign s_axi_rdata[30] = \^s_axi_rdata [30];
  assign s_axi_rdata[29] = \^s_axi_rdata [30];
  assign s_axi_rdata[28] = \^s_axi_rdata [30];
  assign s_axi_rdata[27] = \^s_axi_rdata [30];
  assign s_axi_rdata[26] = \^s_axi_rdata [30];
  assign s_axi_rdata[25] = \^s_axi_rdata [30];
  assign s_axi_rdata[24] = \^s_axi_rdata [30];
  assign s_axi_rdata[23:0] = \^s_axi_rdata [23:0];
  assign s_axi_rresp[1] = \^s_axi_rresp [1];
  assign s_axi_rresp[0] = \<const0> ;
  assign s_axi_wready = s_axi_awready;
  zynq_bd_IRQ0_INTR_CTRL_0_axi_lite_ipif AXI_LITE_IPIF_I
       (.Bus_RNW_reg(\I_SLAVE_ATTACHMENT/I_DECODER/Bus_RNW_reg ),
        .Bus_RNW_reg_reg(AXI_LITE_IPIF_I_n_5),
        .Bus_RNW_reg_reg_0(AXI_LITE_IPIF_I_n_6),
        .Bus_RNW_reg_reg_1(AXI_LITE_IPIF_I_n_7),
        .Bus_RNW_reg_reg_10(AXI_LITE_IPIF_I_n_16),
        .Bus_RNW_reg_reg_11(AXI_LITE_IPIF_I_n_17),
        .Bus_RNW_reg_reg_12(AXI_LITE_IPIF_I_n_18),
        .Bus_RNW_reg_reg_13(AXI_LITE_IPIF_I_n_19),
        .Bus_RNW_reg_reg_14(AXI_LITE_IPIF_I_n_20),
        .Bus_RNW_reg_reg_15(AXI_LITE_IPIF_I_n_21),
        .Bus_RNW_reg_reg_16(AXI_LITE_IPIF_I_n_22),
        .Bus_RNW_reg_reg_17(AXI_LITE_IPIF_I_n_23),
        .Bus_RNW_reg_reg_18(AXI_LITE_IPIF_I_n_24),
        .Bus_RNW_reg_reg_19(AXI_LITE_IPIF_I_n_25),
        .Bus_RNW_reg_reg_2(AXI_LITE_IPIF_I_n_8),
        .Bus_RNW_reg_reg_20(AXI_LITE_IPIF_I_n_26),
        .Bus_RNW_reg_reg_21(AXI_LITE_IPIF_I_n_27),
        .Bus_RNW_reg_reg_22(AXI_LITE_IPIF_I_n_28),
        .Bus_RNW_reg_reg_23(AXI_LITE_IPIF_I_n_64),
        .Bus_RNW_reg_reg_24(AXI_LITE_IPIF_I_n_65),
        .Bus_RNW_reg_reg_25(AXI_LITE_IPIF_I_n_66),
        .Bus_RNW_reg_reg_26(AXI_LITE_IPIF_I_n_67),
        .Bus_RNW_reg_reg_27(AXI_LITE_IPIF_I_n_68),
        .Bus_RNW_reg_reg_28(AXI_LITE_IPIF_I_n_69),
        .Bus_RNW_reg_reg_29(AXI_LITE_IPIF_I_n_70),
        .Bus_RNW_reg_reg_3(AXI_LITE_IPIF_I_n_9),
        .Bus_RNW_reg_reg_30(AXI_LITE_IPIF_I_n_71),
        .Bus_RNW_reg_reg_31(AXI_LITE_IPIF_I_n_72),
        .Bus_RNW_reg_reg_32(AXI_LITE_IPIF_I_n_73),
        .Bus_RNW_reg_reg_33(AXI_LITE_IPIF_I_n_74),
        .Bus_RNW_reg_reg_34(AXI_LITE_IPIF_I_n_75),
        .Bus_RNW_reg_reg_35(AXI_LITE_IPIF_I_n_76),
        .Bus_RNW_reg_reg_36(AXI_LITE_IPIF_I_n_77),
        .Bus_RNW_reg_reg_37(AXI_LITE_IPIF_I_n_78),
        .Bus_RNW_reg_reg_38(AXI_LITE_IPIF_I_n_79),
        .Bus_RNW_reg_reg_39(AXI_LITE_IPIF_I_n_80),
        .Bus_RNW_reg_reg_4(AXI_LITE_IPIF_I_n_10),
        .Bus_RNW_reg_reg_40(AXI_LITE_IPIF_I_n_81),
        .Bus_RNW_reg_reg_41(AXI_LITE_IPIF_I_n_82),
        .Bus_RNW_reg_reg_42(AXI_LITE_IPIF_I_n_83),
        .Bus_RNW_reg_reg_43(AXI_LITE_IPIF_I_n_84),
        .Bus_RNW_reg_reg_44(AXI_LITE_IPIF_I_n_85),
        .Bus_RNW_reg_reg_45(AXI_LITE_IPIF_I_n_86),
        .Bus_RNW_reg_reg_46(AXI_LITE_IPIF_I_n_87),
        .Bus_RNW_reg_reg_5(AXI_LITE_IPIF_I_n_11),
        .Bus_RNW_reg_reg_6(AXI_LITE_IPIF_I_n_12),
        .Bus_RNW_reg_reg_7(AXI_LITE_IPIF_I_n_13),
        .Bus_RNW_reg_reg_8(AXI_LITE_IPIF_I_n_14),
        .Bus_RNW_reg_reg_9(AXI_LITE_IPIF_I_n_15),
        .\CIE_GEN.CIE_BIT_GEN[0].cie_reg[0] (INTC_CORE_I_n_26),
        .Or128_vec2stdlogic(Or128_vec2stdlogic),
        .Or128_vec2stdlogic19_out(Or128_vec2stdlogic19_out),
        .Q(bus2ip_addr),
        .\SIE_GEN.SIE_BIT_GEN[0].sie_reg[0] (INTC_CORE_I_n_2),
        .SR(INTC_CORE_I_n_0),
        .bus2ip_wrce(bus2ip_wrce),
        .iar(iar),
        .iar11_out(iar11_out),
        .iar13_out(iar13_out),
        .iar15_out(iar15_out),
        .iar17_out(iar17_out),
        .iar19_out(iar19_out),
        .iar1_out(iar1_out),
        .iar21_out(iar21_out),
        .iar23_out(iar23_out),
        .iar25_out(iar25_out),
        .iar27_out(iar27_out),
        .iar29_out(iar29_out),
        .iar31_out(iar31_out),
        .iar33_out(iar33_out),
        .iar35_out(iar35_out),
        .iar37_out(iar37_out),
        .iar39_out(iar39_out),
        .iar3_out(iar3_out),
        .iar41_out(iar41_out),
        .iar43_out(iar43_out),
        .iar44_out(iar44_out),
        .iar5_out(iar5_out),
        .iar7_out(iar7_out),
        .iar9_out(iar9_out),
        .ip2bus_rdack(ip2bus_rdack),
        .ip2bus_rdack_int_d1(ip2bus_rdack_int_d1),
        .ip2bus_rdack_prev2(ip2bus_rdack_prev2),
        .ip2bus_rdack_reg(s_axi_arready),
        .ip2bus_wrack(ip2bus_wrack),
        .ip2bus_wrack_int_d1(ip2bus_wrack_int_d1),
        .ip2bus_wrack_prev2(ip2bus_wrack_prev2),
        .ip2bus_wrack_reg(s_axi_awready),
        .mer(mer),
        .p_0_in(p_0_in),
        .p_0_in25_in(p_0_in25_in),
        .p_0_in26_in(p_0_in26_in),
        .p_0_in27_in(p_0_in27_in),
        .p_0_in28_in(p_0_in28_in),
        .p_0_in29_in(p_0_in29_in),
        .p_0_in30_in(p_0_in30_in),
        .p_0_in31_in(p_0_in31_in),
        .p_0_in32_in(p_0_in32_in),
        .p_0_in33_in(p_0_in33_in),
        .p_0_in34_in(p_0_in34_in),
        .p_0_in35_in(p_0_in35_in),
        .p_0_in36_in(p_0_in36_in),
        .p_0_in37_in(p_0_in37_in),
        .p_0_in38_in(p_0_in38_in),
        .p_0_in39_in(p_0_in39_in),
        .p_0_in40_in(p_0_in40_in),
        .p_0_in41_in(p_0_in41_in),
        .p_0_in42_in(p_0_in42_in),
        .p_0_in43_in(p_0_in43_in),
        .p_0_in44_in(p_0_in44_in),
        .p_0_in45_in(p_0_in45_in),
        .p_0_in46_in(p_0_in46_in),
        .p_0_in47_in(p_0_in47_in),
        .p_0_in49_in(p_0_in49_in),
        .p_0_in50_in(p_0_in50_in),
        .p_0_in51_in(p_0_in51_in),
        .p_0_in52_in(p_0_in52_in),
        .p_0_in53_in(p_0_in53_in),
        .p_0_in54_in(p_0_in54_in),
        .p_0_in55_in(p_0_in55_in),
        .p_0_in56_in(p_0_in56_in),
        .p_0_in57_in(p_0_in57_in),
        .p_0_in58_in(p_0_in58_in),
        .p_0_in59_in(p_0_in59_in),
        .p_0_in60_in(p_0_in60_in),
        .p_0_in61_in(p_0_in61_in),
        .p_0_in62_in(p_0_in62_in),
        .p_0_in63_in(p_0_in63_in),
        .p_0_in64_in(p_0_in64_in),
        .p_0_in65_in(p_0_in65_in),
        .p_0_in66_in(p_0_in66_in),
        .p_0_in67_in(p_0_in67_in),
        .p_0_in68_in(p_0_in68_in),
        .p_0_in69_in(p_0_in69_in),
        .p_0_in70_in(p_0_in70_in),
        .p_0_in71_in(p_0_in71_in),
        .p_18_in(\I_SLAVE_ATTACHMENT/I_DECODER/p_18_in ),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_araddr(s_axi_araddr[8:2]),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr(s_axi_awaddr[8:2]),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bready(s_axi_bready),
        .s_axi_bresp(\^s_axi_bresp ),
        .s_axi_bvalid_i_reg(s_axi_bvalid),
        .s_axi_rdata({\^s_axi_rdata [30],\^s_axi_rdata [23:0]}),
        .\s_axi_rdata_i_reg[0] (INTC_CORE_I_n_57),
        .\s_axi_rdata_i_reg[10] (INTC_CORE_I_n_71),
        .\s_axi_rdata_i_reg[11] (INTC_CORE_I_n_70),
        .\s_axi_rdata_i_reg[12] (INTC_CORE_I_n_69),
        .\s_axi_rdata_i_reg[13] (INTC_CORE_I_n_68),
        .\s_axi_rdata_i_reg[14] (INTC_CORE_I_n_67),
        .\s_axi_rdata_i_reg[15] (INTC_CORE_I_n_66),
        .\s_axi_rdata_i_reg[16] (INTC_CORE_I_n_65),
        .\s_axi_rdata_i_reg[17] (INTC_CORE_I_n_64),
        .\s_axi_rdata_i_reg[18] (INTC_CORE_I_n_63),
        .\s_axi_rdata_i_reg[19] (INTC_CORE_I_n_62),
        .\s_axi_rdata_i_reg[1] (INTC_CORE_I_n_56),
        .\s_axi_rdata_i_reg[20] (INTC_CORE_I_n_61),
        .\s_axi_rdata_i_reg[21] (INTC_CORE_I_n_60),
        .\s_axi_rdata_i_reg[22] (INTC_CORE_I_n_59),
        .\s_axi_rdata_i_reg[23] (ipr),
        .\s_axi_rdata_i_reg[23]_0 (INTC_CORE_I_n_58),
        .\s_axi_rdata_i_reg[2] (INTC_CORE_I_n_55),
        .\s_axi_rdata_i_reg[31] (INTC_CORE_I_n_52),
        .\s_axi_rdata_i_reg[3] (INTC_CORE_I_n_54),
        .\s_axi_rdata_i_reg[4] (INTC_CORE_I_n_53),
        .\s_axi_rdata_i_reg[5] (INTC_CORE_I_n_76),
        .\s_axi_rdata_i_reg[6] (INTC_CORE_I_n_75),
        .\s_axi_rdata_i_reg[7] (INTC_CORE_I_n_74),
        .\s_axi_rdata_i_reg[8] (INTC_CORE_I_n_73),
        .\s_axi_rdata_i_reg[9] (INTC_CORE_I_n_72),
        .s_axi_rready(s_axi_rready),
        .s_axi_rresp(\^s_axi_rresp ),
        .s_axi_rvalid_i_reg(s_axi_rvalid),
        .s_axi_wdata(s_axi_wdata[23:0]),
        .s_axi_wdata_0_sp_1(AXI_LITE_IPIF_I_n_63),
        .s_axi_wdata_1_sp_1(AXI_LITE_IPIF_I_n_62),
        .s_axi_wstrb(s_axi_wstrb),
        .s_axi_wvalid(s_axi_wvalid));
  GND GND
       (.G(\<const0> ));
  zynq_bd_IRQ0_INTR_CTRL_0_intc_core INTC_CORE_I
       (.Bus_RNW_reg(\I_SLAVE_ATTACHMENT/I_DECODER/Bus_RNW_reg ),
        .\CIE_GEN.CIE_BIT_GEN[0].cie_reg[0]_0 (INTC_CORE_I_n_26),
        .\CIE_GEN.CIE_BIT_GEN[0].cie_reg[0]_1 (AXI_LITE_IPIF_I_n_87),
        .\CIE_GEN.CIE_BIT_GEN[10].cie_reg[10]_0 (AXI_LITE_IPIF_I_n_77),
        .\CIE_GEN.CIE_BIT_GEN[11].cie_reg[11]_0 (AXI_LITE_IPIF_I_n_76),
        .\CIE_GEN.CIE_BIT_GEN[12].cie_reg[12]_0 (AXI_LITE_IPIF_I_n_75),
        .\CIE_GEN.CIE_BIT_GEN[13].cie_reg[13]_0 (AXI_LITE_IPIF_I_n_74),
        .\CIE_GEN.CIE_BIT_GEN[14].cie_reg[14]_0 (AXI_LITE_IPIF_I_n_73),
        .\CIE_GEN.CIE_BIT_GEN[15].cie_reg[15]_0 (AXI_LITE_IPIF_I_n_72),
        .\CIE_GEN.CIE_BIT_GEN[16].cie_reg[16]_0 (AXI_LITE_IPIF_I_n_71),
        .\CIE_GEN.CIE_BIT_GEN[17].cie_reg[17]_0 (AXI_LITE_IPIF_I_n_70),
        .\CIE_GEN.CIE_BIT_GEN[18].cie_reg[18]_0 (AXI_LITE_IPIF_I_n_69),
        .\CIE_GEN.CIE_BIT_GEN[19].cie_reg[19]_0 (AXI_LITE_IPIF_I_n_68),
        .\CIE_GEN.CIE_BIT_GEN[1].cie_reg[1]_0 (AXI_LITE_IPIF_I_n_86),
        .\CIE_GEN.CIE_BIT_GEN[20].cie_reg[20]_0 (AXI_LITE_IPIF_I_n_67),
        .\CIE_GEN.CIE_BIT_GEN[21].cie_reg[21]_0 (AXI_LITE_IPIF_I_n_66),
        .\CIE_GEN.CIE_BIT_GEN[22].cie_reg[22]_0 (AXI_LITE_IPIF_I_n_65),
        .\CIE_GEN.CIE_BIT_GEN[23].cie_reg[23]_0 (AXI_LITE_IPIF_I_n_64),
        .\CIE_GEN.CIE_BIT_GEN[2].cie_reg[2]_0 (AXI_LITE_IPIF_I_n_85),
        .\CIE_GEN.CIE_BIT_GEN[3].cie_reg[3]_0 (AXI_LITE_IPIF_I_n_84),
        .\CIE_GEN.CIE_BIT_GEN[4].cie_reg[4]_0 (AXI_LITE_IPIF_I_n_83),
        .\CIE_GEN.CIE_BIT_GEN[5].cie_reg[5]_0 (AXI_LITE_IPIF_I_n_82),
        .\CIE_GEN.CIE_BIT_GEN[6].cie_reg[6]_0 (AXI_LITE_IPIF_I_n_81),
        .\CIE_GEN.CIE_BIT_GEN[7].cie_reg[7]_0 (AXI_LITE_IPIF_I_n_80),
        .\CIE_GEN.CIE_BIT_GEN[8].cie_reg[8]_0 (AXI_LITE_IPIF_I_n_79),
        .\CIE_GEN.CIE_BIT_GEN[9].cie_reg[9]_0 (AXI_LITE_IPIF_I_n_78),
        .\IPR_GEN.ipr_reg[23]_0 (ipr),
        .\IVR_GEN.ivr_reg[0]_0 (INTC_CORE_I_n_52),
        .\IVR_GEN.ivr_reg[0]_1 (INTC_CORE_I_n_57),
        .\IVR_GEN.ivr_reg[1]_0 (INTC_CORE_I_n_56),
        .\IVR_GEN.ivr_reg[2]_0 (INTC_CORE_I_n_55),
        .\IVR_GEN.ivr_reg[3]_0 (INTC_CORE_I_n_54),
        .\IVR_GEN.ivr_reg[4]_0 (INTC_CORE_I_n_53),
        .Q(bus2ip_addr),
        .\SIE_GEN.SIE_BIT_GEN[0].sie_reg[0]_0 (INTC_CORE_I_n_2),
        .\SIE_GEN.SIE_BIT_GEN[0].sie_reg[0]_1 (AXI_LITE_IPIF_I_n_5),
        .\SIE_GEN.SIE_BIT_GEN[10].sie_reg[10]_0 (AXI_LITE_IPIF_I_n_15),
        .\SIE_GEN.SIE_BIT_GEN[11].sie_reg[11]_0 (AXI_LITE_IPIF_I_n_16),
        .\SIE_GEN.SIE_BIT_GEN[12].sie_reg[12]_0 (AXI_LITE_IPIF_I_n_17),
        .\SIE_GEN.SIE_BIT_GEN[13].sie_reg[13]_0 (AXI_LITE_IPIF_I_n_18),
        .\SIE_GEN.SIE_BIT_GEN[14].sie_reg[14]_0 (AXI_LITE_IPIF_I_n_19),
        .\SIE_GEN.SIE_BIT_GEN[15].sie_reg[15]_0 (AXI_LITE_IPIF_I_n_20),
        .\SIE_GEN.SIE_BIT_GEN[16].sie_reg[16]_0 (AXI_LITE_IPIF_I_n_21),
        .\SIE_GEN.SIE_BIT_GEN[17].sie_reg[17]_0 (AXI_LITE_IPIF_I_n_22),
        .\SIE_GEN.SIE_BIT_GEN[18].sie_reg[18]_0 (AXI_LITE_IPIF_I_n_23),
        .\SIE_GEN.SIE_BIT_GEN[19].sie_reg[19]_0 (AXI_LITE_IPIF_I_n_24),
        .\SIE_GEN.SIE_BIT_GEN[1].sie_reg[1]_0 (AXI_LITE_IPIF_I_n_6),
        .\SIE_GEN.SIE_BIT_GEN[20].sie_reg[20]_0 (AXI_LITE_IPIF_I_n_25),
        .\SIE_GEN.SIE_BIT_GEN[21].sie_reg[21]_0 (AXI_LITE_IPIF_I_n_26),
        .\SIE_GEN.SIE_BIT_GEN[22].sie_reg[22]_0 (AXI_LITE_IPIF_I_n_27),
        .\SIE_GEN.SIE_BIT_GEN[23].sie_reg[23]_0 (AXI_LITE_IPIF_I_n_28),
        .\SIE_GEN.SIE_BIT_GEN[2].sie_reg[2]_0 (AXI_LITE_IPIF_I_n_7),
        .\SIE_GEN.SIE_BIT_GEN[3].sie_reg[3]_0 (AXI_LITE_IPIF_I_n_8),
        .\SIE_GEN.SIE_BIT_GEN[4].sie_reg[4]_0 (AXI_LITE_IPIF_I_n_9),
        .\SIE_GEN.SIE_BIT_GEN[5].sie_reg[5]_0 (AXI_LITE_IPIF_I_n_10),
        .\SIE_GEN.SIE_BIT_GEN[6].sie_reg[6]_0 (AXI_LITE_IPIF_I_n_11),
        .\SIE_GEN.SIE_BIT_GEN[7].sie_reg[7]_0 (AXI_LITE_IPIF_I_n_12),
        .\SIE_GEN.SIE_BIT_GEN[8].sie_reg[8]_0 (AXI_LITE_IPIF_I_n_13),
        .\SIE_GEN.SIE_BIT_GEN[9].sie_reg[9]_0 (AXI_LITE_IPIF_I_n_14),
        .SR(INTC_CORE_I_n_0),
        .\bus2ip_addr_i_reg[3] (INTC_CORE_I_n_58),
        .\bus2ip_addr_i_reg[3]_0 (INTC_CORE_I_n_59),
        .\bus2ip_addr_i_reg[3]_1 (INTC_CORE_I_n_60),
        .\bus2ip_addr_i_reg[3]_10 (INTC_CORE_I_n_69),
        .\bus2ip_addr_i_reg[3]_11 (INTC_CORE_I_n_70),
        .\bus2ip_addr_i_reg[3]_12 (INTC_CORE_I_n_71),
        .\bus2ip_addr_i_reg[3]_13 (INTC_CORE_I_n_72),
        .\bus2ip_addr_i_reg[3]_14 (INTC_CORE_I_n_73),
        .\bus2ip_addr_i_reg[3]_15 (INTC_CORE_I_n_74),
        .\bus2ip_addr_i_reg[3]_16 (INTC_CORE_I_n_75),
        .\bus2ip_addr_i_reg[3]_17 (INTC_CORE_I_n_76),
        .\bus2ip_addr_i_reg[3]_2 (INTC_CORE_I_n_61),
        .\bus2ip_addr_i_reg[3]_3 (INTC_CORE_I_n_62),
        .\bus2ip_addr_i_reg[3]_4 (INTC_CORE_I_n_63),
        .\bus2ip_addr_i_reg[3]_5 (INTC_CORE_I_n_64),
        .\bus2ip_addr_i_reg[3]_6 (INTC_CORE_I_n_65),
        .\bus2ip_addr_i_reg[3]_7 (INTC_CORE_I_n_66),
        .\bus2ip_addr_i_reg[3]_8 (INTC_CORE_I_n_67),
        .\bus2ip_addr_i_reg[3]_9 (INTC_CORE_I_n_68),
        .bus2ip_wrce(bus2ip_wrce),
        .iar(iar),
        .iar11_out(iar11_out),
        .iar13_out(iar13_out),
        .iar15_out(iar15_out),
        .iar17_out(iar17_out),
        .iar19_out(iar19_out),
        .iar1_out(iar1_out),
        .iar21_out(iar21_out),
        .iar23_out(iar23_out),
        .iar25_out(iar25_out),
        .iar27_out(iar27_out),
        .iar29_out(iar29_out),
        .iar31_out(iar31_out),
        .iar33_out(iar33_out),
        .iar35_out(iar35_out),
        .iar37_out(iar37_out),
        .iar39_out(iar39_out),
        .iar3_out(iar3_out),
        .iar41_out(iar41_out),
        .iar43_out(iar43_out),
        .iar44_out(iar44_out),
        .iar5_out(iar5_out),
        .iar7_out(iar7_out),
        .iar9_out(iar9_out),
        .intr(intr),
        .irq(irq),
        .mer(mer),
        .\mer_int_reg[0]_0 (AXI_LITE_IPIF_I_n_63),
        .\mer_int_reg[1]_0 (AXI_LITE_IPIF_I_n_62),
        .p_0_in(p_0_in),
        .p_0_in25_in(p_0_in25_in),
        .p_0_in26_in(p_0_in26_in),
        .p_0_in27_in(p_0_in27_in),
        .p_0_in28_in(p_0_in28_in),
        .p_0_in29_in(p_0_in29_in),
        .p_0_in30_in(p_0_in30_in),
        .p_0_in31_in(p_0_in31_in),
        .p_0_in32_in(p_0_in32_in),
        .p_0_in33_in(p_0_in33_in),
        .p_0_in34_in(p_0_in34_in),
        .p_0_in35_in(p_0_in35_in),
        .p_0_in36_in(p_0_in36_in),
        .p_0_in37_in(p_0_in37_in),
        .p_0_in38_in(p_0_in38_in),
        .p_0_in39_in(p_0_in39_in),
        .p_0_in40_in(p_0_in40_in),
        .p_0_in41_in(p_0_in41_in),
        .p_0_in42_in(p_0_in42_in),
        .p_0_in43_in(p_0_in43_in),
        .p_0_in44_in(p_0_in44_in),
        .p_0_in45_in(p_0_in45_in),
        .p_0_in46_in(p_0_in46_in),
        .p_0_in47_in(p_0_in47_in),
        .p_0_in49_in(p_0_in49_in),
        .p_0_in50_in(p_0_in50_in),
        .p_0_in51_in(p_0_in51_in),
        .p_0_in52_in(p_0_in52_in),
        .p_0_in53_in(p_0_in53_in),
        .p_0_in54_in(p_0_in54_in),
        .p_0_in55_in(p_0_in55_in),
        .p_0_in56_in(p_0_in56_in),
        .p_0_in57_in(p_0_in57_in),
        .p_0_in58_in(p_0_in58_in),
        .p_0_in59_in(p_0_in59_in),
        .p_0_in60_in(p_0_in60_in),
        .p_0_in61_in(p_0_in61_in),
        .p_0_in62_in(p_0_in62_in),
        .p_0_in63_in(p_0_in63_in),
        .p_0_in64_in(p_0_in64_in),
        .p_0_in65_in(p_0_in65_in),
        .p_0_in66_in(p_0_in66_in),
        .p_0_in67_in(p_0_in67_in),
        .p_0_in68_in(p_0_in68_in),
        .p_0_in69_in(p_0_in69_in),
        .p_0_in70_in(p_0_in70_in),
        .p_0_in71_in(p_0_in71_in),
        .p_18_in(\I_SLAVE_ATTACHMENT/I_DECODER/p_18_in ),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_wdata(s_axi_wdata[23:0]));
  FDRE ip2bus_rdack_int_d1_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Or128_vec2stdlogic19_out),
        .Q(ip2bus_rdack_int_d1),
        .R(INTC_CORE_I_n_0));
  FDRE ip2bus_rdack_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ip2bus_rdack_prev2),
        .Q(ip2bus_rdack),
        .R(INTC_CORE_I_n_0));
  FDRE ip2bus_wrack_int_d1_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Or128_vec2stdlogic),
        .Q(ip2bus_wrack_int_d1),
        .R(INTC_CORE_I_n_0));
  FDRE ip2bus_wrack_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ip2bus_wrack_prev2),
        .Q(ip2bus_wrack),
        .R(INTC_CORE_I_n_0));
endmodule

(* ORIG_REF_NAME = "axi_lite_ipif" *) 
module zynq_bd_IRQ0_INTR_CTRL_0_axi_lite_ipif
   (p_18_in,
    s_axi_rresp,
    Bus_RNW_reg,
    s_axi_rvalid_i_reg,
    s_axi_bvalid_i_reg,
    Bus_RNW_reg_reg,
    Bus_RNW_reg_reg_0,
    Bus_RNW_reg_reg_1,
    Bus_RNW_reg_reg_2,
    Bus_RNW_reg_reg_3,
    Bus_RNW_reg_reg_4,
    Bus_RNW_reg_reg_5,
    Bus_RNW_reg_reg_6,
    Bus_RNW_reg_reg_7,
    Bus_RNW_reg_reg_8,
    Bus_RNW_reg_reg_9,
    Bus_RNW_reg_reg_10,
    Bus_RNW_reg_reg_11,
    Bus_RNW_reg_reg_12,
    Bus_RNW_reg_reg_13,
    Bus_RNW_reg_reg_14,
    Bus_RNW_reg_reg_15,
    Bus_RNW_reg_reg_16,
    Bus_RNW_reg_reg_17,
    Bus_RNW_reg_reg_18,
    Bus_RNW_reg_reg_19,
    Bus_RNW_reg_reg_20,
    Bus_RNW_reg_reg_21,
    Bus_RNW_reg_reg_22,
    iar,
    iar1_out,
    iar3_out,
    iar5_out,
    iar7_out,
    iar9_out,
    iar11_out,
    iar13_out,
    iar15_out,
    iar17_out,
    iar19_out,
    iar21_out,
    iar23_out,
    iar25_out,
    iar27_out,
    iar29_out,
    iar31_out,
    iar33_out,
    iar35_out,
    iar37_out,
    iar39_out,
    iar41_out,
    iar43_out,
    iar44_out,
    bus2ip_wrce,
    Q,
    ip2bus_rdack_reg,
    ip2bus_wrack_reg,
    ip2bus_rdack_prev2,
    Or128_vec2stdlogic19_out,
    ip2bus_wrack_prev2,
    Or128_vec2stdlogic,
    s_axi_wdata_1_sp_1,
    s_axi_wdata_0_sp_1,
    Bus_RNW_reg_reg_23,
    Bus_RNW_reg_reg_24,
    Bus_RNW_reg_reg_25,
    Bus_RNW_reg_reg_26,
    Bus_RNW_reg_reg_27,
    Bus_RNW_reg_reg_28,
    Bus_RNW_reg_reg_29,
    Bus_RNW_reg_reg_30,
    Bus_RNW_reg_reg_31,
    Bus_RNW_reg_reg_32,
    Bus_RNW_reg_reg_33,
    Bus_RNW_reg_reg_34,
    Bus_RNW_reg_reg_35,
    Bus_RNW_reg_reg_36,
    Bus_RNW_reg_reg_37,
    Bus_RNW_reg_reg_38,
    Bus_RNW_reg_reg_39,
    Bus_RNW_reg_reg_40,
    Bus_RNW_reg_reg_41,
    Bus_RNW_reg_reg_42,
    Bus_RNW_reg_reg_43,
    Bus_RNW_reg_reg_44,
    Bus_RNW_reg_reg_45,
    Bus_RNW_reg_reg_46,
    s_axi_bresp,
    s_axi_rdata,
    SR,
    s_axi_aclk,
    s_axi_arvalid,
    s_axi_wdata,
    s_axi_aresetn,
    \SIE_GEN.SIE_BIT_GEN[0].sie_reg[0] ,
    p_0_in71_in,
    p_0_in70_in,
    p_0_in69_in,
    p_0_in68_in,
    p_0_in67_in,
    p_0_in66_in,
    p_0_in65_in,
    p_0_in64_in,
    p_0_in63_in,
    p_0_in62_in,
    p_0_in61_in,
    p_0_in60_in,
    p_0_in59_in,
    p_0_in58_in,
    p_0_in57_in,
    p_0_in56_in,
    p_0_in55_in,
    p_0_in54_in,
    p_0_in53_in,
    p_0_in52_in,
    p_0_in51_in,
    p_0_in50_in,
    p_0_in49_in,
    ip2bus_rdack,
    s_axi_awvalid,
    s_axi_wvalid,
    ip2bus_wrack,
    ip2bus_rdack_int_d1,
    ip2bus_wrack_int_d1,
    \s_axi_rdata_i_reg[0] ,
    \s_axi_rdata_i_reg[1] ,
    \s_axi_rdata_i_reg[2] ,
    \s_axi_rdata_i_reg[23] ,
    \s_axi_rdata_i_reg[3] ,
    \s_axi_rdata_i_reg[4] ,
    \s_axi_rdata_i_reg[5] ,
    \s_axi_rdata_i_reg[6] ,
    \s_axi_rdata_i_reg[7] ,
    \s_axi_rdata_i_reg[8] ,
    \s_axi_rdata_i_reg[9] ,
    \s_axi_rdata_i_reg[10] ,
    \s_axi_rdata_i_reg[11] ,
    \s_axi_rdata_i_reg[12] ,
    \s_axi_rdata_i_reg[13] ,
    \s_axi_rdata_i_reg[14] ,
    \s_axi_rdata_i_reg[15] ,
    \s_axi_rdata_i_reg[16] ,
    \s_axi_rdata_i_reg[17] ,
    \s_axi_rdata_i_reg[18] ,
    \s_axi_rdata_i_reg[19] ,
    \s_axi_rdata_i_reg[20] ,
    \s_axi_rdata_i_reg[21] ,
    \s_axi_rdata_i_reg[22] ,
    \s_axi_rdata_i_reg[23]_0 ,
    \s_axi_rdata_i_reg[31] ,
    p_0_in,
    mer,
    s_axi_bready,
    s_axi_rready,
    s_axi_araddr,
    s_axi_awaddr,
    s_axi_wstrb,
    p_0_in25_in,
    p_0_in26_in,
    p_0_in27_in,
    p_0_in28_in,
    p_0_in29_in,
    p_0_in30_in,
    p_0_in31_in,
    p_0_in32_in,
    p_0_in33_in,
    p_0_in34_in,
    p_0_in35_in,
    p_0_in36_in,
    p_0_in37_in,
    p_0_in38_in,
    p_0_in39_in,
    p_0_in40_in,
    p_0_in41_in,
    p_0_in42_in,
    p_0_in43_in,
    p_0_in44_in,
    p_0_in45_in,
    p_0_in46_in,
    p_0_in47_in,
    \CIE_GEN.CIE_BIT_GEN[0].cie_reg[0] );
  output p_18_in;
  output [0:0]s_axi_rresp;
  output Bus_RNW_reg;
  output s_axi_rvalid_i_reg;
  output s_axi_bvalid_i_reg;
  output Bus_RNW_reg_reg;
  output Bus_RNW_reg_reg_0;
  output Bus_RNW_reg_reg_1;
  output Bus_RNW_reg_reg_2;
  output Bus_RNW_reg_reg_3;
  output Bus_RNW_reg_reg_4;
  output Bus_RNW_reg_reg_5;
  output Bus_RNW_reg_reg_6;
  output Bus_RNW_reg_reg_7;
  output Bus_RNW_reg_reg_8;
  output Bus_RNW_reg_reg_9;
  output Bus_RNW_reg_reg_10;
  output Bus_RNW_reg_reg_11;
  output Bus_RNW_reg_reg_12;
  output Bus_RNW_reg_reg_13;
  output Bus_RNW_reg_reg_14;
  output Bus_RNW_reg_reg_15;
  output Bus_RNW_reg_reg_16;
  output Bus_RNW_reg_reg_17;
  output Bus_RNW_reg_reg_18;
  output Bus_RNW_reg_reg_19;
  output Bus_RNW_reg_reg_20;
  output Bus_RNW_reg_reg_21;
  output Bus_RNW_reg_reg_22;
  output iar;
  output iar1_out;
  output iar3_out;
  output iar5_out;
  output iar7_out;
  output iar9_out;
  output iar11_out;
  output iar13_out;
  output iar15_out;
  output iar17_out;
  output iar19_out;
  output iar21_out;
  output iar23_out;
  output iar25_out;
  output iar27_out;
  output iar29_out;
  output iar31_out;
  output iar33_out;
  output iar35_out;
  output iar37_out;
  output iar39_out;
  output iar41_out;
  output iar43_out;
  output iar44_out;
  output [0:0]bus2ip_wrce;
  output [1:0]Q;
  output ip2bus_rdack_reg;
  output ip2bus_wrack_reg;
  output ip2bus_rdack_prev2;
  output Or128_vec2stdlogic19_out;
  output ip2bus_wrack_prev2;
  output Or128_vec2stdlogic;
  output s_axi_wdata_1_sp_1;
  output s_axi_wdata_0_sp_1;
  output Bus_RNW_reg_reg_23;
  output Bus_RNW_reg_reg_24;
  output Bus_RNW_reg_reg_25;
  output Bus_RNW_reg_reg_26;
  output Bus_RNW_reg_reg_27;
  output Bus_RNW_reg_reg_28;
  output Bus_RNW_reg_reg_29;
  output Bus_RNW_reg_reg_30;
  output Bus_RNW_reg_reg_31;
  output Bus_RNW_reg_reg_32;
  output Bus_RNW_reg_reg_33;
  output Bus_RNW_reg_reg_34;
  output Bus_RNW_reg_reg_35;
  output Bus_RNW_reg_reg_36;
  output Bus_RNW_reg_reg_37;
  output Bus_RNW_reg_reg_38;
  output Bus_RNW_reg_reg_39;
  output Bus_RNW_reg_reg_40;
  output Bus_RNW_reg_reg_41;
  output Bus_RNW_reg_reg_42;
  output Bus_RNW_reg_reg_43;
  output Bus_RNW_reg_reg_44;
  output Bus_RNW_reg_reg_45;
  output Bus_RNW_reg_reg_46;
  output [0:0]s_axi_bresp;
  output [24:0]s_axi_rdata;
  input [0:0]SR;
  input s_axi_aclk;
  input s_axi_arvalid;
  input [23:0]s_axi_wdata;
  input s_axi_aresetn;
  input \SIE_GEN.SIE_BIT_GEN[0].sie_reg[0] ;
  input p_0_in71_in;
  input p_0_in70_in;
  input p_0_in69_in;
  input p_0_in68_in;
  input p_0_in67_in;
  input p_0_in66_in;
  input p_0_in65_in;
  input p_0_in64_in;
  input p_0_in63_in;
  input p_0_in62_in;
  input p_0_in61_in;
  input p_0_in60_in;
  input p_0_in59_in;
  input p_0_in58_in;
  input p_0_in57_in;
  input p_0_in56_in;
  input p_0_in55_in;
  input p_0_in54_in;
  input p_0_in53_in;
  input p_0_in52_in;
  input p_0_in51_in;
  input p_0_in50_in;
  input p_0_in49_in;
  input ip2bus_rdack;
  input s_axi_awvalid;
  input s_axi_wvalid;
  input ip2bus_wrack;
  input ip2bus_rdack_int_d1;
  input ip2bus_wrack_int_d1;
  input \s_axi_rdata_i_reg[0] ;
  input \s_axi_rdata_i_reg[1] ;
  input \s_axi_rdata_i_reg[2] ;
  input [23:0]\s_axi_rdata_i_reg[23] ;
  input \s_axi_rdata_i_reg[3] ;
  input \s_axi_rdata_i_reg[4] ;
  input \s_axi_rdata_i_reg[5] ;
  input \s_axi_rdata_i_reg[6] ;
  input \s_axi_rdata_i_reg[7] ;
  input \s_axi_rdata_i_reg[8] ;
  input \s_axi_rdata_i_reg[9] ;
  input \s_axi_rdata_i_reg[10] ;
  input \s_axi_rdata_i_reg[11] ;
  input \s_axi_rdata_i_reg[12] ;
  input \s_axi_rdata_i_reg[13] ;
  input \s_axi_rdata_i_reg[14] ;
  input \s_axi_rdata_i_reg[15] ;
  input \s_axi_rdata_i_reg[16] ;
  input \s_axi_rdata_i_reg[17] ;
  input \s_axi_rdata_i_reg[18] ;
  input \s_axi_rdata_i_reg[19] ;
  input \s_axi_rdata_i_reg[20] ;
  input \s_axi_rdata_i_reg[21] ;
  input \s_axi_rdata_i_reg[22] ;
  input \s_axi_rdata_i_reg[23]_0 ;
  input \s_axi_rdata_i_reg[31] ;
  input p_0_in;
  input mer;
  input s_axi_bready;
  input s_axi_rready;
  input [6:0]s_axi_araddr;
  input [6:0]s_axi_awaddr;
  input [3:0]s_axi_wstrb;
  input p_0_in25_in;
  input p_0_in26_in;
  input p_0_in27_in;
  input p_0_in28_in;
  input p_0_in29_in;
  input p_0_in30_in;
  input p_0_in31_in;
  input p_0_in32_in;
  input p_0_in33_in;
  input p_0_in34_in;
  input p_0_in35_in;
  input p_0_in36_in;
  input p_0_in37_in;
  input p_0_in38_in;
  input p_0_in39_in;
  input p_0_in40_in;
  input p_0_in41_in;
  input p_0_in42_in;
  input p_0_in43_in;
  input p_0_in44_in;
  input p_0_in45_in;
  input p_0_in46_in;
  input p_0_in47_in;
  input \CIE_GEN.CIE_BIT_GEN[0].cie_reg[0] ;

  wire Bus_RNW_reg;
  wire Bus_RNW_reg_reg;
  wire Bus_RNW_reg_reg_0;
  wire Bus_RNW_reg_reg_1;
  wire Bus_RNW_reg_reg_10;
  wire Bus_RNW_reg_reg_11;
  wire Bus_RNW_reg_reg_12;
  wire Bus_RNW_reg_reg_13;
  wire Bus_RNW_reg_reg_14;
  wire Bus_RNW_reg_reg_15;
  wire Bus_RNW_reg_reg_16;
  wire Bus_RNW_reg_reg_17;
  wire Bus_RNW_reg_reg_18;
  wire Bus_RNW_reg_reg_19;
  wire Bus_RNW_reg_reg_2;
  wire Bus_RNW_reg_reg_20;
  wire Bus_RNW_reg_reg_21;
  wire Bus_RNW_reg_reg_22;
  wire Bus_RNW_reg_reg_23;
  wire Bus_RNW_reg_reg_24;
  wire Bus_RNW_reg_reg_25;
  wire Bus_RNW_reg_reg_26;
  wire Bus_RNW_reg_reg_27;
  wire Bus_RNW_reg_reg_28;
  wire Bus_RNW_reg_reg_29;
  wire Bus_RNW_reg_reg_3;
  wire Bus_RNW_reg_reg_30;
  wire Bus_RNW_reg_reg_31;
  wire Bus_RNW_reg_reg_32;
  wire Bus_RNW_reg_reg_33;
  wire Bus_RNW_reg_reg_34;
  wire Bus_RNW_reg_reg_35;
  wire Bus_RNW_reg_reg_36;
  wire Bus_RNW_reg_reg_37;
  wire Bus_RNW_reg_reg_38;
  wire Bus_RNW_reg_reg_39;
  wire Bus_RNW_reg_reg_4;
  wire Bus_RNW_reg_reg_40;
  wire Bus_RNW_reg_reg_41;
  wire Bus_RNW_reg_reg_42;
  wire Bus_RNW_reg_reg_43;
  wire Bus_RNW_reg_reg_44;
  wire Bus_RNW_reg_reg_45;
  wire Bus_RNW_reg_reg_46;
  wire Bus_RNW_reg_reg_5;
  wire Bus_RNW_reg_reg_6;
  wire Bus_RNW_reg_reg_7;
  wire Bus_RNW_reg_reg_8;
  wire Bus_RNW_reg_reg_9;
  wire \CIE_GEN.CIE_BIT_GEN[0].cie_reg[0] ;
  wire Or128_vec2stdlogic;
  wire Or128_vec2stdlogic19_out;
  wire [1:0]Q;
  wire \SIE_GEN.SIE_BIT_GEN[0].sie_reg[0] ;
  wire [0:0]SR;
  wire [0:0]bus2ip_wrce;
  wire iar;
  wire iar11_out;
  wire iar13_out;
  wire iar15_out;
  wire iar17_out;
  wire iar19_out;
  wire iar1_out;
  wire iar21_out;
  wire iar23_out;
  wire iar25_out;
  wire iar27_out;
  wire iar29_out;
  wire iar31_out;
  wire iar33_out;
  wire iar35_out;
  wire iar37_out;
  wire iar39_out;
  wire iar3_out;
  wire iar41_out;
  wire iar43_out;
  wire iar44_out;
  wire iar5_out;
  wire iar7_out;
  wire iar9_out;
  wire ip2bus_rdack;
  wire ip2bus_rdack_int_d1;
  wire ip2bus_rdack_prev2;
  wire ip2bus_rdack_reg;
  wire ip2bus_wrack;
  wire ip2bus_wrack_int_d1;
  wire ip2bus_wrack_prev2;
  wire ip2bus_wrack_reg;
  wire mer;
  wire p_0_in;
  wire p_0_in25_in;
  wire p_0_in26_in;
  wire p_0_in27_in;
  wire p_0_in28_in;
  wire p_0_in29_in;
  wire p_0_in30_in;
  wire p_0_in31_in;
  wire p_0_in32_in;
  wire p_0_in33_in;
  wire p_0_in34_in;
  wire p_0_in35_in;
  wire p_0_in36_in;
  wire p_0_in37_in;
  wire p_0_in38_in;
  wire p_0_in39_in;
  wire p_0_in40_in;
  wire p_0_in41_in;
  wire p_0_in42_in;
  wire p_0_in43_in;
  wire p_0_in44_in;
  wire p_0_in45_in;
  wire p_0_in46_in;
  wire p_0_in47_in;
  wire p_0_in49_in;
  wire p_0_in50_in;
  wire p_0_in51_in;
  wire p_0_in52_in;
  wire p_0_in53_in;
  wire p_0_in54_in;
  wire p_0_in55_in;
  wire p_0_in56_in;
  wire p_0_in57_in;
  wire p_0_in58_in;
  wire p_0_in59_in;
  wire p_0_in60_in;
  wire p_0_in61_in;
  wire p_0_in62_in;
  wire p_0_in63_in;
  wire p_0_in64_in;
  wire p_0_in65_in;
  wire p_0_in66_in;
  wire p_0_in67_in;
  wire p_0_in68_in;
  wire p_0_in69_in;
  wire p_0_in70_in;
  wire p_0_in71_in;
  wire p_18_in;
  wire s_axi_aclk;
  wire [6:0]s_axi_araddr;
  wire s_axi_aresetn;
  wire s_axi_arvalid;
  wire [6:0]s_axi_awaddr;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire [0:0]s_axi_bresp;
  wire s_axi_bvalid_i_reg;
  wire [24:0]s_axi_rdata;
  wire \s_axi_rdata_i_reg[0] ;
  wire \s_axi_rdata_i_reg[10] ;
  wire \s_axi_rdata_i_reg[11] ;
  wire \s_axi_rdata_i_reg[12] ;
  wire \s_axi_rdata_i_reg[13] ;
  wire \s_axi_rdata_i_reg[14] ;
  wire \s_axi_rdata_i_reg[15] ;
  wire \s_axi_rdata_i_reg[16] ;
  wire \s_axi_rdata_i_reg[17] ;
  wire \s_axi_rdata_i_reg[18] ;
  wire \s_axi_rdata_i_reg[19] ;
  wire \s_axi_rdata_i_reg[1] ;
  wire \s_axi_rdata_i_reg[20] ;
  wire \s_axi_rdata_i_reg[21] ;
  wire \s_axi_rdata_i_reg[22] ;
  wire [23:0]\s_axi_rdata_i_reg[23] ;
  wire \s_axi_rdata_i_reg[23]_0 ;
  wire \s_axi_rdata_i_reg[2] ;
  wire \s_axi_rdata_i_reg[31] ;
  wire \s_axi_rdata_i_reg[3] ;
  wire \s_axi_rdata_i_reg[4] ;
  wire \s_axi_rdata_i_reg[5] ;
  wire \s_axi_rdata_i_reg[6] ;
  wire \s_axi_rdata_i_reg[7] ;
  wire \s_axi_rdata_i_reg[8] ;
  wire \s_axi_rdata_i_reg[9] ;
  wire s_axi_rready;
  wire [0:0]s_axi_rresp;
  wire s_axi_rvalid_i_reg;
  wire [23:0]s_axi_wdata;
  wire s_axi_wdata_0_sn_1;
  wire s_axi_wdata_1_sn_1;
  wire [3:0]s_axi_wstrb;
  wire s_axi_wvalid;

  assign s_axi_wdata_0_sp_1 = s_axi_wdata_0_sn_1;
  assign s_axi_wdata_1_sp_1 = s_axi_wdata_1_sn_1;
  zynq_bd_IRQ0_INTR_CTRL_0_slave_attachment I_SLAVE_ATTACHMENT
       (.Bus_RNW_reg_reg(Bus_RNW_reg),
        .Bus_RNW_reg_reg_0(Bus_RNW_reg_reg),
        .Bus_RNW_reg_reg_1(Bus_RNW_reg_reg_0),
        .Bus_RNW_reg_reg_10(Bus_RNW_reg_reg_9),
        .Bus_RNW_reg_reg_11(Bus_RNW_reg_reg_10),
        .Bus_RNW_reg_reg_12(Bus_RNW_reg_reg_11),
        .Bus_RNW_reg_reg_13(Bus_RNW_reg_reg_12),
        .Bus_RNW_reg_reg_14(Bus_RNW_reg_reg_13),
        .Bus_RNW_reg_reg_15(Bus_RNW_reg_reg_14),
        .Bus_RNW_reg_reg_16(Bus_RNW_reg_reg_15),
        .Bus_RNW_reg_reg_17(Bus_RNW_reg_reg_16),
        .Bus_RNW_reg_reg_18(Bus_RNW_reg_reg_17),
        .Bus_RNW_reg_reg_19(Bus_RNW_reg_reg_18),
        .Bus_RNW_reg_reg_2(Bus_RNW_reg_reg_1),
        .Bus_RNW_reg_reg_20(Bus_RNW_reg_reg_19),
        .Bus_RNW_reg_reg_21(Bus_RNW_reg_reg_20),
        .Bus_RNW_reg_reg_22(Bus_RNW_reg_reg_21),
        .Bus_RNW_reg_reg_23(Bus_RNW_reg_reg_22),
        .Bus_RNW_reg_reg_24(Bus_RNW_reg_reg_23),
        .Bus_RNW_reg_reg_25(Bus_RNW_reg_reg_24),
        .Bus_RNW_reg_reg_26(Bus_RNW_reg_reg_25),
        .Bus_RNW_reg_reg_27(Bus_RNW_reg_reg_26),
        .Bus_RNW_reg_reg_28(Bus_RNW_reg_reg_27),
        .Bus_RNW_reg_reg_29(Bus_RNW_reg_reg_28),
        .Bus_RNW_reg_reg_3(Bus_RNW_reg_reg_2),
        .Bus_RNW_reg_reg_30(Bus_RNW_reg_reg_29),
        .Bus_RNW_reg_reg_31(Bus_RNW_reg_reg_30),
        .Bus_RNW_reg_reg_32(Bus_RNW_reg_reg_31),
        .Bus_RNW_reg_reg_33(Bus_RNW_reg_reg_32),
        .Bus_RNW_reg_reg_34(Bus_RNW_reg_reg_33),
        .Bus_RNW_reg_reg_35(Bus_RNW_reg_reg_34),
        .Bus_RNW_reg_reg_36(Bus_RNW_reg_reg_35),
        .Bus_RNW_reg_reg_37(Bus_RNW_reg_reg_36),
        .Bus_RNW_reg_reg_38(Bus_RNW_reg_reg_37),
        .Bus_RNW_reg_reg_39(Bus_RNW_reg_reg_38),
        .Bus_RNW_reg_reg_4(Bus_RNW_reg_reg_3),
        .Bus_RNW_reg_reg_40(Bus_RNW_reg_reg_39),
        .Bus_RNW_reg_reg_41(Bus_RNW_reg_reg_40),
        .Bus_RNW_reg_reg_42(Bus_RNW_reg_reg_41),
        .Bus_RNW_reg_reg_43(Bus_RNW_reg_reg_42),
        .Bus_RNW_reg_reg_44(Bus_RNW_reg_reg_43),
        .Bus_RNW_reg_reg_45(Bus_RNW_reg_reg_44),
        .Bus_RNW_reg_reg_46(Bus_RNW_reg_reg_45),
        .Bus_RNW_reg_reg_47(Bus_RNW_reg_reg_46),
        .Bus_RNW_reg_reg_5(Bus_RNW_reg_reg_4),
        .Bus_RNW_reg_reg_6(Bus_RNW_reg_reg_5),
        .Bus_RNW_reg_reg_7(Bus_RNW_reg_reg_6),
        .Bus_RNW_reg_reg_8(Bus_RNW_reg_reg_7),
        .Bus_RNW_reg_reg_9(Bus_RNW_reg_reg_8),
        .\CIE_GEN.CIE_BIT_GEN[0].cie_reg[0] (\CIE_GEN.CIE_BIT_GEN[0].cie_reg[0] ),
        .Or128_vec2stdlogic(Or128_vec2stdlogic),
        .Or128_vec2stdlogic19_out(Or128_vec2stdlogic19_out),
        .Q(Q),
        .\SIE_GEN.SIE_BIT_GEN[0].sie_reg[0] (\SIE_GEN.SIE_BIT_GEN[0].sie_reg[0] ),
        .SR(SR),
        .bus2ip_wrce(bus2ip_wrce),
        .iar(iar),
        .iar11_out(iar11_out),
        .iar13_out(iar13_out),
        .iar15_out(iar15_out),
        .iar17_out(iar17_out),
        .iar19_out(iar19_out),
        .iar1_out(iar1_out),
        .iar21_out(iar21_out),
        .iar23_out(iar23_out),
        .iar25_out(iar25_out),
        .iar27_out(iar27_out),
        .iar29_out(iar29_out),
        .iar31_out(iar31_out),
        .iar33_out(iar33_out),
        .iar35_out(iar35_out),
        .iar37_out(iar37_out),
        .iar39_out(iar39_out),
        .iar3_out(iar3_out),
        .iar41_out(iar41_out),
        .iar43_out(iar43_out),
        .iar44_out(iar44_out),
        .iar5_out(iar5_out),
        .iar7_out(iar7_out),
        .iar9_out(iar9_out),
        .ip2bus_rdack(ip2bus_rdack),
        .ip2bus_rdack_int_d1(ip2bus_rdack_int_d1),
        .ip2bus_rdack_prev2(ip2bus_rdack_prev2),
        .ip2bus_rdack_reg(ip2bus_rdack_reg),
        .ip2bus_wrack(ip2bus_wrack),
        .ip2bus_wrack_int_d1(ip2bus_wrack_int_d1),
        .ip2bus_wrack_prev2(ip2bus_wrack_prev2),
        .ip2bus_wrack_reg(ip2bus_wrack_reg),
        .mer(mer),
        .p_0_in(p_0_in),
        .p_0_in25_in(p_0_in25_in),
        .p_0_in26_in(p_0_in26_in),
        .p_0_in27_in(p_0_in27_in),
        .p_0_in28_in(p_0_in28_in),
        .p_0_in29_in(p_0_in29_in),
        .p_0_in30_in(p_0_in30_in),
        .p_0_in31_in(p_0_in31_in),
        .p_0_in32_in(p_0_in32_in),
        .p_0_in33_in(p_0_in33_in),
        .p_0_in34_in(p_0_in34_in),
        .p_0_in35_in(p_0_in35_in),
        .p_0_in36_in(p_0_in36_in),
        .p_0_in37_in(p_0_in37_in),
        .p_0_in38_in(p_0_in38_in),
        .p_0_in39_in(p_0_in39_in),
        .p_0_in40_in(p_0_in40_in),
        .p_0_in41_in(p_0_in41_in),
        .p_0_in42_in(p_0_in42_in),
        .p_0_in43_in(p_0_in43_in),
        .p_0_in44_in(p_0_in44_in),
        .p_0_in45_in(p_0_in45_in),
        .p_0_in46_in(p_0_in46_in),
        .p_0_in47_in(p_0_in47_in),
        .p_0_in49_in(p_0_in49_in),
        .p_0_in50_in(p_0_in50_in),
        .p_0_in51_in(p_0_in51_in),
        .p_0_in52_in(p_0_in52_in),
        .p_0_in53_in(p_0_in53_in),
        .p_0_in54_in(p_0_in54_in),
        .p_0_in55_in(p_0_in55_in),
        .p_0_in56_in(p_0_in56_in),
        .p_0_in57_in(p_0_in57_in),
        .p_0_in58_in(p_0_in58_in),
        .p_0_in59_in(p_0_in59_in),
        .p_0_in60_in(p_0_in60_in),
        .p_0_in61_in(p_0_in61_in),
        .p_0_in62_in(p_0_in62_in),
        .p_0_in63_in(p_0_in63_in),
        .p_0_in64_in(p_0_in64_in),
        .p_0_in65_in(p_0_in65_in),
        .p_0_in66_in(p_0_in66_in),
        .p_0_in67_in(p_0_in67_in),
        .p_0_in68_in(p_0_in68_in),
        .p_0_in69_in(p_0_in69_in),
        .p_0_in70_in(p_0_in70_in),
        .p_0_in71_in(p_0_in71_in),
        .p_18_in(p_18_in),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_araddr(s_axi_araddr),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr(s_axi_awaddr),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bready(s_axi_bready),
        .s_axi_bresp(s_axi_bresp),
        .s_axi_bvalid_i_reg_0(s_axi_bvalid_i_reg),
        .s_axi_rdata(s_axi_rdata),
        .\s_axi_rdata_i_reg[0]_0 (\s_axi_rdata_i_reg[0] ),
        .\s_axi_rdata_i_reg[10]_0 (\s_axi_rdata_i_reg[10] ),
        .\s_axi_rdata_i_reg[11]_0 (\s_axi_rdata_i_reg[11] ),
        .\s_axi_rdata_i_reg[12]_0 (\s_axi_rdata_i_reg[12] ),
        .\s_axi_rdata_i_reg[13]_0 (\s_axi_rdata_i_reg[13] ),
        .\s_axi_rdata_i_reg[14]_0 (\s_axi_rdata_i_reg[14] ),
        .\s_axi_rdata_i_reg[15]_0 (\s_axi_rdata_i_reg[15] ),
        .\s_axi_rdata_i_reg[16]_0 (\s_axi_rdata_i_reg[16] ),
        .\s_axi_rdata_i_reg[17]_0 (\s_axi_rdata_i_reg[17] ),
        .\s_axi_rdata_i_reg[18]_0 (\s_axi_rdata_i_reg[18] ),
        .\s_axi_rdata_i_reg[19]_0 (\s_axi_rdata_i_reg[19] ),
        .\s_axi_rdata_i_reg[1]_0 (\s_axi_rdata_i_reg[1] ),
        .\s_axi_rdata_i_reg[20]_0 (\s_axi_rdata_i_reg[20] ),
        .\s_axi_rdata_i_reg[21]_0 (\s_axi_rdata_i_reg[21] ),
        .\s_axi_rdata_i_reg[22]_0 (\s_axi_rdata_i_reg[22] ),
        .\s_axi_rdata_i_reg[23]_0 (\s_axi_rdata_i_reg[23] ),
        .\s_axi_rdata_i_reg[23]_1 (\s_axi_rdata_i_reg[23]_0 ),
        .\s_axi_rdata_i_reg[2]_0 (\s_axi_rdata_i_reg[2] ),
        .\s_axi_rdata_i_reg[31]_0 (\s_axi_rdata_i_reg[31] ),
        .\s_axi_rdata_i_reg[3]_0 (\s_axi_rdata_i_reg[3] ),
        .\s_axi_rdata_i_reg[4]_0 (\s_axi_rdata_i_reg[4] ),
        .\s_axi_rdata_i_reg[5]_0 (\s_axi_rdata_i_reg[5] ),
        .\s_axi_rdata_i_reg[6]_0 (\s_axi_rdata_i_reg[6] ),
        .\s_axi_rdata_i_reg[7]_0 (\s_axi_rdata_i_reg[7] ),
        .\s_axi_rdata_i_reg[8]_0 (\s_axi_rdata_i_reg[8] ),
        .\s_axi_rdata_i_reg[9]_0 (\s_axi_rdata_i_reg[9] ),
        .s_axi_rready(s_axi_rready),
        .s_axi_rresp(s_axi_rresp),
        .s_axi_rvalid_i_reg_0(s_axi_rvalid_i_reg),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wdata_0_sp_1(s_axi_wdata_0_sn_1),
        .s_axi_wdata_1_sp_1(s_axi_wdata_1_sn_1),
        .s_axi_wstrb(s_axi_wstrb),
        .s_axi_wvalid(s_axi_wvalid));
endmodule

(* ORIG_REF_NAME = "intc_core" *) 
module zynq_bd_IRQ0_INTR_CTRL_0_intc_core
   (SR,
    p_0_in,
    \SIE_GEN.SIE_BIT_GEN[0].sie_reg[0]_0 ,
    p_0_in71_in,
    p_0_in70_in,
    p_0_in69_in,
    p_0_in68_in,
    p_0_in67_in,
    p_0_in66_in,
    p_0_in65_in,
    p_0_in64_in,
    p_0_in63_in,
    p_0_in62_in,
    p_0_in61_in,
    p_0_in60_in,
    p_0_in59_in,
    p_0_in58_in,
    p_0_in57_in,
    p_0_in56_in,
    p_0_in55_in,
    p_0_in54_in,
    p_0_in53_in,
    p_0_in52_in,
    p_0_in51_in,
    p_0_in50_in,
    p_0_in49_in,
    \CIE_GEN.CIE_BIT_GEN[0].cie_reg[0]_0 ,
    p_0_in47_in,
    p_0_in46_in,
    p_0_in45_in,
    p_0_in44_in,
    p_0_in43_in,
    p_0_in42_in,
    p_0_in41_in,
    p_0_in40_in,
    p_0_in39_in,
    p_0_in38_in,
    p_0_in37_in,
    p_0_in36_in,
    p_0_in35_in,
    p_0_in34_in,
    p_0_in33_in,
    p_0_in32_in,
    p_0_in31_in,
    p_0_in30_in,
    p_0_in29_in,
    p_0_in28_in,
    p_0_in27_in,
    p_0_in26_in,
    p_0_in25_in,
    mer,
    irq,
    \IVR_GEN.ivr_reg[0]_0 ,
    \IVR_GEN.ivr_reg[4]_0 ,
    \IVR_GEN.ivr_reg[3]_0 ,
    \IVR_GEN.ivr_reg[2]_0 ,
    \IVR_GEN.ivr_reg[1]_0 ,
    \IVR_GEN.ivr_reg[0]_1 ,
    \bus2ip_addr_i_reg[3] ,
    \bus2ip_addr_i_reg[3]_0 ,
    \bus2ip_addr_i_reg[3]_1 ,
    \bus2ip_addr_i_reg[3]_2 ,
    \bus2ip_addr_i_reg[3]_3 ,
    \bus2ip_addr_i_reg[3]_4 ,
    \bus2ip_addr_i_reg[3]_5 ,
    \bus2ip_addr_i_reg[3]_6 ,
    \bus2ip_addr_i_reg[3]_7 ,
    \bus2ip_addr_i_reg[3]_8 ,
    \bus2ip_addr_i_reg[3]_9 ,
    \bus2ip_addr_i_reg[3]_10 ,
    \bus2ip_addr_i_reg[3]_11 ,
    \bus2ip_addr_i_reg[3]_12 ,
    \bus2ip_addr_i_reg[3]_13 ,
    \bus2ip_addr_i_reg[3]_14 ,
    \bus2ip_addr_i_reg[3]_15 ,
    \bus2ip_addr_i_reg[3]_16 ,
    \bus2ip_addr_i_reg[3]_17 ,
    \IPR_GEN.ipr_reg[23]_0 ,
    iar44_out,
    s_axi_aclk,
    iar43_out,
    iar41_out,
    iar39_out,
    iar37_out,
    iar35_out,
    iar33_out,
    iar31_out,
    iar29_out,
    iar27_out,
    iar25_out,
    iar23_out,
    iar21_out,
    iar19_out,
    iar17_out,
    iar15_out,
    iar13_out,
    iar11_out,
    iar9_out,
    iar7_out,
    iar5_out,
    iar3_out,
    iar1_out,
    iar,
    intr,
    \mer_int_reg[1]_0 ,
    \SIE_GEN.SIE_BIT_GEN[0].sie_reg[0]_1 ,
    \SIE_GEN.SIE_BIT_GEN[1].sie_reg[1]_0 ,
    \SIE_GEN.SIE_BIT_GEN[2].sie_reg[2]_0 ,
    \SIE_GEN.SIE_BIT_GEN[3].sie_reg[3]_0 ,
    \SIE_GEN.SIE_BIT_GEN[4].sie_reg[4]_0 ,
    \SIE_GEN.SIE_BIT_GEN[5].sie_reg[5]_0 ,
    \SIE_GEN.SIE_BIT_GEN[6].sie_reg[6]_0 ,
    \SIE_GEN.SIE_BIT_GEN[7].sie_reg[7]_0 ,
    \SIE_GEN.SIE_BIT_GEN[8].sie_reg[8]_0 ,
    \SIE_GEN.SIE_BIT_GEN[9].sie_reg[9]_0 ,
    \SIE_GEN.SIE_BIT_GEN[10].sie_reg[10]_0 ,
    \SIE_GEN.SIE_BIT_GEN[11].sie_reg[11]_0 ,
    \SIE_GEN.SIE_BIT_GEN[12].sie_reg[12]_0 ,
    \SIE_GEN.SIE_BIT_GEN[13].sie_reg[13]_0 ,
    \SIE_GEN.SIE_BIT_GEN[14].sie_reg[14]_0 ,
    \SIE_GEN.SIE_BIT_GEN[15].sie_reg[15]_0 ,
    \SIE_GEN.SIE_BIT_GEN[16].sie_reg[16]_0 ,
    \SIE_GEN.SIE_BIT_GEN[17].sie_reg[17]_0 ,
    \SIE_GEN.SIE_BIT_GEN[18].sie_reg[18]_0 ,
    \SIE_GEN.SIE_BIT_GEN[19].sie_reg[19]_0 ,
    \SIE_GEN.SIE_BIT_GEN[20].sie_reg[20]_0 ,
    \SIE_GEN.SIE_BIT_GEN[21].sie_reg[21]_0 ,
    \SIE_GEN.SIE_BIT_GEN[22].sie_reg[22]_0 ,
    \SIE_GEN.SIE_BIT_GEN[23].sie_reg[23]_0 ,
    \CIE_GEN.CIE_BIT_GEN[0].cie_reg[0]_1 ,
    \CIE_GEN.CIE_BIT_GEN[1].cie_reg[1]_0 ,
    \CIE_GEN.CIE_BIT_GEN[2].cie_reg[2]_0 ,
    \CIE_GEN.CIE_BIT_GEN[3].cie_reg[3]_0 ,
    \CIE_GEN.CIE_BIT_GEN[4].cie_reg[4]_0 ,
    \CIE_GEN.CIE_BIT_GEN[5].cie_reg[5]_0 ,
    \CIE_GEN.CIE_BIT_GEN[6].cie_reg[6]_0 ,
    \CIE_GEN.CIE_BIT_GEN[7].cie_reg[7]_0 ,
    \CIE_GEN.CIE_BIT_GEN[8].cie_reg[8]_0 ,
    \CIE_GEN.CIE_BIT_GEN[9].cie_reg[9]_0 ,
    \CIE_GEN.CIE_BIT_GEN[10].cie_reg[10]_0 ,
    \CIE_GEN.CIE_BIT_GEN[11].cie_reg[11]_0 ,
    \CIE_GEN.CIE_BIT_GEN[12].cie_reg[12]_0 ,
    \CIE_GEN.CIE_BIT_GEN[13].cie_reg[13]_0 ,
    \CIE_GEN.CIE_BIT_GEN[14].cie_reg[14]_0 ,
    \CIE_GEN.CIE_BIT_GEN[15].cie_reg[15]_0 ,
    \CIE_GEN.CIE_BIT_GEN[16].cie_reg[16]_0 ,
    \CIE_GEN.CIE_BIT_GEN[17].cie_reg[17]_0 ,
    \CIE_GEN.CIE_BIT_GEN[18].cie_reg[18]_0 ,
    \CIE_GEN.CIE_BIT_GEN[19].cie_reg[19]_0 ,
    \CIE_GEN.CIE_BIT_GEN[20].cie_reg[20]_0 ,
    \CIE_GEN.CIE_BIT_GEN[21].cie_reg[21]_0 ,
    \CIE_GEN.CIE_BIT_GEN[22].cie_reg[22]_0 ,
    \CIE_GEN.CIE_BIT_GEN[23].cie_reg[23]_0 ,
    \mer_int_reg[0]_0 ,
    s_axi_aresetn,
    Q,
    s_axi_wdata,
    Bus_RNW_reg,
    p_18_in,
    bus2ip_wrce);
  output [0:0]SR;
  output p_0_in;
  output \SIE_GEN.SIE_BIT_GEN[0].sie_reg[0]_0 ;
  output p_0_in71_in;
  output p_0_in70_in;
  output p_0_in69_in;
  output p_0_in68_in;
  output p_0_in67_in;
  output p_0_in66_in;
  output p_0_in65_in;
  output p_0_in64_in;
  output p_0_in63_in;
  output p_0_in62_in;
  output p_0_in61_in;
  output p_0_in60_in;
  output p_0_in59_in;
  output p_0_in58_in;
  output p_0_in57_in;
  output p_0_in56_in;
  output p_0_in55_in;
  output p_0_in54_in;
  output p_0_in53_in;
  output p_0_in52_in;
  output p_0_in51_in;
  output p_0_in50_in;
  output p_0_in49_in;
  output \CIE_GEN.CIE_BIT_GEN[0].cie_reg[0]_0 ;
  output p_0_in47_in;
  output p_0_in46_in;
  output p_0_in45_in;
  output p_0_in44_in;
  output p_0_in43_in;
  output p_0_in42_in;
  output p_0_in41_in;
  output p_0_in40_in;
  output p_0_in39_in;
  output p_0_in38_in;
  output p_0_in37_in;
  output p_0_in36_in;
  output p_0_in35_in;
  output p_0_in34_in;
  output p_0_in33_in;
  output p_0_in32_in;
  output p_0_in31_in;
  output p_0_in30_in;
  output p_0_in29_in;
  output p_0_in28_in;
  output p_0_in27_in;
  output p_0_in26_in;
  output p_0_in25_in;
  output mer;
  output irq;
  output \IVR_GEN.ivr_reg[0]_0 ;
  output \IVR_GEN.ivr_reg[4]_0 ;
  output \IVR_GEN.ivr_reg[3]_0 ;
  output \IVR_GEN.ivr_reg[2]_0 ;
  output \IVR_GEN.ivr_reg[1]_0 ;
  output \IVR_GEN.ivr_reg[0]_1 ;
  output \bus2ip_addr_i_reg[3] ;
  output \bus2ip_addr_i_reg[3]_0 ;
  output \bus2ip_addr_i_reg[3]_1 ;
  output \bus2ip_addr_i_reg[3]_2 ;
  output \bus2ip_addr_i_reg[3]_3 ;
  output \bus2ip_addr_i_reg[3]_4 ;
  output \bus2ip_addr_i_reg[3]_5 ;
  output \bus2ip_addr_i_reg[3]_6 ;
  output \bus2ip_addr_i_reg[3]_7 ;
  output \bus2ip_addr_i_reg[3]_8 ;
  output \bus2ip_addr_i_reg[3]_9 ;
  output \bus2ip_addr_i_reg[3]_10 ;
  output \bus2ip_addr_i_reg[3]_11 ;
  output \bus2ip_addr_i_reg[3]_12 ;
  output \bus2ip_addr_i_reg[3]_13 ;
  output \bus2ip_addr_i_reg[3]_14 ;
  output \bus2ip_addr_i_reg[3]_15 ;
  output \bus2ip_addr_i_reg[3]_16 ;
  output \bus2ip_addr_i_reg[3]_17 ;
  output [23:0]\IPR_GEN.ipr_reg[23]_0 ;
  input iar44_out;
  input s_axi_aclk;
  input iar43_out;
  input iar41_out;
  input iar39_out;
  input iar37_out;
  input iar35_out;
  input iar33_out;
  input iar31_out;
  input iar29_out;
  input iar27_out;
  input iar25_out;
  input iar23_out;
  input iar21_out;
  input iar19_out;
  input iar17_out;
  input iar15_out;
  input iar13_out;
  input iar11_out;
  input iar9_out;
  input iar7_out;
  input iar5_out;
  input iar3_out;
  input iar1_out;
  input iar;
  input [23:0]intr;
  input \mer_int_reg[1]_0 ;
  input \SIE_GEN.SIE_BIT_GEN[0].sie_reg[0]_1 ;
  input \SIE_GEN.SIE_BIT_GEN[1].sie_reg[1]_0 ;
  input \SIE_GEN.SIE_BIT_GEN[2].sie_reg[2]_0 ;
  input \SIE_GEN.SIE_BIT_GEN[3].sie_reg[3]_0 ;
  input \SIE_GEN.SIE_BIT_GEN[4].sie_reg[4]_0 ;
  input \SIE_GEN.SIE_BIT_GEN[5].sie_reg[5]_0 ;
  input \SIE_GEN.SIE_BIT_GEN[6].sie_reg[6]_0 ;
  input \SIE_GEN.SIE_BIT_GEN[7].sie_reg[7]_0 ;
  input \SIE_GEN.SIE_BIT_GEN[8].sie_reg[8]_0 ;
  input \SIE_GEN.SIE_BIT_GEN[9].sie_reg[9]_0 ;
  input \SIE_GEN.SIE_BIT_GEN[10].sie_reg[10]_0 ;
  input \SIE_GEN.SIE_BIT_GEN[11].sie_reg[11]_0 ;
  input \SIE_GEN.SIE_BIT_GEN[12].sie_reg[12]_0 ;
  input \SIE_GEN.SIE_BIT_GEN[13].sie_reg[13]_0 ;
  input \SIE_GEN.SIE_BIT_GEN[14].sie_reg[14]_0 ;
  input \SIE_GEN.SIE_BIT_GEN[15].sie_reg[15]_0 ;
  input \SIE_GEN.SIE_BIT_GEN[16].sie_reg[16]_0 ;
  input \SIE_GEN.SIE_BIT_GEN[17].sie_reg[17]_0 ;
  input \SIE_GEN.SIE_BIT_GEN[18].sie_reg[18]_0 ;
  input \SIE_GEN.SIE_BIT_GEN[19].sie_reg[19]_0 ;
  input \SIE_GEN.SIE_BIT_GEN[20].sie_reg[20]_0 ;
  input \SIE_GEN.SIE_BIT_GEN[21].sie_reg[21]_0 ;
  input \SIE_GEN.SIE_BIT_GEN[22].sie_reg[22]_0 ;
  input \SIE_GEN.SIE_BIT_GEN[23].sie_reg[23]_0 ;
  input \CIE_GEN.CIE_BIT_GEN[0].cie_reg[0]_1 ;
  input \CIE_GEN.CIE_BIT_GEN[1].cie_reg[1]_0 ;
  input \CIE_GEN.CIE_BIT_GEN[2].cie_reg[2]_0 ;
  input \CIE_GEN.CIE_BIT_GEN[3].cie_reg[3]_0 ;
  input \CIE_GEN.CIE_BIT_GEN[4].cie_reg[4]_0 ;
  input \CIE_GEN.CIE_BIT_GEN[5].cie_reg[5]_0 ;
  input \CIE_GEN.CIE_BIT_GEN[6].cie_reg[6]_0 ;
  input \CIE_GEN.CIE_BIT_GEN[7].cie_reg[7]_0 ;
  input \CIE_GEN.CIE_BIT_GEN[8].cie_reg[8]_0 ;
  input \CIE_GEN.CIE_BIT_GEN[9].cie_reg[9]_0 ;
  input \CIE_GEN.CIE_BIT_GEN[10].cie_reg[10]_0 ;
  input \CIE_GEN.CIE_BIT_GEN[11].cie_reg[11]_0 ;
  input \CIE_GEN.CIE_BIT_GEN[12].cie_reg[12]_0 ;
  input \CIE_GEN.CIE_BIT_GEN[13].cie_reg[13]_0 ;
  input \CIE_GEN.CIE_BIT_GEN[14].cie_reg[14]_0 ;
  input \CIE_GEN.CIE_BIT_GEN[15].cie_reg[15]_0 ;
  input \CIE_GEN.CIE_BIT_GEN[16].cie_reg[16]_0 ;
  input \CIE_GEN.CIE_BIT_GEN[17].cie_reg[17]_0 ;
  input \CIE_GEN.CIE_BIT_GEN[18].cie_reg[18]_0 ;
  input \CIE_GEN.CIE_BIT_GEN[19].cie_reg[19]_0 ;
  input \CIE_GEN.CIE_BIT_GEN[20].cie_reg[20]_0 ;
  input \CIE_GEN.CIE_BIT_GEN[21].cie_reg[21]_0 ;
  input \CIE_GEN.CIE_BIT_GEN[22].cie_reg[22]_0 ;
  input \CIE_GEN.CIE_BIT_GEN[23].cie_reg[23]_0 ;
  input \mer_int_reg[0]_0 ;
  input s_axi_aresetn;
  input [1:0]Q;
  input [23:0]s_axi_wdata;
  input Bus_RNW_reg;
  input p_18_in;
  input [0:0]bus2ip_wrce;

  wire Bus_RNW_reg;
  wire \CIE_GEN.CIE_BIT_GEN[0].cie_reg[0]_0 ;
  wire \CIE_GEN.CIE_BIT_GEN[0].cie_reg[0]_1 ;
  wire \CIE_GEN.CIE_BIT_GEN[10].cie_reg[10]_0 ;
  wire \CIE_GEN.CIE_BIT_GEN[11].cie_reg[11]_0 ;
  wire \CIE_GEN.CIE_BIT_GEN[12].cie_reg[12]_0 ;
  wire \CIE_GEN.CIE_BIT_GEN[13].cie_reg[13]_0 ;
  wire \CIE_GEN.CIE_BIT_GEN[14].cie_reg[14]_0 ;
  wire \CIE_GEN.CIE_BIT_GEN[15].cie_reg[15]_0 ;
  wire \CIE_GEN.CIE_BIT_GEN[16].cie_reg[16]_0 ;
  wire \CIE_GEN.CIE_BIT_GEN[17].cie_reg[17]_0 ;
  wire \CIE_GEN.CIE_BIT_GEN[18].cie_reg[18]_0 ;
  wire \CIE_GEN.CIE_BIT_GEN[19].cie_reg[19]_0 ;
  wire \CIE_GEN.CIE_BIT_GEN[1].cie_reg[1]_0 ;
  wire \CIE_GEN.CIE_BIT_GEN[20].cie_reg[20]_0 ;
  wire \CIE_GEN.CIE_BIT_GEN[21].cie_reg[21]_0 ;
  wire \CIE_GEN.CIE_BIT_GEN[22].cie_reg[22]_0 ;
  wire \CIE_GEN.CIE_BIT_GEN[23].cie_reg[23]_0 ;
  wire \CIE_GEN.CIE_BIT_GEN[2].cie_reg[2]_0 ;
  wire \CIE_GEN.CIE_BIT_GEN[3].cie_reg[3]_0 ;
  wire \CIE_GEN.CIE_BIT_GEN[4].cie_reg[4]_0 ;
  wire \CIE_GEN.CIE_BIT_GEN[5].cie_reg[5]_0 ;
  wire \CIE_GEN.CIE_BIT_GEN[6].cie_reg[6]_0 ;
  wire \CIE_GEN.CIE_BIT_GEN[7].cie_reg[7]_0 ;
  wire \CIE_GEN.CIE_BIT_GEN[8].cie_reg[8]_0 ;
  wire \CIE_GEN.CIE_BIT_GEN[9].cie_reg[9]_0 ;
  (* async_reg = "true" *) wire [0:1]\INTR_DETECT_GEN[0].ASYNC_GEN.intr_ff ;
  wire \INTR_DETECT_GEN[0].EDGE_DETECT_GEN.hw_intr[0]_i_1_n_0 ;
  wire \INTR_DETECT_GEN[0].EDGE_DETECT_GEN.hw_intr_reg ;
  wire \INTR_DETECT_GEN[0].EDGE_DETECT_GEN.intr_d1 ;
  (* async_reg = "true" *) wire [0:1]\INTR_DETECT_GEN[10].ASYNC_GEN.intr_ff ;
  wire \INTR_DETECT_GEN[10].EDGE_DETECT_GEN.hw_intr[10]_i_1_n_0 ;
  wire \INTR_DETECT_GEN[10].EDGE_DETECT_GEN.hw_intr_reg ;
  wire \INTR_DETECT_GEN[10].EDGE_DETECT_GEN.intr_d1 ;
  (* async_reg = "true" *) wire [0:1]\INTR_DETECT_GEN[11].ASYNC_GEN.intr_ff ;
  wire \INTR_DETECT_GEN[11].EDGE_DETECT_GEN.hw_intr[11]_i_1_n_0 ;
  wire \INTR_DETECT_GEN[11].EDGE_DETECT_GEN.hw_intr_reg ;
  wire \INTR_DETECT_GEN[11].EDGE_DETECT_GEN.intr_d1 ;
  (* async_reg = "true" *) wire [0:1]\INTR_DETECT_GEN[12].ASYNC_GEN.intr_ff ;
  wire \INTR_DETECT_GEN[12].EDGE_DETECT_GEN.hw_intr[12]_i_1_n_0 ;
  wire \INTR_DETECT_GEN[12].EDGE_DETECT_GEN.hw_intr_reg ;
  wire \INTR_DETECT_GEN[12].EDGE_DETECT_GEN.intr_d1 ;
  (* async_reg = "true" *) wire [0:1]\INTR_DETECT_GEN[13].ASYNC_GEN.intr_ff ;
  wire \INTR_DETECT_GEN[13].EDGE_DETECT_GEN.hw_intr[13]_i_1_n_0 ;
  wire \INTR_DETECT_GEN[13].EDGE_DETECT_GEN.hw_intr_reg ;
  wire \INTR_DETECT_GEN[13].EDGE_DETECT_GEN.intr_d1 ;
  (* async_reg = "true" *) wire [0:1]\INTR_DETECT_GEN[14].ASYNC_GEN.intr_ff ;
  wire \INTR_DETECT_GEN[14].EDGE_DETECT_GEN.hw_intr[14]_i_1_n_0 ;
  wire \INTR_DETECT_GEN[14].EDGE_DETECT_GEN.hw_intr_reg ;
  wire \INTR_DETECT_GEN[14].EDGE_DETECT_GEN.intr_d1 ;
  (* async_reg = "true" *) wire [0:1]\INTR_DETECT_GEN[15].ASYNC_GEN.intr_ff ;
  wire \INTR_DETECT_GEN[15].EDGE_DETECT_GEN.hw_intr[15]_i_1_n_0 ;
  wire \INTR_DETECT_GEN[15].EDGE_DETECT_GEN.hw_intr_reg ;
  wire \INTR_DETECT_GEN[15].EDGE_DETECT_GEN.intr_d1 ;
  wire \INTR_DETECT_GEN[16].EDGE_DETECT_GEN.hw_intr[16]_i_1_n_0 ;
  wire \INTR_DETECT_GEN[16].EDGE_DETECT_GEN.hw_intr_reg ;
  wire \INTR_DETECT_GEN[16].EDGE_DETECT_GEN.intr_d1 ;
  wire \INTR_DETECT_GEN[17].EDGE_DETECT_GEN.hw_intr[17]_i_1_n_0 ;
  wire \INTR_DETECT_GEN[17].EDGE_DETECT_GEN.hw_intr_reg ;
  wire \INTR_DETECT_GEN[17].EDGE_DETECT_GEN.intr_d1 ;
  wire \INTR_DETECT_GEN[18].EDGE_DETECT_GEN.hw_intr[18]_i_1_n_0 ;
  wire \INTR_DETECT_GEN[18].EDGE_DETECT_GEN.hw_intr_reg ;
  wire \INTR_DETECT_GEN[18].EDGE_DETECT_GEN.intr_d1 ;
  wire \INTR_DETECT_GEN[19].EDGE_DETECT_GEN.hw_intr[19]_i_1_n_0 ;
  wire \INTR_DETECT_GEN[19].EDGE_DETECT_GEN.hw_intr_reg ;
  wire \INTR_DETECT_GEN[19].EDGE_DETECT_GEN.intr_d1 ;
  (* async_reg = "true" *) wire [0:1]\INTR_DETECT_GEN[1].ASYNC_GEN.intr_ff ;
  wire \INTR_DETECT_GEN[1].EDGE_DETECT_GEN.hw_intr[1]_i_1_n_0 ;
  wire \INTR_DETECT_GEN[1].EDGE_DETECT_GEN.hw_intr_reg ;
  wire \INTR_DETECT_GEN[1].EDGE_DETECT_GEN.intr_d1 ;
  wire \INTR_DETECT_GEN[20].EDGE_DETECT_GEN.hw_intr[20]_i_1_n_0 ;
  wire \INTR_DETECT_GEN[20].EDGE_DETECT_GEN.hw_intr_reg ;
  wire \INTR_DETECT_GEN[20].EDGE_DETECT_GEN.intr_d1 ;
  wire \INTR_DETECT_GEN[21].EDGE_DETECT_GEN.hw_intr[21]_i_1_n_0 ;
  wire \INTR_DETECT_GEN[21].EDGE_DETECT_GEN.hw_intr_reg ;
  wire \INTR_DETECT_GEN[21].EDGE_DETECT_GEN.intr_d1 ;
  wire \INTR_DETECT_GEN[22].EDGE_DETECT_GEN.hw_intr[22]_i_1_n_0 ;
  wire \INTR_DETECT_GEN[22].EDGE_DETECT_GEN.hw_intr_reg ;
  wire \INTR_DETECT_GEN[22].EDGE_DETECT_GEN.intr_d1 ;
  wire \INTR_DETECT_GEN[23].EDGE_DETECT_GEN.hw_intr[23]_i_1_n_0 ;
  wire \INTR_DETECT_GEN[23].EDGE_DETECT_GEN.hw_intr_reg ;
  wire \INTR_DETECT_GEN[23].EDGE_DETECT_GEN.intr_d1 ;
  (* async_reg = "true" *) wire [0:1]\INTR_DETECT_GEN[2].ASYNC_GEN.intr_ff ;
  wire \INTR_DETECT_GEN[2].EDGE_DETECT_GEN.hw_intr[2]_i_1_n_0 ;
  wire \INTR_DETECT_GEN[2].EDGE_DETECT_GEN.hw_intr_reg ;
  wire \INTR_DETECT_GEN[2].EDGE_DETECT_GEN.intr_d1 ;
  (* async_reg = "true" *) wire [0:1]\INTR_DETECT_GEN[3].ASYNC_GEN.intr_ff ;
  wire \INTR_DETECT_GEN[3].EDGE_DETECT_GEN.hw_intr[3]_i_1_n_0 ;
  wire \INTR_DETECT_GEN[3].EDGE_DETECT_GEN.hw_intr_reg ;
  wire \INTR_DETECT_GEN[3].EDGE_DETECT_GEN.intr_d1 ;
  (* async_reg = "true" *) wire [0:1]\INTR_DETECT_GEN[4].ASYNC_GEN.intr_ff ;
  wire \INTR_DETECT_GEN[4].EDGE_DETECT_GEN.hw_intr[4]_i_1_n_0 ;
  wire \INTR_DETECT_GEN[4].EDGE_DETECT_GEN.hw_intr_reg ;
  wire \INTR_DETECT_GEN[4].EDGE_DETECT_GEN.intr_d1 ;
  (* async_reg = "true" *) wire [0:1]\INTR_DETECT_GEN[5].ASYNC_GEN.intr_ff ;
  wire \INTR_DETECT_GEN[5].EDGE_DETECT_GEN.hw_intr[5]_i_1_n_0 ;
  wire \INTR_DETECT_GEN[5].EDGE_DETECT_GEN.hw_intr_reg ;
  wire \INTR_DETECT_GEN[5].EDGE_DETECT_GEN.intr_d1 ;
  (* async_reg = "true" *) wire [0:1]\INTR_DETECT_GEN[6].ASYNC_GEN.intr_ff ;
  wire \INTR_DETECT_GEN[6].EDGE_DETECT_GEN.hw_intr[6]_i_1_n_0 ;
  wire \INTR_DETECT_GEN[6].EDGE_DETECT_GEN.hw_intr_reg ;
  wire \INTR_DETECT_GEN[6].EDGE_DETECT_GEN.intr_d1 ;
  (* async_reg = "true" *) wire [0:1]\INTR_DETECT_GEN[7].ASYNC_GEN.intr_ff ;
  wire \INTR_DETECT_GEN[7].EDGE_DETECT_GEN.hw_intr[7]_i_1_n_0 ;
  wire \INTR_DETECT_GEN[7].EDGE_DETECT_GEN.hw_intr_reg ;
  wire \INTR_DETECT_GEN[7].EDGE_DETECT_GEN.intr_d1 ;
  (* async_reg = "true" *) wire [0:1]\INTR_DETECT_GEN[8].ASYNC_GEN.intr_ff ;
  wire \INTR_DETECT_GEN[8].EDGE_DETECT_GEN.hw_intr[8]_i_1_n_0 ;
  wire \INTR_DETECT_GEN[8].EDGE_DETECT_GEN.hw_intr_reg ;
  wire \INTR_DETECT_GEN[8].EDGE_DETECT_GEN.intr_d1 ;
  (* async_reg = "true" *) wire [0:1]\INTR_DETECT_GEN[9].ASYNC_GEN.intr_ff ;
  wire \INTR_DETECT_GEN[9].EDGE_DETECT_GEN.hw_intr[9]_i_1_n_0 ;
  wire \INTR_DETECT_GEN[9].EDGE_DETECT_GEN.hw_intr_reg ;
  wire \INTR_DETECT_GEN[9].EDGE_DETECT_GEN.intr_d1 ;
  wire \IPR_GEN.ipr[0]_i_1_n_0 ;
  wire \IPR_GEN.ipr[10]_i_1_n_0 ;
  wire \IPR_GEN.ipr[11]_i_1_n_0 ;
  wire \IPR_GEN.ipr[12]_i_1_n_0 ;
  wire \IPR_GEN.ipr[13]_i_1_n_0 ;
  wire \IPR_GEN.ipr[14]_i_1_n_0 ;
  wire \IPR_GEN.ipr[15]_i_1_n_0 ;
  wire \IPR_GEN.ipr[16]_i_1_n_0 ;
  wire \IPR_GEN.ipr[17]_i_1_n_0 ;
  wire \IPR_GEN.ipr[18]_i_1_n_0 ;
  wire \IPR_GEN.ipr[19]_i_1_n_0 ;
  wire \IPR_GEN.ipr[1]_i_1_n_0 ;
  wire \IPR_GEN.ipr[20]_i_1_n_0 ;
  wire \IPR_GEN.ipr[21]_i_1_n_0 ;
  wire \IPR_GEN.ipr[22]_i_1_n_0 ;
  wire \IPR_GEN.ipr[23]_i_1_n_0 ;
  wire \IPR_GEN.ipr[2]_i_1_n_0 ;
  wire \IPR_GEN.ipr[3]_i_1_n_0 ;
  wire \IPR_GEN.ipr[4]_i_1_n_0 ;
  wire \IPR_GEN.ipr[5]_i_1_n_0 ;
  wire \IPR_GEN.ipr[6]_i_1_n_0 ;
  wire \IPR_GEN.ipr[7]_i_1_n_0 ;
  wire \IPR_GEN.ipr[8]_i_1_n_0 ;
  wire \IPR_GEN.ipr[9]_i_1_n_0 ;
  wire [23:0]\IPR_GEN.ipr_reg[23]_0 ;
  wire \IRQ_LEVEL_GEN.IRQ_LEVEL_NORMAL_ON_AXI_CLK_GEN.Irq_i_1_n_0 ;
  wire \IVR_GEN.ivr[0]_i_1_n_0 ;
  wire \IVR_GEN.ivr[0]_i_2_n_0 ;
  wire \IVR_GEN.ivr[0]_i_3_n_0 ;
  wire \IVR_GEN.ivr[0]_i_4_n_0 ;
  wire \IVR_GEN.ivr[0]_i_5_n_0 ;
  wire \IVR_GEN.ivr[0]_i_6_n_0 ;
  wire \IVR_GEN.ivr[0]_i_7_n_0 ;
  wire \IVR_GEN.ivr[0]_i_8_n_0 ;
  wire \IVR_GEN.ivr[0]_i_9_n_0 ;
  wire \IVR_GEN.ivr[1]_i_1_n_0 ;
  wire \IVR_GEN.ivr[1]_i_2_n_0 ;
  wire \IVR_GEN.ivr[1]_i_3_n_0 ;
  wire \IVR_GEN.ivr[1]_i_4_n_0 ;
  wire \IVR_GEN.ivr[1]_i_5_n_0 ;
  wire \IVR_GEN.ivr[1]_i_6_n_0 ;
  wire \IVR_GEN.ivr[1]_i_7_n_0 ;
  wire \IVR_GEN.ivr[1]_i_8_n_0 ;
  wire \IVR_GEN.ivr[2]_i_1_n_0 ;
  wire \IVR_GEN.ivr[2]_i_2_n_0 ;
  wire \IVR_GEN.ivr[2]_i_3_n_0 ;
  wire \IVR_GEN.ivr[2]_i_4_n_0 ;
  wire \IVR_GEN.ivr[2]_i_5_n_0 ;
  wire \IVR_GEN.ivr[3]_i_1_n_0 ;
  wire \IVR_GEN.ivr[3]_i_2_n_0 ;
  wire \IVR_GEN.ivr[3]_i_3_n_0 ;
  wire \IVR_GEN.ivr[3]_i_4_n_0 ;
  wire \IVR_GEN.ivr[3]_i_5_n_0 ;
  wire \IVR_GEN.ivr[3]_i_6_n_0 ;
  wire \IVR_GEN.ivr[4]_i_1_n_0 ;
  wire \IVR_GEN.ivr_reg[0]_0 ;
  wire \IVR_GEN.ivr_reg[0]_1 ;
  wire \IVR_GEN.ivr_reg[1]_0 ;
  wire \IVR_GEN.ivr_reg[2]_0 ;
  wire \IVR_GEN.ivr_reg[3]_0 ;
  wire \IVR_GEN.ivr_reg[4]_0 ;
  wire [1:0]Q;
  wire \REG_GEN[0].IAR_NORMAL_MODE_GEN.iar_reg0 ;
  wire \REG_GEN[0].IAR_NORMAL_MODE_GEN.iar_reg_n_0_[0] ;
  wire \REG_GEN[0].ier[0]_i_1_n_0 ;
  wire \REG_GEN[0].ier_reg_n_0_[0] ;
  wire \REG_GEN[0].isr[0]_i_1_n_0 ;
  wire \REG_GEN[0].isr_reg_n_0_[0] ;
  wire \REG_GEN[10].IAR_NORMAL_MODE_GEN.iar_reg0 ;
  wire \REG_GEN[10].ier[10]_i_1_n_0 ;
  wire \REG_GEN[10].ier_reg_n_0_[10] ;
  wire \REG_GEN[10].isr[10]_i_1_n_0 ;
  wire \REG_GEN[11].IAR_NORMAL_MODE_GEN.iar_reg0 ;
  wire \REG_GEN[11].ier[11]_i_1_n_0 ;
  wire \REG_GEN[11].ier_reg_n_0_[11] ;
  wire \REG_GEN[11].isr[11]_i_1_n_0 ;
  wire \REG_GEN[12].IAR_NORMAL_MODE_GEN.iar_reg0 ;
  wire \REG_GEN[12].ier[12]_i_1_n_0 ;
  wire \REG_GEN[12].ier_reg_n_0_[12] ;
  wire \REG_GEN[12].isr[12]_i_1_n_0 ;
  wire \REG_GEN[13].IAR_NORMAL_MODE_GEN.iar_reg0 ;
  wire \REG_GEN[13].ier[13]_i_1_n_0 ;
  wire \REG_GEN[13].ier_reg_n_0_[13] ;
  wire \REG_GEN[13].isr[13]_i_1_n_0 ;
  wire \REG_GEN[14].IAR_NORMAL_MODE_GEN.iar_reg0 ;
  wire \REG_GEN[14].ier[14]_i_1_n_0 ;
  wire \REG_GEN[14].ier_reg_n_0_[14] ;
  wire \REG_GEN[14].isr[14]_i_1_n_0 ;
  wire \REG_GEN[15].IAR_NORMAL_MODE_GEN.iar_reg0 ;
  wire \REG_GEN[15].ier[15]_i_1_n_0 ;
  wire \REG_GEN[15].ier_reg_n_0_[15] ;
  wire \REG_GEN[15].isr[15]_i_1_n_0 ;
  wire \REG_GEN[16].IAR_NORMAL_MODE_GEN.iar_reg0 ;
  wire \REG_GEN[16].ier[16]_i_1_n_0 ;
  wire \REG_GEN[16].ier_reg_n_0_[16] ;
  wire \REG_GEN[16].isr[16]_i_1_n_0 ;
  wire \REG_GEN[17].IAR_NORMAL_MODE_GEN.iar_reg0 ;
  wire \REG_GEN[17].ier[17]_i_1_n_0 ;
  wire \REG_GEN[17].ier_reg_n_0_[17] ;
  wire \REG_GEN[17].isr[17]_i_1_n_0 ;
  wire \REG_GEN[18].IAR_NORMAL_MODE_GEN.iar_reg0 ;
  wire \REG_GEN[18].ier[18]_i_1_n_0 ;
  wire \REG_GEN[18].ier_reg_n_0_[18] ;
  wire \REG_GEN[18].isr[18]_i_1_n_0 ;
  wire \REG_GEN[19].IAR_NORMAL_MODE_GEN.iar_reg0 ;
  wire \REG_GEN[19].ier[19]_i_1_n_0 ;
  wire \REG_GEN[19].ier_reg_n_0_[19] ;
  wire \REG_GEN[19].isr[19]_i_1_n_0 ;
  wire \REG_GEN[1].IAR_NORMAL_MODE_GEN.iar_reg0 ;
  wire \REG_GEN[1].ier[1]_i_1_n_0 ;
  wire \REG_GEN[1].isr[1]_i_1_n_0 ;
  wire \REG_GEN[20].IAR_NORMAL_MODE_GEN.iar_reg0 ;
  wire \REG_GEN[20].ier[20]_i_1_n_0 ;
  wire \REG_GEN[20].ier_reg_n_0_[20] ;
  wire \REG_GEN[20].isr[20]_i_1_n_0 ;
  wire \REG_GEN[21].IAR_NORMAL_MODE_GEN.iar_reg0 ;
  wire \REG_GEN[21].ier[21]_i_1_n_0 ;
  wire \REG_GEN[21].ier_reg_n_0_[21] ;
  wire \REG_GEN[21].isr[21]_i_1_n_0 ;
  wire \REG_GEN[22].IAR_NORMAL_MODE_GEN.iar_reg0 ;
  wire \REG_GEN[22].ier[22]_i_1_n_0 ;
  wire \REG_GEN[22].ier_reg_n_0_[22] ;
  wire \REG_GEN[22].isr[22]_i_1_n_0 ;
  wire \REG_GEN[23].IAR_NORMAL_MODE_GEN.iar_reg0 ;
  wire \REG_GEN[23].IAR_NORMAL_MODE_GEN.iar_reg_n_0_[23] ;
  wire \REG_GEN[23].ier[23]_i_1_n_0 ;
  wire \REG_GEN[23].ier_reg_n_0_[23] ;
  wire \REG_GEN[23].isr[23]_i_1_n_0 ;
  wire \REG_GEN[2].IAR_NORMAL_MODE_GEN.iar_reg0 ;
  wire \REG_GEN[2].ier[2]_i_1_n_0 ;
  wire \REG_GEN[2].isr[2]_i_1_n_0 ;
  wire \REG_GEN[3].IAR_NORMAL_MODE_GEN.iar_reg0 ;
  wire \REG_GEN[3].ier[3]_i_1_n_0 ;
  wire \REG_GEN[3].isr[3]_i_1_n_0 ;
  wire \REG_GEN[4].IAR_NORMAL_MODE_GEN.iar_reg0 ;
  wire \REG_GEN[4].ier[4]_i_1_n_0 ;
  wire \REG_GEN[4].isr[4]_i_1_n_0 ;
  wire \REG_GEN[5].IAR_NORMAL_MODE_GEN.iar_reg0 ;
  wire \REG_GEN[5].ier[5]_i_1_n_0 ;
  wire \REG_GEN[5].isr[5]_i_1_n_0 ;
  wire \REG_GEN[6].IAR_NORMAL_MODE_GEN.iar_reg0 ;
  wire \REG_GEN[6].ier[6]_i_1_n_0 ;
  wire \REG_GEN[6].isr[6]_i_1_n_0 ;
  wire \REG_GEN[7].IAR_NORMAL_MODE_GEN.iar_reg0 ;
  wire \REG_GEN[7].ier[7]_i_1_n_0 ;
  wire \REG_GEN[7].isr[7]_i_1_n_0 ;
  wire \REG_GEN[8].IAR_NORMAL_MODE_GEN.iar_reg0 ;
  wire \REG_GEN[8].ier[8]_i_1_n_0 ;
  wire \REG_GEN[8].isr[8]_i_1_n_0 ;
  wire \REG_GEN[9].IAR_NORMAL_MODE_GEN.iar_reg0 ;
  wire \REG_GEN[9].ier[9]_i_1_n_0 ;
  wire \REG_GEN[9].isr[9]_i_1_n_0 ;
  wire \SIE_GEN.SIE_BIT_GEN[0].sie_reg[0]_0 ;
  wire \SIE_GEN.SIE_BIT_GEN[0].sie_reg[0]_1 ;
  wire \SIE_GEN.SIE_BIT_GEN[10].sie_reg[10]_0 ;
  wire \SIE_GEN.SIE_BIT_GEN[11].sie_reg[11]_0 ;
  wire \SIE_GEN.SIE_BIT_GEN[12].sie_reg[12]_0 ;
  wire \SIE_GEN.SIE_BIT_GEN[13].sie_reg[13]_0 ;
  wire \SIE_GEN.SIE_BIT_GEN[14].sie_reg[14]_0 ;
  wire \SIE_GEN.SIE_BIT_GEN[15].sie_reg[15]_0 ;
  wire \SIE_GEN.SIE_BIT_GEN[16].sie_reg[16]_0 ;
  wire \SIE_GEN.SIE_BIT_GEN[17].sie_reg[17]_0 ;
  wire \SIE_GEN.SIE_BIT_GEN[18].sie_reg[18]_0 ;
  wire \SIE_GEN.SIE_BIT_GEN[19].sie_reg[19]_0 ;
  wire \SIE_GEN.SIE_BIT_GEN[1].sie_reg[1]_0 ;
  wire \SIE_GEN.SIE_BIT_GEN[20].sie_reg[20]_0 ;
  wire \SIE_GEN.SIE_BIT_GEN[21].sie_reg[21]_0 ;
  wire \SIE_GEN.SIE_BIT_GEN[22].sie_reg[22]_0 ;
  wire \SIE_GEN.SIE_BIT_GEN[23].sie_reg[23]_0 ;
  wire \SIE_GEN.SIE_BIT_GEN[2].sie_reg[2]_0 ;
  wire \SIE_GEN.SIE_BIT_GEN[3].sie_reg[3]_0 ;
  wire \SIE_GEN.SIE_BIT_GEN[4].sie_reg[4]_0 ;
  wire \SIE_GEN.SIE_BIT_GEN[5].sie_reg[5]_0 ;
  wire \SIE_GEN.SIE_BIT_GEN[6].sie_reg[6]_0 ;
  wire \SIE_GEN.SIE_BIT_GEN[7].sie_reg[7]_0 ;
  wire \SIE_GEN.SIE_BIT_GEN[8].sie_reg[8]_0 ;
  wire \SIE_GEN.SIE_BIT_GEN[9].sie_reg[9]_0 ;
  wire [0:0]SR;
  wire \bus2ip_addr_i_reg[3] ;
  wire \bus2ip_addr_i_reg[3]_0 ;
  wire \bus2ip_addr_i_reg[3]_1 ;
  wire \bus2ip_addr_i_reg[3]_10 ;
  wire \bus2ip_addr_i_reg[3]_11 ;
  wire \bus2ip_addr_i_reg[3]_12 ;
  wire \bus2ip_addr_i_reg[3]_13 ;
  wire \bus2ip_addr_i_reg[3]_14 ;
  wire \bus2ip_addr_i_reg[3]_15 ;
  wire \bus2ip_addr_i_reg[3]_16 ;
  wire \bus2ip_addr_i_reg[3]_17 ;
  wire \bus2ip_addr_i_reg[3]_2 ;
  wire \bus2ip_addr_i_reg[3]_3 ;
  wire \bus2ip_addr_i_reg[3]_4 ;
  wire \bus2ip_addr_i_reg[3]_5 ;
  wire \bus2ip_addr_i_reg[3]_6 ;
  wire \bus2ip_addr_i_reg[3]_7 ;
  wire \bus2ip_addr_i_reg[3]_8 ;
  wire \bus2ip_addr_i_reg[3]_9 ;
  wire [0:0]bus2ip_wrce;
  wire iar;
  wire iar11_out;
  wire iar13_out;
  wire iar15_out;
  wire iar17_out;
  wire iar19_out;
  wire iar1_out;
  wire iar21_out;
  wire iar23_out;
  wire iar25_out;
  wire iar27_out;
  wire iar29_out;
  wire iar31_out;
  wire iar33_out;
  wire iar35_out;
  wire iar37_out;
  wire iar39_out;
  wire iar3_out;
  wire iar41_out;
  wire iar43_out;
  wire iar44_out;
  wire iar5_out;
  wire iar7_out;
  wire iar9_out;
  wire [23:0]intr;
  wire irq;
  wire irq_gen;
  wire irq_gen_i;
  wire irq_gen_i_2_n_0;
  wire irq_gen_i_3_n_0;
  wire irq_gen_i_4_n_0;
  wire irq_gen_i_5_n_0;
  wire [4:0]ivr;
  wire mer;
  wire \mer_int_reg[0]_0 ;
  wire \mer_int_reg[1]_0 ;
  wire p_0_in;
  wire p_0_in10_in;
  wire p_0_in11_in;
  wire p_0_in12_in;
  wire p_0_in13_in;
  wire p_0_in14_in;
  wire p_0_in15_in;
  wire p_0_in16_in;
  wire p_0_in17_in;
  wire p_0_in18_in;
  wire p_0_in19_in;
  wire p_0_in1_in;
  wire p_0_in20_in;
  wire p_0_in21_in;
  wire p_0_in22_in;
  wire p_0_in25_in;
  wire p_0_in26_in;
  wire p_0_in27_in;
  wire p_0_in28_in;
  wire p_0_in29_in;
  wire p_0_in2_in;
  wire p_0_in30_in;
  wire p_0_in31_in;
  wire p_0_in32_in;
  wire p_0_in33_in;
  wire p_0_in34_in;
  wire p_0_in35_in;
  wire p_0_in36_in;
  wire p_0_in37_in;
  wire p_0_in38_in;
  wire p_0_in39_in;
  wire p_0_in3_in;
  wire p_0_in40_in;
  wire p_0_in41_in;
  wire p_0_in42_in;
  wire p_0_in43_in;
  wire p_0_in44_in;
  wire p_0_in45_in;
  wire p_0_in46_in;
  wire p_0_in47_in;
  wire p_0_in49_in;
  wire p_0_in4_in;
  wire p_0_in50_in;
  wire p_0_in51_in;
  wire p_0_in52_in;
  wire p_0_in53_in;
  wire p_0_in54_in;
  wire p_0_in55_in;
  wire p_0_in56_in;
  wire p_0_in57_in;
  wire p_0_in58_in;
  wire p_0_in59_in;
  wire p_0_in5_in;
  wire p_0_in60_in;
  wire p_0_in61_in;
  wire p_0_in62_in;
  wire p_0_in63_in;
  wire p_0_in64_in;
  wire p_0_in65_in;
  wire p_0_in66_in;
  wire p_0_in67_in;
  wire p_0_in68_in;
  wire p_0_in69_in;
  wire p_0_in6_in;
  wire p_0_in70_in;
  wire p_0_in71_in;
  wire p_0_in73_in;
  wire p_0_in75_in;
  wire p_0_in77_in;
  wire p_0_in79_in;
  wire p_0_in7_in;
  wire p_0_in81_in;
  wire p_0_in83_in;
  wire p_0_in85_in;
  wire p_0_in87_in;
  wire p_0_in89_in;
  wire p_0_in8_in;
  wire p_0_in9_in;
  wire p_18_in;
  wire p_1_in46_in;
  wire p_1_in48_in;
  wire p_1_in50_in;
  wire p_1_in52_in;
  wire p_1_in54_in;
  wire p_1_in56_in;
  wire p_1_in58_in;
  wire p_1_in60_in;
  wire p_1_in62_in;
  wire p_1_in64_in;
  wire p_1_in66_in;
  wire p_1_in68_in;
  wire p_1_in70_in;
  wire p_1_in72_in;
  wire p_1_in74_in;
  wire p_1_in76_in;
  wire p_1_in78_in;
  wire p_1_in80_in;
  wire p_1_in82_in;
  wire p_1_in84_in;
  wire p_1_in86_in;
  wire p_1_in88_in;
  wire p_1_in90_in;
  wire s_axi_aclk;
  wire s_axi_aresetn;
  wire [23:0]s_axi_wdata;

  FDRE \CIE_GEN.CIE_BIT_GEN[0].cie_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\CIE_GEN.CIE_BIT_GEN[0].cie_reg[0]_1 ),
        .Q(\CIE_GEN.CIE_BIT_GEN[0].cie_reg[0]_0 ),
        .R(1'b0));
  FDRE \CIE_GEN.CIE_BIT_GEN[10].cie_reg[10] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\CIE_GEN.CIE_BIT_GEN[10].cie_reg[10]_0 ),
        .Q(p_0_in38_in),
        .R(1'b0));
  FDRE \CIE_GEN.CIE_BIT_GEN[11].cie_reg[11] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\CIE_GEN.CIE_BIT_GEN[11].cie_reg[11]_0 ),
        .Q(p_0_in37_in),
        .R(1'b0));
  FDRE \CIE_GEN.CIE_BIT_GEN[12].cie_reg[12] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\CIE_GEN.CIE_BIT_GEN[12].cie_reg[12]_0 ),
        .Q(p_0_in36_in),
        .R(1'b0));
  FDRE \CIE_GEN.CIE_BIT_GEN[13].cie_reg[13] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\CIE_GEN.CIE_BIT_GEN[13].cie_reg[13]_0 ),
        .Q(p_0_in35_in),
        .R(1'b0));
  FDRE \CIE_GEN.CIE_BIT_GEN[14].cie_reg[14] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\CIE_GEN.CIE_BIT_GEN[14].cie_reg[14]_0 ),
        .Q(p_0_in34_in),
        .R(1'b0));
  FDRE \CIE_GEN.CIE_BIT_GEN[15].cie_reg[15] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\CIE_GEN.CIE_BIT_GEN[15].cie_reg[15]_0 ),
        .Q(p_0_in33_in),
        .R(1'b0));
  FDRE \CIE_GEN.CIE_BIT_GEN[16].cie_reg[16] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\CIE_GEN.CIE_BIT_GEN[16].cie_reg[16]_0 ),
        .Q(p_0_in32_in),
        .R(1'b0));
  FDRE \CIE_GEN.CIE_BIT_GEN[17].cie_reg[17] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\CIE_GEN.CIE_BIT_GEN[17].cie_reg[17]_0 ),
        .Q(p_0_in31_in),
        .R(1'b0));
  FDRE \CIE_GEN.CIE_BIT_GEN[18].cie_reg[18] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\CIE_GEN.CIE_BIT_GEN[18].cie_reg[18]_0 ),
        .Q(p_0_in30_in),
        .R(1'b0));
  FDRE \CIE_GEN.CIE_BIT_GEN[19].cie_reg[19] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\CIE_GEN.CIE_BIT_GEN[19].cie_reg[19]_0 ),
        .Q(p_0_in29_in),
        .R(1'b0));
  FDRE \CIE_GEN.CIE_BIT_GEN[1].cie_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\CIE_GEN.CIE_BIT_GEN[1].cie_reg[1]_0 ),
        .Q(p_0_in47_in),
        .R(1'b0));
  FDRE \CIE_GEN.CIE_BIT_GEN[20].cie_reg[20] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\CIE_GEN.CIE_BIT_GEN[20].cie_reg[20]_0 ),
        .Q(p_0_in28_in),
        .R(1'b0));
  FDRE \CIE_GEN.CIE_BIT_GEN[21].cie_reg[21] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\CIE_GEN.CIE_BIT_GEN[21].cie_reg[21]_0 ),
        .Q(p_0_in27_in),
        .R(1'b0));
  FDRE \CIE_GEN.CIE_BIT_GEN[22].cie_reg[22] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\CIE_GEN.CIE_BIT_GEN[22].cie_reg[22]_0 ),
        .Q(p_0_in26_in),
        .R(1'b0));
  FDRE \CIE_GEN.CIE_BIT_GEN[23].cie_reg[23] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\CIE_GEN.CIE_BIT_GEN[23].cie_reg[23]_0 ),
        .Q(p_0_in25_in),
        .R(1'b0));
  FDRE \CIE_GEN.CIE_BIT_GEN[2].cie_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\CIE_GEN.CIE_BIT_GEN[2].cie_reg[2]_0 ),
        .Q(p_0_in46_in),
        .R(1'b0));
  FDRE \CIE_GEN.CIE_BIT_GEN[3].cie_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\CIE_GEN.CIE_BIT_GEN[3].cie_reg[3]_0 ),
        .Q(p_0_in45_in),
        .R(1'b0));
  FDRE \CIE_GEN.CIE_BIT_GEN[4].cie_reg[4] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\CIE_GEN.CIE_BIT_GEN[4].cie_reg[4]_0 ),
        .Q(p_0_in44_in),
        .R(1'b0));
  FDRE \CIE_GEN.CIE_BIT_GEN[5].cie_reg[5] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\CIE_GEN.CIE_BIT_GEN[5].cie_reg[5]_0 ),
        .Q(p_0_in43_in),
        .R(1'b0));
  FDRE \CIE_GEN.CIE_BIT_GEN[6].cie_reg[6] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\CIE_GEN.CIE_BIT_GEN[6].cie_reg[6]_0 ),
        .Q(p_0_in42_in),
        .R(1'b0));
  FDRE \CIE_GEN.CIE_BIT_GEN[7].cie_reg[7] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\CIE_GEN.CIE_BIT_GEN[7].cie_reg[7]_0 ),
        .Q(p_0_in41_in),
        .R(1'b0));
  FDRE \CIE_GEN.CIE_BIT_GEN[8].cie_reg[8] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\CIE_GEN.CIE_BIT_GEN[8].cie_reg[8]_0 ),
        .Q(p_0_in40_in),
        .R(1'b0));
  FDRE \CIE_GEN.CIE_BIT_GEN[9].cie_reg[9] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\CIE_GEN.CIE_BIT_GEN[9].cie_reg[9]_0 ),
        .Q(p_0_in39_in),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \INTR_DETECT_GEN[0].ASYNC_GEN.intr_ff_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(intr[0]),
        .Q(\INTR_DETECT_GEN[0].ASYNC_GEN.intr_ff [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \INTR_DETECT_GEN[0].ASYNC_GEN.intr_ff_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\INTR_DETECT_GEN[0].ASYNC_GEN.intr_ff [0]),
        .Q(\INTR_DETECT_GEN[0].ASYNC_GEN.intr_ff [1]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hF4)) 
    \INTR_DETECT_GEN[0].EDGE_DETECT_GEN.hw_intr[0]_i_1 
       (.I0(\INTR_DETECT_GEN[0].EDGE_DETECT_GEN.intr_d1 ),
        .I1(\INTR_DETECT_GEN[0].ASYNC_GEN.intr_ff [1]),
        .I2(\INTR_DETECT_GEN[0].EDGE_DETECT_GEN.hw_intr_reg ),
        .O(\INTR_DETECT_GEN[0].EDGE_DETECT_GEN.hw_intr[0]_i_1_n_0 ));
  FDRE \INTR_DETECT_GEN[0].EDGE_DETECT_GEN.hw_intr_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\INTR_DETECT_GEN[0].EDGE_DETECT_GEN.hw_intr[0]_i_1_n_0 ),
        .Q(\INTR_DETECT_GEN[0].EDGE_DETECT_GEN.hw_intr_reg ),
        .R(\REG_GEN[0].IAR_NORMAL_MODE_GEN.iar_reg0 ));
  FDRE \INTR_DETECT_GEN[0].EDGE_DETECT_GEN.intr_d1_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\INTR_DETECT_GEN[0].ASYNC_GEN.intr_ff [1]),
        .Q(\INTR_DETECT_GEN[0].EDGE_DETECT_GEN.intr_d1 ),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \INTR_DETECT_GEN[10].ASYNC_GEN.intr_ff_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(intr[10]),
        .Q(\INTR_DETECT_GEN[10].ASYNC_GEN.intr_ff [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \INTR_DETECT_GEN[10].ASYNC_GEN.intr_ff_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\INTR_DETECT_GEN[10].ASYNC_GEN.intr_ff [0]),
        .Q(\INTR_DETECT_GEN[10].ASYNC_GEN.intr_ff [1]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hF4)) 
    \INTR_DETECT_GEN[10].EDGE_DETECT_GEN.hw_intr[10]_i_1 
       (.I0(\INTR_DETECT_GEN[10].EDGE_DETECT_GEN.intr_d1 ),
        .I1(\INTR_DETECT_GEN[10].ASYNC_GEN.intr_ff [1]),
        .I2(\INTR_DETECT_GEN[10].EDGE_DETECT_GEN.hw_intr_reg ),
        .O(\INTR_DETECT_GEN[10].EDGE_DETECT_GEN.hw_intr[10]_i_1_n_0 ));
  FDRE \INTR_DETECT_GEN[10].EDGE_DETECT_GEN.hw_intr_reg[10] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\INTR_DETECT_GEN[10].EDGE_DETECT_GEN.hw_intr[10]_i_1_n_0 ),
        .Q(\INTR_DETECT_GEN[10].EDGE_DETECT_GEN.hw_intr_reg ),
        .R(\REG_GEN[10].IAR_NORMAL_MODE_GEN.iar_reg0 ));
  FDRE \INTR_DETECT_GEN[10].EDGE_DETECT_GEN.intr_d1_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\INTR_DETECT_GEN[10].ASYNC_GEN.intr_ff [1]),
        .Q(\INTR_DETECT_GEN[10].EDGE_DETECT_GEN.intr_d1 ),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \INTR_DETECT_GEN[11].ASYNC_GEN.intr_ff_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(intr[11]),
        .Q(\INTR_DETECT_GEN[11].ASYNC_GEN.intr_ff [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \INTR_DETECT_GEN[11].ASYNC_GEN.intr_ff_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\INTR_DETECT_GEN[11].ASYNC_GEN.intr_ff [0]),
        .Q(\INTR_DETECT_GEN[11].ASYNC_GEN.intr_ff [1]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hF4)) 
    \INTR_DETECT_GEN[11].EDGE_DETECT_GEN.hw_intr[11]_i_1 
       (.I0(\INTR_DETECT_GEN[11].EDGE_DETECT_GEN.intr_d1 ),
        .I1(\INTR_DETECT_GEN[11].ASYNC_GEN.intr_ff [1]),
        .I2(\INTR_DETECT_GEN[11].EDGE_DETECT_GEN.hw_intr_reg ),
        .O(\INTR_DETECT_GEN[11].EDGE_DETECT_GEN.hw_intr[11]_i_1_n_0 ));
  FDRE \INTR_DETECT_GEN[11].EDGE_DETECT_GEN.hw_intr_reg[11] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\INTR_DETECT_GEN[11].EDGE_DETECT_GEN.hw_intr[11]_i_1_n_0 ),
        .Q(\INTR_DETECT_GEN[11].EDGE_DETECT_GEN.hw_intr_reg ),
        .R(\REG_GEN[11].IAR_NORMAL_MODE_GEN.iar_reg0 ));
  FDRE \INTR_DETECT_GEN[11].EDGE_DETECT_GEN.intr_d1_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\INTR_DETECT_GEN[11].ASYNC_GEN.intr_ff [1]),
        .Q(\INTR_DETECT_GEN[11].EDGE_DETECT_GEN.intr_d1 ),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \INTR_DETECT_GEN[12].ASYNC_GEN.intr_ff_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(intr[12]),
        .Q(\INTR_DETECT_GEN[12].ASYNC_GEN.intr_ff [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \INTR_DETECT_GEN[12].ASYNC_GEN.intr_ff_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\INTR_DETECT_GEN[12].ASYNC_GEN.intr_ff [0]),
        .Q(\INTR_DETECT_GEN[12].ASYNC_GEN.intr_ff [1]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hF4)) 
    \INTR_DETECT_GEN[12].EDGE_DETECT_GEN.hw_intr[12]_i_1 
       (.I0(\INTR_DETECT_GEN[12].EDGE_DETECT_GEN.intr_d1 ),
        .I1(\INTR_DETECT_GEN[12].ASYNC_GEN.intr_ff [1]),
        .I2(\INTR_DETECT_GEN[12].EDGE_DETECT_GEN.hw_intr_reg ),
        .O(\INTR_DETECT_GEN[12].EDGE_DETECT_GEN.hw_intr[12]_i_1_n_0 ));
  FDRE \INTR_DETECT_GEN[12].EDGE_DETECT_GEN.hw_intr_reg[12] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\INTR_DETECT_GEN[12].EDGE_DETECT_GEN.hw_intr[12]_i_1_n_0 ),
        .Q(\INTR_DETECT_GEN[12].EDGE_DETECT_GEN.hw_intr_reg ),
        .R(\REG_GEN[12].IAR_NORMAL_MODE_GEN.iar_reg0 ));
  FDRE \INTR_DETECT_GEN[12].EDGE_DETECT_GEN.intr_d1_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\INTR_DETECT_GEN[12].ASYNC_GEN.intr_ff [1]),
        .Q(\INTR_DETECT_GEN[12].EDGE_DETECT_GEN.intr_d1 ),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \INTR_DETECT_GEN[13].ASYNC_GEN.intr_ff_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(intr[13]),
        .Q(\INTR_DETECT_GEN[13].ASYNC_GEN.intr_ff [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \INTR_DETECT_GEN[13].ASYNC_GEN.intr_ff_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\INTR_DETECT_GEN[13].ASYNC_GEN.intr_ff [0]),
        .Q(\INTR_DETECT_GEN[13].ASYNC_GEN.intr_ff [1]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hF4)) 
    \INTR_DETECT_GEN[13].EDGE_DETECT_GEN.hw_intr[13]_i_1 
       (.I0(\INTR_DETECT_GEN[13].EDGE_DETECT_GEN.intr_d1 ),
        .I1(\INTR_DETECT_GEN[13].ASYNC_GEN.intr_ff [1]),
        .I2(\INTR_DETECT_GEN[13].EDGE_DETECT_GEN.hw_intr_reg ),
        .O(\INTR_DETECT_GEN[13].EDGE_DETECT_GEN.hw_intr[13]_i_1_n_0 ));
  FDRE \INTR_DETECT_GEN[13].EDGE_DETECT_GEN.hw_intr_reg[13] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\INTR_DETECT_GEN[13].EDGE_DETECT_GEN.hw_intr[13]_i_1_n_0 ),
        .Q(\INTR_DETECT_GEN[13].EDGE_DETECT_GEN.hw_intr_reg ),
        .R(\REG_GEN[13].IAR_NORMAL_MODE_GEN.iar_reg0 ));
  FDRE \INTR_DETECT_GEN[13].EDGE_DETECT_GEN.intr_d1_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\INTR_DETECT_GEN[13].ASYNC_GEN.intr_ff [1]),
        .Q(\INTR_DETECT_GEN[13].EDGE_DETECT_GEN.intr_d1 ),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \INTR_DETECT_GEN[14].ASYNC_GEN.intr_ff_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(intr[14]),
        .Q(\INTR_DETECT_GEN[14].ASYNC_GEN.intr_ff [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \INTR_DETECT_GEN[14].ASYNC_GEN.intr_ff_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\INTR_DETECT_GEN[14].ASYNC_GEN.intr_ff [0]),
        .Q(\INTR_DETECT_GEN[14].ASYNC_GEN.intr_ff [1]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hF4)) 
    \INTR_DETECT_GEN[14].EDGE_DETECT_GEN.hw_intr[14]_i_1 
       (.I0(\INTR_DETECT_GEN[14].EDGE_DETECT_GEN.intr_d1 ),
        .I1(\INTR_DETECT_GEN[14].ASYNC_GEN.intr_ff [1]),
        .I2(\INTR_DETECT_GEN[14].EDGE_DETECT_GEN.hw_intr_reg ),
        .O(\INTR_DETECT_GEN[14].EDGE_DETECT_GEN.hw_intr[14]_i_1_n_0 ));
  FDRE \INTR_DETECT_GEN[14].EDGE_DETECT_GEN.hw_intr_reg[14] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\INTR_DETECT_GEN[14].EDGE_DETECT_GEN.hw_intr[14]_i_1_n_0 ),
        .Q(\INTR_DETECT_GEN[14].EDGE_DETECT_GEN.hw_intr_reg ),
        .R(\REG_GEN[14].IAR_NORMAL_MODE_GEN.iar_reg0 ));
  FDRE \INTR_DETECT_GEN[14].EDGE_DETECT_GEN.intr_d1_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\INTR_DETECT_GEN[14].ASYNC_GEN.intr_ff [1]),
        .Q(\INTR_DETECT_GEN[14].EDGE_DETECT_GEN.intr_d1 ),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \INTR_DETECT_GEN[15].ASYNC_GEN.intr_ff_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(intr[15]),
        .Q(\INTR_DETECT_GEN[15].ASYNC_GEN.intr_ff [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \INTR_DETECT_GEN[15].ASYNC_GEN.intr_ff_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\INTR_DETECT_GEN[15].ASYNC_GEN.intr_ff [0]),
        .Q(\INTR_DETECT_GEN[15].ASYNC_GEN.intr_ff [1]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hF4)) 
    \INTR_DETECT_GEN[15].EDGE_DETECT_GEN.hw_intr[15]_i_1 
       (.I0(\INTR_DETECT_GEN[15].EDGE_DETECT_GEN.intr_d1 ),
        .I1(\INTR_DETECT_GEN[15].ASYNC_GEN.intr_ff [1]),
        .I2(\INTR_DETECT_GEN[15].EDGE_DETECT_GEN.hw_intr_reg ),
        .O(\INTR_DETECT_GEN[15].EDGE_DETECT_GEN.hw_intr[15]_i_1_n_0 ));
  FDRE \INTR_DETECT_GEN[15].EDGE_DETECT_GEN.hw_intr_reg[15] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\INTR_DETECT_GEN[15].EDGE_DETECT_GEN.hw_intr[15]_i_1_n_0 ),
        .Q(\INTR_DETECT_GEN[15].EDGE_DETECT_GEN.hw_intr_reg ),
        .R(\REG_GEN[15].IAR_NORMAL_MODE_GEN.iar_reg0 ));
  FDRE \INTR_DETECT_GEN[15].EDGE_DETECT_GEN.intr_d1_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\INTR_DETECT_GEN[15].ASYNC_GEN.intr_ff [1]),
        .Q(\INTR_DETECT_GEN[15].EDGE_DETECT_GEN.intr_d1 ),
        .R(SR));
  LUT3 #(
    .INIT(8'hF4)) 
    \INTR_DETECT_GEN[16].EDGE_DETECT_GEN.hw_intr[16]_i_1 
       (.I0(\INTR_DETECT_GEN[16].EDGE_DETECT_GEN.intr_d1 ),
        .I1(intr[16]),
        .I2(\INTR_DETECT_GEN[16].EDGE_DETECT_GEN.hw_intr_reg ),
        .O(\INTR_DETECT_GEN[16].EDGE_DETECT_GEN.hw_intr[16]_i_1_n_0 ));
  FDRE \INTR_DETECT_GEN[16].EDGE_DETECT_GEN.hw_intr_reg[16] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\INTR_DETECT_GEN[16].EDGE_DETECT_GEN.hw_intr[16]_i_1_n_0 ),
        .Q(\INTR_DETECT_GEN[16].EDGE_DETECT_GEN.hw_intr_reg ),
        .R(\REG_GEN[16].IAR_NORMAL_MODE_GEN.iar_reg0 ));
  FDRE \INTR_DETECT_GEN[16].EDGE_DETECT_GEN.intr_d1_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(intr[16]),
        .Q(\INTR_DETECT_GEN[16].EDGE_DETECT_GEN.intr_d1 ),
        .R(SR));
  LUT3 #(
    .INIT(8'hF4)) 
    \INTR_DETECT_GEN[17].EDGE_DETECT_GEN.hw_intr[17]_i_1 
       (.I0(\INTR_DETECT_GEN[17].EDGE_DETECT_GEN.intr_d1 ),
        .I1(intr[17]),
        .I2(\INTR_DETECT_GEN[17].EDGE_DETECT_GEN.hw_intr_reg ),
        .O(\INTR_DETECT_GEN[17].EDGE_DETECT_GEN.hw_intr[17]_i_1_n_0 ));
  FDRE \INTR_DETECT_GEN[17].EDGE_DETECT_GEN.hw_intr_reg[17] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\INTR_DETECT_GEN[17].EDGE_DETECT_GEN.hw_intr[17]_i_1_n_0 ),
        .Q(\INTR_DETECT_GEN[17].EDGE_DETECT_GEN.hw_intr_reg ),
        .R(\REG_GEN[17].IAR_NORMAL_MODE_GEN.iar_reg0 ));
  FDRE \INTR_DETECT_GEN[17].EDGE_DETECT_GEN.intr_d1_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(intr[17]),
        .Q(\INTR_DETECT_GEN[17].EDGE_DETECT_GEN.intr_d1 ),
        .R(SR));
  LUT3 #(
    .INIT(8'hF4)) 
    \INTR_DETECT_GEN[18].EDGE_DETECT_GEN.hw_intr[18]_i_1 
       (.I0(\INTR_DETECT_GEN[18].EDGE_DETECT_GEN.intr_d1 ),
        .I1(intr[18]),
        .I2(\INTR_DETECT_GEN[18].EDGE_DETECT_GEN.hw_intr_reg ),
        .O(\INTR_DETECT_GEN[18].EDGE_DETECT_GEN.hw_intr[18]_i_1_n_0 ));
  FDRE \INTR_DETECT_GEN[18].EDGE_DETECT_GEN.hw_intr_reg[18] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\INTR_DETECT_GEN[18].EDGE_DETECT_GEN.hw_intr[18]_i_1_n_0 ),
        .Q(\INTR_DETECT_GEN[18].EDGE_DETECT_GEN.hw_intr_reg ),
        .R(\REG_GEN[18].IAR_NORMAL_MODE_GEN.iar_reg0 ));
  FDRE \INTR_DETECT_GEN[18].EDGE_DETECT_GEN.intr_d1_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(intr[18]),
        .Q(\INTR_DETECT_GEN[18].EDGE_DETECT_GEN.intr_d1 ),
        .R(SR));
  LUT3 #(
    .INIT(8'hF4)) 
    \INTR_DETECT_GEN[19].EDGE_DETECT_GEN.hw_intr[19]_i_1 
       (.I0(\INTR_DETECT_GEN[19].EDGE_DETECT_GEN.intr_d1 ),
        .I1(intr[19]),
        .I2(\INTR_DETECT_GEN[19].EDGE_DETECT_GEN.hw_intr_reg ),
        .O(\INTR_DETECT_GEN[19].EDGE_DETECT_GEN.hw_intr[19]_i_1_n_0 ));
  FDRE \INTR_DETECT_GEN[19].EDGE_DETECT_GEN.hw_intr_reg[19] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\INTR_DETECT_GEN[19].EDGE_DETECT_GEN.hw_intr[19]_i_1_n_0 ),
        .Q(\INTR_DETECT_GEN[19].EDGE_DETECT_GEN.hw_intr_reg ),
        .R(\REG_GEN[19].IAR_NORMAL_MODE_GEN.iar_reg0 ));
  FDRE \INTR_DETECT_GEN[19].EDGE_DETECT_GEN.intr_d1_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(intr[19]),
        .Q(\INTR_DETECT_GEN[19].EDGE_DETECT_GEN.intr_d1 ),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \INTR_DETECT_GEN[1].ASYNC_GEN.intr_ff_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(intr[1]),
        .Q(\INTR_DETECT_GEN[1].ASYNC_GEN.intr_ff [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \INTR_DETECT_GEN[1].ASYNC_GEN.intr_ff_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\INTR_DETECT_GEN[1].ASYNC_GEN.intr_ff [0]),
        .Q(\INTR_DETECT_GEN[1].ASYNC_GEN.intr_ff [1]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hF4)) 
    \INTR_DETECT_GEN[1].EDGE_DETECT_GEN.hw_intr[1]_i_1 
       (.I0(\INTR_DETECT_GEN[1].EDGE_DETECT_GEN.intr_d1 ),
        .I1(\INTR_DETECT_GEN[1].ASYNC_GEN.intr_ff [1]),
        .I2(\INTR_DETECT_GEN[1].EDGE_DETECT_GEN.hw_intr_reg ),
        .O(\INTR_DETECT_GEN[1].EDGE_DETECT_GEN.hw_intr[1]_i_1_n_0 ));
  FDRE \INTR_DETECT_GEN[1].EDGE_DETECT_GEN.hw_intr_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\INTR_DETECT_GEN[1].EDGE_DETECT_GEN.hw_intr[1]_i_1_n_0 ),
        .Q(\INTR_DETECT_GEN[1].EDGE_DETECT_GEN.hw_intr_reg ),
        .R(\REG_GEN[1].IAR_NORMAL_MODE_GEN.iar_reg0 ));
  FDRE \INTR_DETECT_GEN[1].EDGE_DETECT_GEN.intr_d1_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\INTR_DETECT_GEN[1].ASYNC_GEN.intr_ff [1]),
        .Q(\INTR_DETECT_GEN[1].EDGE_DETECT_GEN.intr_d1 ),
        .R(SR));
  LUT3 #(
    .INIT(8'hF4)) 
    \INTR_DETECT_GEN[20].EDGE_DETECT_GEN.hw_intr[20]_i_1 
       (.I0(\INTR_DETECT_GEN[20].EDGE_DETECT_GEN.intr_d1 ),
        .I1(intr[20]),
        .I2(\INTR_DETECT_GEN[20].EDGE_DETECT_GEN.hw_intr_reg ),
        .O(\INTR_DETECT_GEN[20].EDGE_DETECT_GEN.hw_intr[20]_i_1_n_0 ));
  FDRE \INTR_DETECT_GEN[20].EDGE_DETECT_GEN.hw_intr_reg[20] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\INTR_DETECT_GEN[20].EDGE_DETECT_GEN.hw_intr[20]_i_1_n_0 ),
        .Q(\INTR_DETECT_GEN[20].EDGE_DETECT_GEN.hw_intr_reg ),
        .R(\REG_GEN[20].IAR_NORMAL_MODE_GEN.iar_reg0 ));
  FDRE \INTR_DETECT_GEN[20].EDGE_DETECT_GEN.intr_d1_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(intr[20]),
        .Q(\INTR_DETECT_GEN[20].EDGE_DETECT_GEN.intr_d1 ),
        .R(SR));
  LUT3 #(
    .INIT(8'hF4)) 
    \INTR_DETECT_GEN[21].EDGE_DETECT_GEN.hw_intr[21]_i_1 
       (.I0(\INTR_DETECT_GEN[21].EDGE_DETECT_GEN.intr_d1 ),
        .I1(intr[21]),
        .I2(\INTR_DETECT_GEN[21].EDGE_DETECT_GEN.hw_intr_reg ),
        .O(\INTR_DETECT_GEN[21].EDGE_DETECT_GEN.hw_intr[21]_i_1_n_0 ));
  FDRE \INTR_DETECT_GEN[21].EDGE_DETECT_GEN.hw_intr_reg[21] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\INTR_DETECT_GEN[21].EDGE_DETECT_GEN.hw_intr[21]_i_1_n_0 ),
        .Q(\INTR_DETECT_GEN[21].EDGE_DETECT_GEN.hw_intr_reg ),
        .R(\REG_GEN[21].IAR_NORMAL_MODE_GEN.iar_reg0 ));
  FDRE \INTR_DETECT_GEN[21].EDGE_DETECT_GEN.intr_d1_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(intr[21]),
        .Q(\INTR_DETECT_GEN[21].EDGE_DETECT_GEN.intr_d1 ),
        .R(SR));
  LUT3 #(
    .INIT(8'hF4)) 
    \INTR_DETECT_GEN[22].EDGE_DETECT_GEN.hw_intr[22]_i_1 
       (.I0(\INTR_DETECT_GEN[22].EDGE_DETECT_GEN.intr_d1 ),
        .I1(intr[22]),
        .I2(\INTR_DETECT_GEN[22].EDGE_DETECT_GEN.hw_intr_reg ),
        .O(\INTR_DETECT_GEN[22].EDGE_DETECT_GEN.hw_intr[22]_i_1_n_0 ));
  FDRE \INTR_DETECT_GEN[22].EDGE_DETECT_GEN.hw_intr_reg[22] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\INTR_DETECT_GEN[22].EDGE_DETECT_GEN.hw_intr[22]_i_1_n_0 ),
        .Q(\INTR_DETECT_GEN[22].EDGE_DETECT_GEN.hw_intr_reg ),
        .R(\REG_GEN[22].IAR_NORMAL_MODE_GEN.iar_reg0 ));
  FDRE \INTR_DETECT_GEN[22].EDGE_DETECT_GEN.intr_d1_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(intr[22]),
        .Q(\INTR_DETECT_GEN[22].EDGE_DETECT_GEN.intr_d1 ),
        .R(SR));
  LUT3 #(
    .INIT(8'hF4)) 
    \INTR_DETECT_GEN[23].EDGE_DETECT_GEN.hw_intr[23]_i_1 
       (.I0(\INTR_DETECT_GEN[23].EDGE_DETECT_GEN.intr_d1 ),
        .I1(intr[23]),
        .I2(\INTR_DETECT_GEN[23].EDGE_DETECT_GEN.hw_intr_reg ),
        .O(\INTR_DETECT_GEN[23].EDGE_DETECT_GEN.hw_intr[23]_i_1_n_0 ));
  FDRE \INTR_DETECT_GEN[23].EDGE_DETECT_GEN.hw_intr_reg[23] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\INTR_DETECT_GEN[23].EDGE_DETECT_GEN.hw_intr[23]_i_1_n_0 ),
        .Q(\INTR_DETECT_GEN[23].EDGE_DETECT_GEN.hw_intr_reg ),
        .R(\REG_GEN[23].IAR_NORMAL_MODE_GEN.iar_reg0 ));
  FDRE \INTR_DETECT_GEN[23].EDGE_DETECT_GEN.intr_d1_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(intr[23]),
        .Q(\INTR_DETECT_GEN[23].EDGE_DETECT_GEN.intr_d1 ),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \INTR_DETECT_GEN[2].ASYNC_GEN.intr_ff_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(intr[2]),
        .Q(\INTR_DETECT_GEN[2].ASYNC_GEN.intr_ff [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \INTR_DETECT_GEN[2].ASYNC_GEN.intr_ff_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\INTR_DETECT_GEN[2].ASYNC_GEN.intr_ff [0]),
        .Q(\INTR_DETECT_GEN[2].ASYNC_GEN.intr_ff [1]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hF4)) 
    \INTR_DETECT_GEN[2].EDGE_DETECT_GEN.hw_intr[2]_i_1 
       (.I0(\INTR_DETECT_GEN[2].EDGE_DETECT_GEN.intr_d1 ),
        .I1(\INTR_DETECT_GEN[2].ASYNC_GEN.intr_ff [1]),
        .I2(\INTR_DETECT_GEN[2].EDGE_DETECT_GEN.hw_intr_reg ),
        .O(\INTR_DETECT_GEN[2].EDGE_DETECT_GEN.hw_intr[2]_i_1_n_0 ));
  FDRE \INTR_DETECT_GEN[2].EDGE_DETECT_GEN.hw_intr_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\INTR_DETECT_GEN[2].EDGE_DETECT_GEN.hw_intr[2]_i_1_n_0 ),
        .Q(\INTR_DETECT_GEN[2].EDGE_DETECT_GEN.hw_intr_reg ),
        .R(\REG_GEN[2].IAR_NORMAL_MODE_GEN.iar_reg0 ));
  FDRE \INTR_DETECT_GEN[2].EDGE_DETECT_GEN.intr_d1_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\INTR_DETECT_GEN[2].ASYNC_GEN.intr_ff [1]),
        .Q(\INTR_DETECT_GEN[2].EDGE_DETECT_GEN.intr_d1 ),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \INTR_DETECT_GEN[3].ASYNC_GEN.intr_ff_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(intr[3]),
        .Q(\INTR_DETECT_GEN[3].ASYNC_GEN.intr_ff [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \INTR_DETECT_GEN[3].ASYNC_GEN.intr_ff_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\INTR_DETECT_GEN[3].ASYNC_GEN.intr_ff [0]),
        .Q(\INTR_DETECT_GEN[3].ASYNC_GEN.intr_ff [1]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hF4)) 
    \INTR_DETECT_GEN[3].EDGE_DETECT_GEN.hw_intr[3]_i_1 
       (.I0(\INTR_DETECT_GEN[3].EDGE_DETECT_GEN.intr_d1 ),
        .I1(\INTR_DETECT_GEN[3].ASYNC_GEN.intr_ff [1]),
        .I2(\INTR_DETECT_GEN[3].EDGE_DETECT_GEN.hw_intr_reg ),
        .O(\INTR_DETECT_GEN[3].EDGE_DETECT_GEN.hw_intr[3]_i_1_n_0 ));
  FDRE \INTR_DETECT_GEN[3].EDGE_DETECT_GEN.hw_intr_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\INTR_DETECT_GEN[3].EDGE_DETECT_GEN.hw_intr[3]_i_1_n_0 ),
        .Q(\INTR_DETECT_GEN[3].EDGE_DETECT_GEN.hw_intr_reg ),
        .R(\REG_GEN[3].IAR_NORMAL_MODE_GEN.iar_reg0 ));
  FDRE \INTR_DETECT_GEN[3].EDGE_DETECT_GEN.intr_d1_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\INTR_DETECT_GEN[3].ASYNC_GEN.intr_ff [1]),
        .Q(\INTR_DETECT_GEN[3].EDGE_DETECT_GEN.intr_d1 ),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \INTR_DETECT_GEN[4].ASYNC_GEN.intr_ff_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(intr[4]),
        .Q(\INTR_DETECT_GEN[4].ASYNC_GEN.intr_ff [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \INTR_DETECT_GEN[4].ASYNC_GEN.intr_ff_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\INTR_DETECT_GEN[4].ASYNC_GEN.intr_ff [0]),
        .Q(\INTR_DETECT_GEN[4].ASYNC_GEN.intr_ff [1]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hF4)) 
    \INTR_DETECT_GEN[4].EDGE_DETECT_GEN.hw_intr[4]_i_1 
       (.I0(\INTR_DETECT_GEN[4].EDGE_DETECT_GEN.intr_d1 ),
        .I1(\INTR_DETECT_GEN[4].ASYNC_GEN.intr_ff [1]),
        .I2(\INTR_DETECT_GEN[4].EDGE_DETECT_GEN.hw_intr_reg ),
        .O(\INTR_DETECT_GEN[4].EDGE_DETECT_GEN.hw_intr[4]_i_1_n_0 ));
  FDRE \INTR_DETECT_GEN[4].EDGE_DETECT_GEN.hw_intr_reg[4] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\INTR_DETECT_GEN[4].EDGE_DETECT_GEN.hw_intr[4]_i_1_n_0 ),
        .Q(\INTR_DETECT_GEN[4].EDGE_DETECT_GEN.hw_intr_reg ),
        .R(\REG_GEN[4].IAR_NORMAL_MODE_GEN.iar_reg0 ));
  FDRE \INTR_DETECT_GEN[4].EDGE_DETECT_GEN.intr_d1_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\INTR_DETECT_GEN[4].ASYNC_GEN.intr_ff [1]),
        .Q(\INTR_DETECT_GEN[4].EDGE_DETECT_GEN.intr_d1 ),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \INTR_DETECT_GEN[5].ASYNC_GEN.intr_ff_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(intr[5]),
        .Q(\INTR_DETECT_GEN[5].ASYNC_GEN.intr_ff [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \INTR_DETECT_GEN[5].ASYNC_GEN.intr_ff_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\INTR_DETECT_GEN[5].ASYNC_GEN.intr_ff [0]),
        .Q(\INTR_DETECT_GEN[5].ASYNC_GEN.intr_ff [1]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hF4)) 
    \INTR_DETECT_GEN[5].EDGE_DETECT_GEN.hw_intr[5]_i_1 
       (.I0(\INTR_DETECT_GEN[5].EDGE_DETECT_GEN.intr_d1 ),
        .I1(\INTR_DETECT_GEN[5].ASYNC_GEN.intr_ff [1]),
        .I2(\INTR_DETECT_GEN[5].EDGE_DETECT_GEN.hw_intr_reg ),
        .O(\INTR_DETECT_GEN[5].EDGE_DETECT_GEN.hw_intr[5]_i_1_n_0 ));
  FDRE \INTR_DETECT_GEN[5].EDGE_DETECT_GEN.hw_intr_reg[5] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\INTR_DETECT_GEN[5].EDGE_DETECT_GEN.hw_intr[5]_i_1_n_0 ),
        .Q(\INTR_DETECT_GEN[5].EDGE_DETECT_GEN.hw_intr_reg ),
        .R(\REG_GEN[5].IAR_NORMAL_MODE_GEN.iar_reg0 ));
  FDRE \INTR_DETECT_GEN[5].EDGE_DETECT_GEN.intr_d1_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\INTR_DETECT_GEN[5].ASYNC_GEN.intr_ff [1]),
        .Q(\INTR_DETECT_GEN[5].EDGE_DETECT_GEN.intr_d1 ),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \INTR_DETECT_GEN[6].ASYNC_GEN.intr_ff_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(intr[6]),
        .Q(\INTR_DETECT_GEN[6].ASYNC_GEN.intr_ff [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \INTR_DETECT_GEN[6].ASYNC_GEN.intr_ff_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\INTR_DETECT_GEN[6].ASYNC_GEN.intr_ff [0]),
        .Q(\INTR_DETECT_GEN[6].ASYNC_GEN.intr_ff [1]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hF4)) 
    \INTR_DETECT_GEN[6].EDGE_DETECT_GEN.hw_intr[6]_i_1 
       (.I0(\INTR_DETECT_GEN[6].EDGE_DETECT_GEN.intr_d1 ),
        .I1(\INTR_DETECT_GEN[6].ASYNC_GEN.intr_ff [1]),
        .I2(\INTR_DETECT_GEN[6].EDGE_DETECT_GEN.hw_intr_reg ),
        .O(\INTR_DETECT_GEN[6].EDGE_DETECT_GEN.hw_intr[6]_i_1_n_0 ));
  FDRE \INTR_DETECT_GEN[6].EDGE_DETECT_GEN.hw_intr_reg[6] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\INTR_DETECT_GEN[6].EDGE_DETECT_GEN.hw_intr[6]_i_1_n_0 ),
        .Q(\INTR_DETECT_GEN[6].EDGE_DETECT_GEN.hw_intr_reg ),
        .R(\REG_GEN[6].IAR_NORMAL_MODE_GEN.iar_reg0 ));
  FDRE \INTR_DETECT_GEN[6].EDGE_DETECT_GEN.intr_d1_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\INTR_DETECT_GEN[6].ASYNC_GEN.intr_ff [1]),
        .Q(\INTR_DETECT_GEN[6].EDGE_DETECT_GEN.intr_d1 ),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \INTR_DETECT_GEN[7].ASYNC_GEN.intr_ff_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(intr[7]),
        .Q(\INTR_DETECT_GEN[7].ASYNC_GEN.intr_ff [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \INTR_DETECT_GEN[7].ASYNC_GEN.intr_ff_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\INTR_DETECT_GEN[7].ASYNC_GEN.intr_ff [0]),
        .Q(\INTR_DETECT_GEN[7].ASYNC_GEN.intr_ff [1]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hF4)) 
    \INTR_DETECT_GEN[7].EDGE_DETECT_GEN.hw_intr[7]_i_1 
       (.I0(\INTR_DETECT_GEN[7].EDGE_DETECT_GEN.intr_d1 ),
        .I1(\INTR_DETECT_GEN[7].ASYNC_GEN.intr_ff [1]),
        .I2(\INTR_DETECT_GEN[7].EDGE_DETECT_GEN.hw_intr_reg ),
        .O(\INTR_DETECT_GEN[7].EDGE_DETECT_GEN.hw_intr[7]_i_1_n_0 ));
  FDRE \INTR_DETECT_GEN[7].EDGE_DETECT_GEN.hw_intr_reg[7] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\INTR_DETECT_GEN[7].EDGE_DETECT_GEN.hw_intr[7]_i_1_n_0 ),
        .Q(\INTR_DETECT_GEN[7].EDGE_DETECT_GEN.hw_intr_reg ),
        .R(\REG_GEN[7].IAR_NORMAL_MODE_GEN.iar_reg0 ));
  FDRE \INTR_DETECT_GEN[7].EDGE_DETECT_GEN.intr_d1_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\INTR_DETECT_GEN[7].ASYNC_GEN.intr_ff [1]),
        .Q(\INTR_DETECT_GEN[7].EDGE_DETECT_GEN.intr_d1 ),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \INTR_DETECT_GEN[8].ASYNC_GEN.intr_ff_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(intr[8]),
        .Q(\INTR_DETECT_GEN[8].ASYNC_GEN.intr_ff [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \INTR_DETECT_GEN[8].ASYNC_GEN.intr_ff_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\INTR_DETECT_GEN[8].ASYNC_GEN.intr_ff [0]),
        .Q(\INTR_DETECT_GEN[8].ASYNC_GEN.intr_ff [1]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hF4)) 
    \INTR_DETECT_GEN[8].EDGE_DETECT_GEN.hw_intr[8]_i_1 
       (.I0(\INTR_DETECT_GEN[8].EDGE_DETECT_GEN.intr_d1 ),
        .I1(\INTR_DETECT_GEN[8].ASYNC_GEN.intr_ff [1]),
        .I2(\INTR_DETECT_GEN[8].EDGE_DETECT_GEN.hw_intr_reg ),
        .O(\INTR_DETECT_GEN[8].EDGE_DETECT_GEN.hw_intr[8]_i_1_n_0 ));
  FDRE \INTR_DETECT_GEN[8].EDGE_DETECT_GEN.hw_intr_reg[8] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\INTR_DETECT_GEN[8].EDGE_DETECT_GEN.hw_intr[8]_i_1_n_0 ),
        .Q(\INTR_DETECT_GEN[8].EDGE_DETECT_GEN.hw_intr_reg ),
        .R(\REG_GEN[8].IAR_NORMAL_MODE_GEN.iar_reg0 ));
  FDRE \INTR_DETECT_GEN[8].EDGE_DETECT_GEN.intr_d1_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\INTR_DETECT_GEN[8].ASYNC_GEN.intr_ff [1]),
        .Q(\INTR_DETECT_GEN[8].EDGE_DETECT_GEN.intr_d1 ),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \INTR_DETECT_GEN[9].ASYNC_GEN.intr_ff_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(intr[9]),
        .Q(\INTR_DETECT_GEN[9].ASYNC_GEN.intr_ff [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \INTR_DETECT_GEN[9].ASYNC_GEN.intr_ff_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\INTR_DETECT_GEN[9].ASYNC_GEN.intr_ff [0]),
        .Q(\INTR_DETECT_GEN[9].ASYNC_GEN.intr_ff [1]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hF4)) 
    \INTR_DETECT_GEN[9].EDGE_DETECT_GEN.hw_intr[9]_i_1 
       (.I0(\INTR_DETECT_GEN[9].EDGE_DETECT_GEN.intr_d1 ),
        .I1(\INTR_DETECT_GEN[9].ASYNC_GEN.intr_ff [1]),
        .I2(\INTR_DETECT_GEN[9].EDGE_DETECT_GEN.hw_intr_reg ),
        .O(\INTR_DETECT_GEN[9].EDGE_DETECT_GEN.hw_intr[9]_i_1_n_0 ));
  FDRE \INTR_DETECT_GEN[9].EDGE_DETECT_GEN.hw_intr_reg[9] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\INTR_DETECT_GEN[9].EDGE_DETECT_GEN.hw_intr[9]_i_1_n_0 ),
        .Q(\INTR_DETECT_GEN[9].EDGE_DETECT_GEN.hw_intr_reg ),
        .R(\REG_GEN[9].IAR_NORMAL_MODE_GEN.iar_reg0 ));
  FDRE \INTR_DETECT_GEN[9].EDGE_DETECT_GEN.intr_d1_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\INTR_DETECT_GEN[9].ASYNC_GEN.intr_ff [1]),
        .Q(\INTR_DETECT_GEN[9].EDGE_DETECT_GEN.intr_d1 ),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \IPR_GEN.ipr[0]_i_1 
       (.I0(\REG_GEN[0].isr_reg_n_0_[0] ),
        .I1(\REG_GEN[0].ier_reg_n_0_[0] ),
        .O(\IPR_GEN.ipr[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \IPR_GEN.ipr[10]_i_1 
       (.I0(p_1_in72_in),
        .I1(\REG_GEN[10].ier_reg_n_0_[10] ),
        .O(\IPR_GEN.ipr[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \IPR_GEN.ipr[11]_i_1 
       (.I0(p_1_in70_in),
        .I1(\REG_GEN[11].ier_reg_n_0_[11] ),
        .O(\IPR_GEN.ipr[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \IPR_GEN.ipr[12]_i_1 
       (.I0(p_1_in68_in),
        .I1(\REG_GEN[12].ier_reg_n_0_[12] ),
        .O(\IPR_GEN.ipr[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \IPR_GEN.ipr[13]_i_1 
       (.I0(p_1_in66_in),
        .I1(\REG_GEN[13].ier_reg_n_0_[13] ),
        .O(\IPR_GEN.ipr[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \IPR_GEN.ipr[14]_i_1 
       (.I0(p_1_in64_in),
        .I1(\REG_GEN[14].ier_reg_n_0_[14] ),
        .O(\IPR_GEN.ipr[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \IPR_GEN.ipr[15]_i_1 
       (.I0(p_1_in62_in),
        .I1(\REG_GEN[15].ier_reg_n_0_[15] ),
        .O(\IPR_GEN.ipr[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \IPR_GEN.ipr[16]_i_1 
       (.I0(p_1_in60_in),
        .I1(\REG_GEN[16].ier_reg_n_0_[16] ),
        .O(\IPR_GEN.ipr[16]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \IPR_GEN.ipr[17]_i_1 
       (.I0(p_1_in58_in),
        .I1(\REG_GEN[17].ier_reg_n_0_[17] ),
        .O(\IPR_GEN.ipr[17]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \IPR_GEN.ipr[18]_i_1 
       (.I0(p_1_in56_in),
        .I1(\REG_GEN[18].ier_reg_n_0_[18] ),
        .O(\IPR_GEN.ipr[18]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \IPR_GEN.ipr[19]_i_1 
       (.I0(p_1_in54_in),
        .I1(\REG_GEN[19].ier_reg_n_0_[19] ),
        .O(\IPR_GEN.ipr[19]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \IPR_GEN.ipr[1]_i_1 
       (.I0(p_1_in90_in),
        .I1(p_0_in89_in),
        .O(\IPR_GEN.ipr[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \IPR_GEN.ipr[20]_i_1 
       (.I0(p_1_in52_in),
        .I1(\REG_GEN[20].ier_reg_n_0_[20] ),
        .O(\IPR_GEN.ipr[20]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \IPR_GEN.ipr[21]_i_1 
       (.I0(p_1_in50_in),
        .I1(\REG_GEN[21].ier_reg_n_0_[21] ),
        .O(\IPR_GEN.ipr[21]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \IPR_GEN.ipr[22]_i_1 
       (.I0(p_1_in48_in),
        .I1(\REG_GEN[22].ier_reg_n_0_[22] ),
        .O(\IPR_GEN.ipr[22]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \IPR_GEN.ipr[23]_i_1 
       (.I0(p_1_in46_in),
        .I1(\REG_GEN[23].ier_reg_n_0_[23] ),
        .O(\IPR_GEN.ipr[23]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \IPR_GEN.ipr[2]_i_1 
       (.I0(p_1_in88_in),
        .I1(p_0_in87_in),
        .O(\IPR_GEN.ipr[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \IPR_GEN.ipr[3]_i_1 
       (.I0(p_1_in86_in),
        .I1(p_0_in85_in),
        .O(\IPR_GEN.ipr[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \IPR_GEN.ipr[4]_i_1 
       (.I0(p_1_in84_in),
        .I1(p_0_in83_in),
        .O(\IPR_GEN.ipr[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \IPR_GEN.ipr[5]_i_1 
       (.I0(p_1_in82_in),
        .I1(p_0_in81_in),
        .O(\IPR_GEN.ipr[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \IPR_GEN.ipr[6]_i_1 
       (.I0(p_1_in80_in),
        .I1(p_0_in79_in),
        .O(\IPR_GEN.ipr[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \IPR_GEN.ipr[7]_i_1 
       (.I0(p_1_in78_in),
        .I1(p_0_in77_in),
        .O(\IPR_GEN.ipr[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \IPR_GEN.ipr[8]_i_1 
       (.I0(p_1_in76_in),
        .I1(p_0_in75_in),
        .O(\IPR_GEN.ipr[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \IPR_GEN.ipr[9]_i_1 
       (.I0(p_1_in74_in),
        .I1(p_0_in73_in),
        .O(\IPR_GEN.ipr[9]_i_1_n_0 ));
  FDRE \IPR_GEN.ipr_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\IPR_GEN.ipr[0]_i_1_n_0 ),
        .Q(\IPR_GEN.ipr_reg[23]_0 [0]),
        .R(SR));
  FDRE \IPR_GEN.ipr_reg[10] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\IPR_GEN.ipr[10]_i_1_n_0 ),
        .Q(\IPR_GEN.ipr_reg[23]_0 [10]),
        .R(SR));
  FDRE \IPR_GEN.ipr_reg[11] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\IPR_GEN.ipr[11]_i_1_n_0 ),
        .Q(\IPR_GEN.ipr_reg[23]_0 [11]),
        .R(SR));
  FDRE \IPR_GEN.ipr_reg[12] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\IPR_GEN.ipr[12]_i_1_n_0 ),
        .Q(\IPR_GEN.ipr_reg[23]_0 [12]),
        .R(SR));
  FDRE \IPR_GEN.ipr_reg[13] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\IPR_GEN.ipr[13]_i_1_n_0 ),
        .Q(\IPR_GEN.ipr_reg[23]_0 [13]),
        .R(SR));
  FDRE \IPR_GEN.ipr_reg[14] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\IPR_GEN.ipr[14]_i_1_n_0 ),
        .Q(\IPR_GEN.ipr_reg[23]_0 [14]),
        .R(SR));
  FDRE \IPR_GEN.ipr_reg[15] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\IPR_GEN.ipr[15]_i_1_n_0 ),
        .Q(\IPR_GEN.ipr_reg[23]_0 [15]),
        .R(SR));
  FDRE \IPR_GEN.ipr_reg[16] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\IPR_GEN.ipr[16]_i_1_n_0 ),
        .Q(\IPR_GEN.ipr_reg[23]_0 [16]),
        .R(SR));
  FDRE \IPR_GEN.ipr_reg[17] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\IPR_GEN.ipr[17]_i_1_n_0 ),
        .Q(\IPR_GEN.ipr_reg[23]_0 [17]),
        .R(SR));
  FDRE \IPR_GEN.ipr_reg[18] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\IPR_GEN.ipr[18]_i_1_n_0 ),
        .Q(\IPR_GEN.ipr_reg[23]_0 [18]),
        .R(SR));
  FDRE \IPR_GEN.ipr_reg[19] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\IPR_GEN.ipr[19]_i_1_n_0 ),
        .Q(\IPR_GEN.ipr_reg[23]_0 [19]),
        .R(SR));
  FDRE \IPR_GEN.ipr_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\IPR_GEN.ipr[1]_i_1_n_0 ),
        .Q(\IPR_GEN.ipr_reg[23]_0 [1]),
        .R(SR));
  FDRE \IPR_GEN.ipr_reg[20] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\IPR_GEN.ipr[20]_i_1_n_0 ),
        .Q(\IPR_GEN.ipr_reg[23]_0 [20]),
        .R(SR));
  FDRE \IPR_GEN.ipr_reg[21] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\IPR_GEN.ipr[21]_i_1_n_0 ),
        .Q(\IPR_GEN.ipr_reg[23]_0 [21]),
        .R(SR));
  FDRE \IPR_GEN.ipr_reg[22] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\IPR_GEN.ipr[22]_i_1_n_0 ),
        .Q(\IPR_GEN.ipr_reg[23]_0 [22]),
        .R(SR));
  FDRE \IPR_GEN.ipr_reg[23] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\IPR_GEN.ipr[23]_i_1_n_0 ),
        .Q(\IPR_GEN.ipr_reg[23]_0 [23]),
        .R(SR));
  FDRE \IPR_GEN.ipr_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\IPR_GEN.ipr[2]_i_1_n_0 ),
        .Q(\IPR_GEN.ipr_reg[23]_0 [2]),
        .R(SR));
  FDRE \IPR_GEN.ipr_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\IPR_GEN.ipr[3]_i_1_n_0 ),
        .Q(\IPR_GEN.ipr_reg[23]_0 [3]),
        .R(SR));
  FDRE \IPR_GEN.ipr_reg[4] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\IPR_GEN.ipr[4]_i_1_n_0 ),
        .Q(\IPR_GEN.ipr_reg[23]_0 [4]),
        .R(SR));
  FDRE \IPR_GEN.ipr_reg[5] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\IPR_GEN.ipr[5]_i_1_n_0 ),
        .Q(\IPR_GEN.ipr_reg[23]_0 [5]),
        .R(SR));
  FDRE \IPR_GEN.ipr_reg[6] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\IPR_GEN.ipr[6]_i_1_n_0 ),
        .Q(\IPR_GEN.ipr_reg[23]_0 [6]),
        .R(SR));
  FDRE \IPR_GEN.ipr_reg[7] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\IPR_GEN.ipr[7]_i_1_n_0 ),
        .Q(\IPR_GEN.ipr_reg[23]_0 [7]),
        .R(SR));
  FDRE \IPR_GEN.ipr_reg[8] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\IPR_GEN.ipr[8]_i_1_n_0 ),
        .Q(\IPR_GEN.ipr_reg[23]_0 [8]),
        .R(SR));
  FDRE \IPR_GEN.ipr_reg[9] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\IPR_GEN.ipr[9]_i_1_n_0 ),
        .Q(\IPR_GEN.ipr_reg[23]_0 [9]),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT4 #(
    .INIT(16'hE000)) 
    \IRQ_LEVEL_GEN.IRQ_LEVEL_NORMAL_ON_AXI_CLK_GEN.Irq_i_1 
       (.I0(irq),
        .I1(mer),
        .I2(irq_gen),
        .I3(s_axi_aresetn),
        .O(\IRQ_LEVEL_GEN.IRQ_LEVEL_NORMAL_ON_AXI_CLK_GEN.Irq_i_1_n_0 ));
  FDRE \IRQ_LEVEL_GEN.IRQ_LEVEL_NORMAL_ON_AXI_CLK_GEN.Irq_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\IRQ_LEVEL_GEN.IRQ_LEVEL_NORMAL_ON_AXI_CLK_GEN.Irq_i_1_n_0 ),
        .Q(irq),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0F4F0F4F0F4FFF4F)) 
    \IVR_GEN.ivr[0]_i_1 
       (.I0(\IVR_GEN.ivr[0]_i_2_n_0 ),
        .I1(\IVR_GEN.ivr[0]_i_3_n_0 ),
        .I2(s_axi_aresetn),
        .I3(irq_gen_i_3_n_0),
        .I4(\IPR_GEN.ipr[20]_i_1_n_0 ),
        .I5(\IVR_GEN.ivr[0]_i_4_n_0 ),
        .O(\IVR_GEN.ivr[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFACAAAAFFAFAAAA)) 
    \IVR_GEN.ivr[0]_i_2 
       (.I0(\IVR_GEN.ivr[0]_i_5_n_0 ),
        .I1(\IPR_GEN.ipr[8]_i_1_n_0 ),
        .I2(\IPR_GEN.ipr[7]_i_1_n_0 ),
        .I3(\IPR_GEN.ipr[6]_i_1_n_0 ),
        .I4(\IVR_GEN.ivr[0]_i_6_n_0 ),
        .I5(\IVR_GEN.ivr[0]_i_7_n_0 ),
        .O(\IVR_GEN.ivr[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFF01)) 
    \IVR_GEN.ivr[0]_i_3 
       (.I0(\IVR_GEN.ivr[0]_i_8_n_0 ),
        .I1(\IVR_GEN.ivr[2]_i_3_n_0 ),
        .I2(\IPR_GEN.ipr[16]_i_1_n_0 ),
        .I3(\IVR_GEN.ivr[0]_i_9_n_0 ),
        .I4(irq_gen_i_4_n_0),
        .I5(\IVR_GEN.ivr[1]_i_8_n_0 ),
        .O(\IVR_GEN.ivr[0]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h0888)) 
    \IVR_GEN.ivr[0]_i_4 
       (.I0(\REG_GEN[22].ier_reg_n_0_[22] ),
        .I1(p_1_in48_in),
        .I2(\REG_GEN[21].ier_reg_n_0_[21] ),
        .I3(p_1_in50_in),
        .O(\IVR_GEN.ivr[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF0F000F08)) 
    \IVR_GEN.ivr[0]_i_5 
       (.I0(p_1_in84_in),
        .I1(p_0_in83_in),
        .I2(\IPR_GEN.ipr[1]_i_1_n_0 ),
        .I3(\IPR_GEN.ipr[2]_i_1_n_0 ),
        .I4(\IPR_GEN.ipr[3]_i_1_n_0 ),
        .I5(\IPR_GEN.ipr[0]_i_1_n_0 ),
        .O(\IVR_GEN.ivr[0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000000700070007)) 
    \IVR_GEN.ivr[0]_i_6 
       (.I0(p_0_in81_in),
        .I1(p_1_in82_in),
        .I2(\IVR_GEN.ivr[3]_i_5_n_0 ),
        .I3(\IVR_GEN.ivr[3]_i_4_n_0 ),
        .I4(p_1_in84_in),
        .I5(p_0_in83_in),
        .O(\IVR_GEN.ivr[0]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT4 #(
    .INIT(16'h8FFF)) 
    \IVR_GEN.ivr[0]_i_7 
       (.I0(p_0_in73_in),
        .I1(p_1_in74_in),
        .I2(\REG_GEN[10].ier_reg_n_0_[10] ),
        .I3(p_1_in72_in),
        .O(\IVR_GEN.ivr[0]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h0888)) 
    \IVR_GEN.ivr[0]_i_8 
       (.I0(\REG_GEN[18].ier_reg_n_0_[18] ),
        .I1(p_1_in56_in),
        .I2(\REG_GEN[17].ier_reg_n_0_[17] ),
        .I3(p_1_in58_in),
        .O(\IVR_GEN.ivr[0]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFF40FF55FF40FF40)) 
    \IVR_GEN.ivr[0]_i_9 
       (.I0(\IPR_GEN.ipr[12]_i_1_n_0 ),
        .I1(\REG_GEN[13].ier_reg_n_0_[13] ),
        .I2(p_1_in66_in),
        .I3(\IPR_GEN.ipr[11]_i_1_n_0 ),
        .I4(\IPR_GEN.ipr[14]_i_1_n_0 ),
        .I5(\IPR_GEN.ipr[15]_i_1_n_0 ),
        .O(\IVR_GEN.ivr[0]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF010BFFFF)) 
    \IVR_GEN.ivr[1]_i_1 
       (.I0(\IVR_GEN.ivr[1]_i_2_n_0 ),
        .I1(\IVR_GEN.ivr[1]_i_3_n_0 ),
        .I2(\IVR_GEN.ivr[1]_i_4_n_0 ),
        .I3(\IPR_GEN.ipr[17]_i_1_n_0 ),
        .I4(s_axi_aresetn),
        .I5(\IVR_GEN.ivr[1]_i_5_n_0 ),
        .O(\IVR_GEN.ivr[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000010101)) 
    \IVR_GEN.ivr[1]_i_2 
       (.I0(\IVR_GEN.ivr[2]_i_3_n_0 ),
        .I1(irq_gen_i_4_n_0),
        .I2(\IPR_GEN.ipr[9]_i_1_n_0 ),
        .I3(p_1_in72_in),
        .I4(\REG_GEN[10].ier_reg_n_0_[10] ),
        .I5(\IPR_GEN.ipr[16]_i_1_n_0 ),
        .O(\IVR_GEN.ivr[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0001000100010000)) 
    \IVR_GEN.ivr[1]_i_3 
       (.I0(irq_gen_i_4_n_0),
        .I1(\IPR_GEN.ipr[9]_i_1_n_0 ),
        .I2(\IPR_GEN.ipr[10]_i_1_n_0 ),
        .I3(\IPR_GEN.ipr[11]_i_1_n_0 ),
        .I4(\IVR_GEN.ivr[2]_i_5_n_0 ),
        .I5(\IVR_GEN.ivr[1]_i_6_n_0 ),
        .O(\IVR_GEN.ivr[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00FF00FF00FF0101)) 
    \IVR_GEN.ivr[1]_i_4 
       (.I0(irq_gen_i_5_n_0),
        .I1(\IPR_GEN.ipr[10]_i_1_n_0 ),
        .I2(\IVR_GEN.ivr[2]_i_3_n_0 ),
        .I3(\IVR_GEN.ivr[1]_i_7_n_0 ),
        .I4(\IPR_GEN.ipr[9]_i_1_n_0 ),
        .I5(irq_gen_i_4_n_0),
        .O(\IVR_GEN.ivr[1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \IVR_GEN.ivr[1]_i_5 
       (.I0(\IPR_GEN.ipr[21]_i_1_n_0 ),
        .I1(\IVR_GEN.ivr[2]_i_3_n_0 ),
        .I2(irq_gen_i_4_n_0),
        .I3(\IVR_GEN.ivr[1]_i_8_n_0 ),
        .I4(irq_gen_i_5_n_0),
        .I5(\IPR_GEN.ipr[20]_i_1_n_0 ),
        .O(\IVR_GEN.ivr[1]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT4 #(
    .INIT(16'h0777)) 
    \IVR_GEN.ivr[1]_i_6 
       (.I0(\REG_GEN[15].ier_reg_n_0_[15] ),
        .I1(p_1_in62_in),
        .I2(\REG_GEN[14].ier_reg_n_0_[14] ),
        .I3(p_1_in64_in),
        .O(\IVR_GEN.ivr[1]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0000FFFF0000002A)) 
    \IVR_GEN.ivr[1]_i_7 
       (.I0(\IVR_GEN.ivr[3]_i_6_n_0 ),
        .I1(p_0_in81_in),
        .I2(p_1_in82_in),
        .I3(\IPR_GEN.ipr[4]_i_1_n_0 ),
        .I4(\IVR_GEN.ivr[3]_i_4_n_0 ),
        .I5(\IVR_GEN.ivr[3]_i_5_n_0 ),
        .O(\IVR_GEN.ivr[1]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \IVR_GEN.ivr[1]_i_8 
       (.I0(\REG_GEN[10].ier_reg_n_0_[10] ),
        .I1(p_1_in72_in),
        .I2(p_0_in73_in),
        .I3(p_1_in74_in),
        .O(\IVR_GEN.ivr[1]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hABFFABFFFFFFABFF)) 
    \IVR_GEN.ivr[2]_i_1 
       (.I0(irq_gen_i_3_n_0),
        .I1(\IVR_GEN.ivr[3]_i_2_n_0 ),
        .I2(\IVR_GEN.ivr[2]_i_2_n_0 ),
        .I3(s_axi_aresetn),
        .I4(\IVR_GEN.ivr[2]_i_3_n_0 ),
        .I5(\IVR_GEN.ivr[2]_i_4_n_0 ),
        .O(\IVR_GEN.ivr[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \IVR_GEN.ivr[2]_i_2 
       (.I0(p_1_in88_in),
        .I1(p_0_in87_in),
        .I2(p_1_in86_in),
        .I3(p_0_in85_in),
        .I4(\IVR_GEN.ivr[3]_i_4_n_0 ),
        .O(\IVR_GEN.ivr[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \IVR_GEN.ivr[2]_i_3 
       (.I0(\IVR_GEN.ivr[2]_i_5_n_0 ),
        .I1(p_1_in64_in),
        .I2(\REG_GEN[14].ier_reg_n_0_[14] ),
        .I3(p_1_in62_in),
        .I4(\REG_GEN[15].ier_reg_n_0_[15] ),
        .O(\IVR_GEN.ivr[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF888)) 
    \IVR_GEN.ivr[2]_i_4 
       (.I0(\REG_GEN[11].ier_reg_n_0_[11] ),
        .I1(p_1_in70_in),
        .I2(\REG_GEN[10].ier_reg_n_0_[10] ),
        .I3(p_1_in72_in),
        .I4(\IPR_GEN.ipr[9]_i_1_n_0 ),
        .I5(irq_gen_i_4_n_0),
        .O(\IVR_GEN.ivr[2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \IVR_GEN.ivr[2]_i_5 
       (.I0(\REG_GEN[12].ier_reg_n_0_[12] ),
        .I1(p_1_in68_in),
        .I2(p_1_in70_in),
        .I3(\REG_GEN[11].ier_reg_n_0_[11] ),
        .I4(p_1_in66_in),
        .I5(\REG_GEN[13].ier_reg_n_0_[13] ),
        .O(\IVR_GEN.ivr[2]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h00040004FFFF0004)) 
    \IVR_GEN.ivr[3]_i_1 
       (.I0(\IPR_GEN.ipr[21]_i_1_n_0 ),
        .I1(irq_gen_i_3_n_0),
        .I2(\IPR_GEN.ipr[20]_i_1_n_0 ),
        .I3(irq_gen_i_2_n_0),
        .I4(\IVR_GEN.ivr[3]_i_2_n_0 ),
        .I5(\IVR_GEN.ivr[3]_i_3_n_0 ),
        .O(\IVR_GEN.ivr[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000010101)) 
    \IVR_GEN.ivr[3]_i_2 
       (.I0(\IPR_GEN.ipr[4]_i_1_n_0 ),
        .I1(\IVR_GEN.ivr[3]_i_4_n_0 ),
        .I2(\IVR_GEN.ivr[3]_i_5_n_0 ),
        .I3(p_1_in82_in),
        .I4(p_0_in81_in),
        .I5(\IVR_GEN.ivr[3]_i_6_n_0 ),
        .O(\IVR_GEN.ivr[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000777)) 
    \IVR_GEN.ivr[3]_i_3 
       (.I0(\REG_GEN[10].ier_reg_n_0_[10] ),
        .I1(p_1_in72_in),
        .I2(p_0_in73_in),
        .I3(p_1_in74_in),
        .I4(irq_gen_i_4_n_0),
        .I5(\IVR_GEN.ivr[2]_i_3_n_0 ),
        .O(\IVR_GEN.ivr[3]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \IVR_GEN.ivr[3]_i_4 
       (.I0(p_0_in89_in),
        .I1(p_1_in90_in),
        .I2(\REG_GEN[0].ier_reg_n_0_[0] ),
        .I3(\REG_GEN[0].isr_reg_n_0_[0] ),
        .O(\IVR_GEN.ivr[3]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \IVR_GEN.ivr[3]_i_5 
       (.I0(p_0_in85_in),
        .I1(p_1_in86_in),
        .I2(p_0_in87_in),
        .I3(p_1_in88_in),
        .O(\IVR_GEN.ivr[3]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \IVR_GEN.ivr[3]_i_6 
       (.I0(p_0_in77_in),
        .I1(p_1_in78_in),
        .I2(p_0_in79_in),
        .I3(p_1_in80_in),
        .O(\IVR_GEN.ivr[3]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \IVR_GEN.ivr[4]_i_1 
       (.I0(\IVR_GEN.ivr[3]_i_3_n_0 ),
        .I1(s_axi_aresetn),
        .O(\IVR_GEN.ivr[4]_i_1_n_0 ));
  FDRE \IVR_GEN.ivr_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\IVR_GEN.ivr[0]_i_1_n_0 ),
        .Q(ivr[0]),
        .R(1'b0));
  FDRE \IVR_GEN.ivr_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\IVR_GEN.ivr[1]_i_1_n_0 ),
        .Q(ivr[1]),
        .R(1'b0));
  FDRE \IVR_GEN.ivr_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\IVR_GEN.ivr[2]_i_1_n_0 ),
        .Q(ivr[2]),
        .R(1'b0));
  FDSE \IVR_GEN.ivr_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\IVR_GEN.ivr[3]_i_1_n_0 ),
        .Q(ivr[3]),
        .S(SR));
  FDRE \IVR_GEN.ivr_reg[4] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\IVR_GEN.ivr[4]_i_1_n_0 ),
        .Q(ivr[4]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'hB)) 
    \REG_GEN[0].IAR_NORMAL_MODE_GEN.iar[0]_i_1 
       (.I0(\REG_GEN[0].IAR_NORMAL_MODE_GEN.iar_reg_n_0_[0] ),
        .I1(s_axi_aresetn),
        .O(\REG_GEN[0].IAR_NORMAL_MODE_GEN.iar_reg0 ));
  FDRE \REG_GEN[0].IAR_NORMAL_MODE_GEN.iar_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(iar44_out),
        .Q(\REG_GEN[0].IAR_NORMAL_MODE_GEN.iar_reg_n_0_[0] ),
        .R(\REG_GEN[0].IAR_NORMAL_MODE_GEN.iar_reg0 ));
  LUT6 #(
    .INIT(64'h00000000FECE0000)) 
    \REG_GEN[0].ier[0]_i_1 
       (.I0(\REG_GEN[0].ier_reg_n_0_[0] ),
        .I1(\SIE_GEN.SIE_BIT_GEN[0].sie_reg[0]_0 ),
        .I2(bus2ip_wrce),
        .I3(s_axi_wdata[0]),
        .I4(s_axi_aresetn),
        .I5(\CIE_GEN.CIE_BIT_GEN[0].cie_reg[0]_0 ),
        .O(\REG_GEN[0].ier[0]_i_1_n_0 ));
  FDRE \REG_GEN[0].ier_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\REG_GEN[0].ier[0]_i_1_n_0 ),
        .Q(\REG_GEN[0].ier_reg_n_0_[0] ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hAFACAFAFA0ACA0A0)) 
    \REG_GEN[0].isr[0]_i_1 
       (.I0(\INTR_DETECT_GEN[0].EDGE_DETECT_GEN.hw_intr_reg ),
        .I1(s_axi_wdata[0]),
        .I2(p_0_in),
        .I3(Bus_RNW_reg),
        .I4(p_18_in),
        .I5(\REG_GEN[0].isr_reg_n_0_[0] ),
        .O(\REG_GEN[0].isr[0]_i_1_n_0 ));
  FDRE \REG_GEN[0].isr_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\REG_GEN[0].isr[0]_i_1_n_0 ),
        .Q(\REG_GEN[0].isr_reg_n_0_[0] ),
        .R(\REG_GEN[0].IAR_NORMAL_MODE_GEN.iar_reg0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \REG_GEN[10].IAR_NORMAL_MODE_GEN.iar[10]_i_1 
       (.I0(p_0_in13_in),
        .I1(s_axi_aresetn),
        .O(\REG_GEN[10].IAR_NORMAL_MODE_GEN.iar_reg0 ));
  FDRE \REG_GEN[10].IAR_NORMAL_MODE_GEN.iar_reg[10] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(iar25_out),
        .Q(p_0_in13_in),
        .R(\REG_GEN[10].IAR_NORMAL_MODE_GEN.iar_reg0 ));
  LUT6 #(
    .INIT(64'h00000000FECE0000)) 
    \REG_GEN[10].ier[10]_i_1 
       (.I0(\REG_GEN[10].ier_reg_n_0_[10] ),
        .I1(p_0_in62_in),
        .I2(bus2ip_wrce),
        .I3(s_axi_wdata[10]),
        .I4(s_axi_aresetn),
        .I5(p_0_in38_in),
        .O(\REG_GEN[10].ier[10]_i_1_n_0 ));
  FDRE \REG_GEN[10].ier_reg[10] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\REG_GEN[10].ier[10]_i_1_n_0 ),
        .Q(\REG_GEN[10].ier_reg_n_0_[10] ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hAFACAFAFA0ACA0A0)) 
    \REG_GEN[10].isr[10]_i_1 
       (.I0(\INTR_DETECT_GEN[10].EDGE_DETECT_GEN.hw_intr_reg ),
        .I1(s_axi_wdata[10]),
        .I2(p_0_in),
        .I3(Bus_RNW_reg),
        .I4(p_18_in),
        .I5(p_1_in72_in),
        .O(\REG_GEN[10].isr[10]_i_1_n_0 ));
  FDRE \REG_GEN[10].isr_reg[10] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\REG_GEN[10].isr[10]_i_1_n_0 ),
        .Q(p_1_in72_in),
        .R(\REG_GEN[10].IAR_NORMAL_MODE_GEN.iar_reg0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \REG_GEN[11].IAR_NORMAL_MODE_GEN.iar[11]_i_1 
       (.I0(p_0_in12_in),
        .I1(s_axi_aresetn),
        .O(\REG_GEN[11].IAR_NORMAL_MODE_GEN.iar_reg0 ));
  FDRE \REG_GEN[11].IAR_NORMAL_MODE_GEN.iar_reg[11] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(iar23_out),
        .Q(p_0_in12_in),
        .R(\REG_GEN[11].IAR_NORMAL_MODE_GEN.iar_reg0 ));
  LUT6 #(
    .INIT(64'h00000000FECE0000)) 
    \REG_GEN[11].ier[11]_i_1 
       (.I0(\REG_GEN[11].ier_reg_n_0_[11] ),
        .I1(p_0_in61_in),
        .I2(bus2ip_wrce),
        .I3(s_axi_wdata[11]),
        .I4(s_axi_aresetn),
        .I5(p_0_in37_in),
        .O(\REG_GEN[11].ier[11]_i_1_n_0 ));
  FDRE \REG_GEN[11].ier_reg[11] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\REG_GEN[11].ier[11]_i_1_n_0 ),
        .Q(\REG_GEN[11].ier_reg_n_0_[11] ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hAFACAFAFA0ACA0A0)) 
    \REG_GEN[11].isr[11]_i_1 
       (.I0(\INTR_DETECT_GEN[11].EDGE_DETECT_GEN.hw_intr_reg ),
        .I1(s_axi_wdata[11]),
        .I2(p_0_in),
        .I3(Bus_RNW_reg),
        .I4(p_18_in),
        .I5(p_1_in70_in),
        .O(\REG_GEN[11].isr[11]_i_1_n_0 ));
  FDRE \REG_GEN[11].isr_reg[11] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\REG_GEN[11].isr[11]_i_1_n_0 ),
        .Q(p_1_in70_in),
        .R(\REG_GEN[11].IAR_NORMAL_MODE_GEN.iar_reg0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \REG_GEN[12].IAR_NORMAL_MODE_GEN.iar[12]_i_1 
       (.I0(p_0_in11_in),
        .I1(s_axi_aresetn),
        .O(\REG_GEN[12].IAR_NORMAL_MODE_GEN.iar_reg0 ));
  FDRE \REG_GEN[12].IAR_NORMAL_MODE_GEN.iar_reg[12] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(iar21_out),
        .Q(p_0_in11_in),
        .R(\REG_GEN[12].IAR_NORMAL_MODE_GEN.iar_reg0 ));
  LUT6 #(
    .INIT(64'h00000000FECE0000)) 
    \REG_GEN[12].ier[12]_i_1 
       (.I0(\REG_GEN[12].ier_reg_n_0_[12] ),
        .I1(p_0_in60_in),
        .I2(bus2ip_wrce),
        .I3(s_axi_wdata[12]),
        .I4(s_axi_aresetn),
        .I5(p_0_in36_in),
        .O(\REG_GEN[12].ier[12]_i_1_n_0 ));
  FDRE \REG_GEN[12].ier_reg[12] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\REG_GEN[12].ier[12]_i_1_n_0 ),
        .Q(\REG_GEN[12].ier_reg_n_0_[12] ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hAFACAFAFA0ACA0A0)) 
    \REG_GEN[12].isr[12]_i_1 
       (.I0(\INTR_DETECT_GEN[12].EDGE_DETECT_GEN.hw_intr_reg ),
        .I1(s_axi_wdata[12]),
        .I2(p_0_in),
        .I3(Bus_RNW_reg),
        .I4(p_18_in),
        .I5(p_1_in68_in),
        .O(\REG_GEN[12].isr[12]_i_1_n_0 ));
  FDRE \REG_GEN[12].isr_reg[12] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\REG_GEN[12].isr[12]_i_1_n_0 ),
        .Q(p_1_in68_in),
        .R(\REG_GEN[12].IAR_NORMAL_MODE_GEN.iar_reg0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \REG_GEN[13].IAR_NORMAL_MODE_GEN.iar[13]_i_1 
       (.I0(p_0_in10_in),
        .I1(s_axi_aresetn),
        .O(\REG_GEN[13].IAR_NORMAL_MODE_GEN.iar_reg0 ));
  FDRE \REG_GEN[13].IAR_NORMAL_MODE_GEN.iar_reg[13] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(iar19_out),
        .Q(p_0_in10_in),
        .R(\REG_GEN[13].IAR_NORMAL_MODE_GEN.iar_reg0 ));
  LUT6 #(
    .INIT(64'h00000000FECE0000)) 
    \REG_GEN[13].ier[13]_i_1 
       (.I0(\REG_GEN[13].ier_reg_n_0_[13] ),
        .I1(p_0_in59_in),
        .I2(bus2ip_wrce),
        .I3(s_axi_wdata[13]),
        .I4(s_axi_aresetn),
        .I5(p_0_in35_in),
        .O(\REG_GEN[13].ier[13]_i_1_n_0 ));
  FDRE \REG_GEN[13].ier_reg[13] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\REG_GEN[13].ier[13]_i_1_n_0 ),
        .Q(\REG_GEN[13].ier_reg_n_0_[13] ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hAFACAFAFA0ACA0A0)) 
    \REG_GEN[13].isr[13]_i_1 
       (.I0(\INTR_DETECT_GEN[13].EDGE_DETECT_GEN.hw_intr_reg ),
        .I1(s_axi_wdata[13]),
        .I2(p_0_in),
        .I3(Bus_RNW_reg),
        .I4(p_18_in),
        .I5(p_1_in66_in),
        .O(\REG_GEN[13].isr[13]_i_1_n_0 ));
  FDRE \REG_GEN[13].isr_reg[13] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\REG_GEN[13].isr[13]_i_1_n_0 ),
        .Q(p_1_in66_in),
        .R(\REG_GEN[13].IAR_NORMAL_MODE_GEN.iar_reg0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \REG_GEN[14].IAR_NORMAL_MODE_GEN.iar[14]_i_1 
       (.I0(p_0_in9_in),
        .I1(s_axi_aresetn),
        .O(\REG_GEN[14].IAR_NORMAL_MODE_GEN.iar_reg0 ));
  FDRE \REG_GEN[14].IAR_NORMAL_MODE_GEN.iar_reg[14] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(iar17_out),
        .Q(p_0_in9_in),
        .R(\REG_GEN[14].IAR_NORMAL_MODE_GEN.iar_reg0 ));
  LUT6 #(
    .INIT(64'h00000000FECE0000)) 
    \REG_GEN[14].ier[14]_i_1 
       (.I0(\REG_GEN[14].ier_reg_n_0_[14] ),
        .I1(p_0_in58_in),
        .I2(bus2ip_wrce),
        .I3(s_axi_wdata[14]),
        .I4(s_axi_aresetn),
        .I5(p_0_in34_in),
        .O(\REG_GEN[14].ier[14]_i_1_n_0 ));
  FDRE \REG_GEN[14].ier_reg[14] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\REG_GEN[14].ier[14]_i_1_n_0 ),
        .Q(\REG_GEN[14].ier_reg_n_0_[14] ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hAFACAFAFA0ACA0A0)) 
    \REG_GEN[14].isr[14]_i_1 
       (.I0(\INTR_DETECT_GEN[14].EDGE_DETECT_GEN.hw_intr_reg ),
        .I1(s_axi_wdata[14]),
        .I2(p_0_in),
        .I3(Bus_RNW_reg),
        .I4(p_18_in),
        .I5(p_1_in64_in),
        .O(\REG_GEN[14].isr[14]_i_1_n_0 ));
  FDRE \REG_GEN[14].isr_reg[14] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\REG_GEN[14].isr[14]_i_1_n_0 ),
        .Q(p_1_in64_in),
        .R(\REG_GEN[14].IAR_NORMAL_MODE_GEN.iar_reg0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \REG_GEN[15].IAR_NORMAL_MODE_GEN.iar[15]_i_1 
       (.I0(p_0_in8_in),
        .I1(s_axi_aresetn),
        .O(\REG_GEN[15].IAR_NORMAL_MODE_GEN.iar_reg0 ));
  FDRE \REG_GEN[15].IAR_NORMAL_MODE_GEN.iar_reg[15] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(iar15_out),
        .Q(p_0_in8_in),
        .R(\REG_GEN[15].IAR_NORMAL_MODE_GEN.iar_reg0 ));
  LUT6 #(
    .INIT(64'h00000000FECE0000)) 
    \REG_GEN[15].ier[15]_i_1 
       (.I0(\REG_GEN[15].ier_reg_n_0_[15] ),
        .I1(p_0_in57_in),
        .I2(bus2ip_wrce),
        .I3(s_axi_wdata[15]),
        .I4(s_axi_aresetn),
        .I5(p_0_in33_in),
        .O(\REG_GEN[15].ier[15]_i_1_n_0 ));
  FDRE \REG_GEN[15].ier_reg[15] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\REG_GEN[15].ier[15]_i_1_n_0 ),
        .Q(\REG_GEN[15].ier_reg_n_0_[15] ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hAFACAFAFA0ACA0A0)) 
    \REG_GEN[15].isr[15]_i_1 
       (.I0(\INTR_DETECT_GEN[15].EDGE_DETECT_GEN.hw_intr_reg ),
        .I1(s_axi_wdata[15]),
        .I2(p_0_in),
        .I3(Bus_RNW_reg),
        .I4(p_18_in),
        .I5(p_1_in62_in),
        .O(\REG_GEN[15].isr[15]_i_1_n_0 ));
  FDRE \REG_GEN[15].isr_reg[15] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\REG_GEN[15].isr[15]_i_1_n_0 ),
        .Q(p_1_in62_in),
        .R(\REG_GEN[15].IAR_NORMAL_MODE_GEN.iar_reg0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \REG_GEN[16].IAR_NORMAL_MODE_GEN.iar[16]_i_1 
       (.I0(p_0_in7_in),
        .I1(s_axi_aresetn),
        .O(\REG_GEN[16].IAR_NORMAL_MODE_GEN.iar_reg0 ));
  FDRE \REG_GEN[16].IAR_NORMAL_MODE_GEN.iar_reg[16] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(iar13_out),
        .Q(p_0_in7_in),
        .R(\REG_GEN[16].IAR_NORMAL_MODE_GEN.iar_reg0 ));
  LUT6 #(
    .INIT(64'h00000000FECE0000)) 
    \REG_GEN[16].ier[16]_i_1 
       (.I0(\REG_GEN[16].ier_reg_n_0_[16] ),
        .I1(p_0_in56_in),
        .I2(bus2ip_wrce),
        .I3(s_axi_wdata[16]),
        .I4(s_axi_aresetn),
        .I5(p_0_in32_in),
        .O(\REG_GEN[16].ier[16]_i_1_n_0 ));
  FDRE \REG_GEN[16].ier_reg[16] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\REG_GEN[16].ier[16]_i_1_n_0 ),
        .Q(\REG_GEN[16].ier_reg_n_0_[16] ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hAFACAFAFA0ACA0A0)) 
    \REG_GEN[16].isr[16]_i_1 
       (.I0(\INTR_DETECT_GEN[16].EDGE_DETECT_GEN.hw_intr_reg ),
        .I1(s_axi_wdata[16]),
        .I2(p_0_in),
        .I3(Bus_RNW_reg),
        .I4(p_18_in),
        .I5(p_1_in60_in),
        .O(\REG_GEN[16].isr[16]_i_1_n_0 ));
  FDRE \REG_GEN[16].isr_reg[16] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\REG_GEN[16].isr[16]_i_1_n_0 ),
        .Q(p_1_in60_in),
        .R(\REG_GEN[16].IAR_NORMAL_MODE_GEN.iar_reg0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \REG_GEN[17].IAR_NORMAL_MODE_GEN.iar[17]_i_1 
       (.I0(p_0_in6_in),
        .I1(s_axi_aresetn),
        .O(\REG_GEN[17].IAR_NORMAL_MODE_GEN.iar_reg0 ));
  FDRE \REG_GEN[17].IAR_NORMAL_MODE_GEN.iar_reg[17] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(iar11_out),
        .Q(p_0_in6_in),
        .R(\REG_GEN[17].IAR_NORMAL_MODE_GEN.iar_reg0 ));
  LUT6 #(
    .INIT(64'h00000000FECE0000)) 
    \REG_GEN[17].ier[17]_i_1 
       (.I0(\REG_GEN[17].ier_reg_n_0_[17] ),
        .I1(p_0_in55_in),
        .I2(bus2ip_wrce),
        .I3(s_axi_wdata[17]),
        .I4(s_axi_aresetn),
        .I5(p_0_in31_in),
        .O(\REG_GEN[17].ier[17]_i_1_n_0 ));
  FDRE \REG_GEN[17].ier_reg[17] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\REG_GEN[17].ier[17]_i_1_n_0 ),
        .Q(\REG_GEN[17].ier_reg_n_0_[17] ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hAFACAFAFA0ACA0A0)) 
    \REG_GEN[17].isr[17]_i_1 
       (.I0(\INTR_DETECT_GEN[17].EDGE_DETECT_GEN.hw_intr_reg ),
        .I1(s_axi_wdata[17]),
        .I2(p_0_in),
        .I3(Bus_RNW_reg),
        .I4(p_18_in),
        .I5(p_1_in58_in),
        .O(\REG_GEN[17].isr[17]_i_1_n_0 ));
  FDRE \REG_GEN[17].isr_reg[17] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\REG_GEN[17].isr[17]_i_1_n_0 ),
        .Q(p_1_in58_in),
        .R(\REG_GEN[17].IAR_NORMAL_MODE_GEN.iar_reg0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \REG_GEN[18].IAR_NORMAL_MODE_GEN.iar[18]_i_1 
       (.I0(p_0_in5_in),
        .I1(s_axi_aresetn),
        .O(\REG_GEN[18].IAR_NORMAL_MODE_GEN.iar_reg0 ));
  FDRE \REG_GEN[18].IAR_NORMAL_MODE_GEN.iar_reg[18] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(iar9_out),
        .Q(p_0_in5_in),
        .R(\REG_GEN[18].IAR_NORMAL_MODE_GEN.iar_reg0 ));
  LUT6 #(
    .INIT(64'h00000000FECE0000)) 
    \REG_GEN[18].ier[18]_i_1 
       (.I0(\REG_GEN[18].ier_reg_n_0_[18] ),
        .I1(p_0_in54_in),
        .I2(bus2ip_wrce),
        .I3(s_axi_wdata[18]),
        .I4(s_axi_aresetn),
        .I5(p_0_in30_in),
        .O(\REG_GEN[18].ier[18]_i_1_n_0 ));
  FDRE \REG_GEN[18].ier_reg[18] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\REG_GEN[18].ier[18]_i_1_n_0 ),
        .Q(\REG_GEN[18].ier_reg_n_0_[18] ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hAFACAFAFA0ACA0A0)) 
    \REG_GEN[18].isr[18]_i_1 
       (.I0(\INTR_DETECT_GEN[18].EDGE_DETECT_GEN.hw_intr_reg ),
        .I1(s_axi_wdata[18]),
        .I2(p_0_in),
        .I3(Bus_RNW_reg),
        .I4(p_18_in),
        .I5(p_1_in56_in),
        .O(\REG_GEN[18].isr[18]_i_1_n_0 ));
  FDRE \REG_GEN[18].isr_reg[18] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\REG_GEN[18].isr[18]_i_1_n_0 ),
        .Q(p_1_in56_in),
        .R(\REG_GEN[18].IAR_NORMAL_MODE_GEN.iar_reg0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \REG_GEN[19].IAR_NORMAL_MODE_GEN.iar[19]_i_1 
       (.I0(p_0_in4_in),
        .I1(s_axi_aresetn),
        .O(\REG_GEN[19].IAR_NORMAL_MODE_GEN.iar_reg0 ));
  FDRE \REG_GEN[19].IAR_NORMAL_MODE_GEN.iar_reg[19] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(iar7_out),
        .Q(p_0_in4_in),
        .R(\REG_GEN[19].IAR_NORMAL_MODE_GEN.iar_reg0 ));
  LUT6 #(
    .INIT(64'h00000000FECE0000)) 
    \REG_GEN[19].ier[19]_i_1 
       (.I0(\REG_GEN[19].ier_reg_n_0_[19] ),
        .I1(p_0_in53_in),
        .I2(bus2ip_wrce),
        .I3(s_axi_wdata[19]),
        .I4(s_axi_aresetn),
        .I5(p_0_in29_in),
        .O(\REG_GEN[19].ier[19]_i_1_n_0 ));
  FDRE \REG_GEN[19].ier_reg[19] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\REG_GEN[19].ier[19]_i_1_n_0 ),
        .Q(\REG_GEN[19].ier_reg_n_0_[19] ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hAFACAFAFA0ACA0A0)) 
    \REG_GEN[19].isr[19]_i_1 
       (.I0(\INTR_DETECT_GEN[19].EDGE_DETECT_GEN.hw_intr_reg ),
        .I1(s_axi_wdata[19]),
        .I2(p_0_in),
        .I3(Bus_RNW_reg),
        .I4(p_18_in),
        .I5(p_1_in54_in),
        .O(\REG_GEN[19].isr[19]_i_1_n_0 ));
  FDRE \REG_GEN[19].isr_reg[19] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\REG_GEN[19].isr[19]_i_1_n_0 ),
        .Q(p_1_in54_in),
        .R(\REG_GEN[19].IAR_NORMAL_MODE_GEN.iar_reg0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \REG_GEN[1].IAR_NORMAL_MODE_GEN.iar[1]_i_1 
       (.I0(p_0_in22_in),
        .I1(s_axi_aresetn),
        .O(\REG_GEN[1].IAR_NORMAL_MODE_GEN.iar_reg0 ));
  FDRE \REG_GEN[1].IAR_NORMAL_MODE_GEN.iar_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(iar43_out),
        .Q(p_0_in22_in),
        .R(\REG_GEN[1].IAR_NORMAL_MODE_GEN.iar_reg0 ));
  LUT6 #(
    .INIT(64'h00000000FECE0000)) 
    \REG_GEN[1].ier[1]_i_1 
       (.I0(p_0_in89_in),
        .I1(p_0_in71_in),
        .I2(bus2ip_wrce),
        .I3(s_axi_wdata[1]),
        .I4(s_axi_aresetn),
        .I5(p_0_in47_in),
        .O(\REG_GEN[1].ier[1]_i_1_n_0 ));
  FDRE \REG_GEN[1].ier_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\REG_GEN[1].ier[1]_i_1_n_0 ),
        .Q(p_0_in89_in),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hAFACAFAFA0ACA0A0)) 
    \REG_GEN[1].isr[1]_i_1 
       (.I0(\INTR_DETECT_GEN[1].EDGE_DETECT_GEN.hw_intr_reg ),
        .I1(s_axi_wdata[1]),
        .I2(p_0_in),
        .I3(Bus_RNW_reg),
        .I4(p_18_in),
        .I5(p_1_in90_in),
        .O(\REG_GEN[1].isr[1]_i_1_n_0 ));
  FDRE \REG_GEN[1].isr_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\REG_GEN[1].isr[1]_i_1_n_0 ),
        .Q(p_1_in90_in),
        .R(\REG_GEN[1].IAR_NORMAL_MODE_GEN.iar_reg0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \REG_GEN[20].IAR_NORMAL_MODE_GEN.iar[20]_i_1 
       (.I0(p_0_in3_in),
        .I1(s_axi_aresetn),
        .O(\REG_GEN[20].IAR_NORMAL_MODE_GEN.iar_reg0 ));
  FDRE \REG_GEN[20].IAR_NORMAL_MODE_GEN.iar_reg[20] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(iar5_out),
        .Q(p_0_in3_in),
        .R(\REG_GEN[20].IAR_NORMAL_MODE_GEN.iar_reg0 ));
  LUT6 #(
    .INIT(64'h00000000FECE0000)) 
    \REG_GEN[20].ier[20]_i_1 
       (.I0(\REG_GEN[20].ier_reg_n_0_[20] ),
        .I1(p_0_in52_in),
        .I2(bus2ip_wrce),
        .I3(s_axi_wdata[20]),
        .I4(s_axi_aresetn),
        .I5(p_0_in28_in),
        .O(\REG_GEN[20].ier[20]_i_1_n_0 ));
  FDRE \REG_GEN[20].ier_reg[20] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\REG_GEN[20].ier[20]_i_1_n_0 ),
        .Q(\REG_GEN[20].ier_reg_n_0_[20] ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hAFACAFAFA0ACA0A0)) 
    \REG_GEN[20].isr[20]_i_1 
       (.I0(\INTR_DETECT_GEN[20].EDGE_DETECT_GEN.hw_intr_reg ),
        .I1(s_axi_wdata[20]),
        .I2(p_0_in),
        .I3(Bus_RNW_reg),
        .I4(p_18_in),
        .I5(p_1_in52_in),
        .O(\REG_GEN[20].isr[20]_i_1_n_0 ));
  FDRE \REG_GEN[20].isr_reg[20] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\REG_GEN[20].isr[20]_i_1_n_0 ),
        .Q(p_1_in52_in),
        .R(\REG_GEN[20].IAR_NORMAL_MODE_GEN.iar_reg0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \REG_GEN[21].IAR_NORMAL_MODE_GEN.iar[21]_i_1 
       (.I0(p_0_in2_in),
        .I1(s_axi_aresetn),
        .O(\REG_GEN[21].IAR_NORMAL_MODE_GEN.iar_reg0 ));
  FDRE \REG_GEN[21].IAR_NORMAL_MODE_GEN.iar_reg[21] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(iar3_out),
        .Q(p_0_in2_in),
        .R(\REG_GEN[21].IAR_NORMAL_MODE_GEN.iar_reg0 ));
  LUT6 #(
    .INIT(64'h00000000FECE0000)) 
    \REG_GEN[21].ier[21]_i_1 
       (.I0(\REG_GEN[21].ier_reg_n_0_[21] ),
        .I1(p_0_in51_in),
        .I2(bus2ip_wrce),
        .I3(s_axi_wdata[21]),
        .I4(s_axi_aresetn),
        .I5(p_0_in27_in),
        .O(\REG_GEN[21].ier[21]_i_1_n_0 ));
  FDRE \REG_GEN[21].ier_reg[21] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\REG_GEN[21].ier[21]_i_1_n_0 ),
        .Q(\REG_GEN[21].ier_reg_n_0_[21] ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hAFACAFAFA0ACA0A0)) 
    \REG_GEN[21].isr[21]_i_1 
       (.I0(\INTR_DETECT_GEN[21].EDGE_DETECT_GEN.hw_intr_reg ),
        .I1(s_axi_wdata[21]),
        .I2(p_0_in),
        .I3(Bus_RNW_reg),
        .I4(p_18_in),
        .I5(p_1_in50_in),
        .O(\REG_GEN[21].isr[21]_i_1_n_0 ));
  FDRE \REG_GEN[21].isr_reg[21] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\REG_GEN[21].isr[21]_i_1_n_0 ),
        .Q(p_1_in50_in),
        .R(\REG_GEN[21].IAR_NORMAL_MODE_GEN.iar_reg0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \REG_GEN[22].IAR_NORMAL_MODE_GEN.iar[22]_i_1 
       (.I0(p_0_in1_in),
        .I1(s_axi_aresetn),
        .O(\REG_GEN[22].IAR_NORMAL_MODE_GEN.iar_reg0 ));
  FDRE \REG_GEN[22].IAR_NORMAL_MODE_GEN.iar_reg[22] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(iar1_out),
        .Q(p_0_in1_in),
        .R(\REG_GEN[22].IAR_NORMAL_MODE_GEN.iar_reg0 ));
  LUT6 #(
    .INIT(64'h00000000FECE0000)) 
    \REG_GEN[22].ier[22]_i_1 
       (.I0(\REG_GEN[22].ier_reg_n_0_[22] ),
        .I1(p_0_in50_in),
        .I2(bus2ip_wrce),
        .I3(s_axi_wdata[22]),
        .I4(s_axi_aresetn),
        .I5(p_0_in26_in),
        .O(\REG_GEN[22].ier[22]_i_1_n_0 ));
  FDRE \REG_GEN[22].ier_reg[22] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\REG_GEN[22].ier[22]_i_1_n_0 ),
        .Q(\REG_GEN[22].ier_reg_n_0_[22] ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hAFACAFAFA0ACA0A0)) 
    \REG_GEN[22].isr[22]_i_1 
       (.I0(\INTR_DETECT_GEN[22].EDGE_DETECT_GEN.hw_intr_reg ),
        .I1(s_axi_wdata[22]),
        .I2(p_0_in),
        .I3(Bus_RNW_reg),
        .I4(p_18_in),
        .I5(p_1_in48_in),
        .O(\REG_GEN[22].isr[22]_i_1_n_0 ));
  FDRE \REG_GEN[22].isr_reg[22] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\REG_GEN[22].isr[22]_i_1_n_0 ),
        .Q(p_1_in48_in),
        .R(\REG_GEN[22].IAR_NORMAL_MODE_GEN.iar_reg0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \REG_GEN[23].IAR_NORMAL_MODE_GEN.iar[23]_i_1 
       (.I0(\REG_GEN[23].IAR_NORMAL_MODE_GEN.iar_reg_n_0_[23] ),
        .I1(s_axi_aresetn),
        .O(\REG_GEN[23].IAR_NORMAL_MODE_GEN.iar_reg0 ));
  FDRE \REG_GEN[23].IAR_NORMAL_MODE_GEN.iar_reg[23] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(iar),
        .Q(\REG_GEN[23].IAR_NORMAL_MODE_GEN.iar_reg_n_0_[23] ),
        .R(\REG_GEN[23].IAR_NORMAL_MODE_GEN.iar_reg0 ));
  LUT6 #(
    .INIT(64'h00000000FECE0000)) 
    \REG_GEN[23].ier[23]_i_1 
       (.I0(\REG_GEN[23].ier_reg_n_0_[23] ),
        .I1(p_0_in49_in),
        .I2(bus2ip_wrce),
        .I3(s_axi_wdata[23]),
        .I4(s_axi_aresetn),
        .I5(p_0_in25_in),
        .O(\REG_GEN[23].ier[23]_i_1_n_0 ));
  FDRE \REG_GEN[23].ier_reg[23] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\REG_GEN[23].ier[23]_i_1_n_0 ),
        .Q(\REG_GEN[23].ier_reg_n_0_[23] ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hAFACAFAFA0ACA0A0)) 
    \REG_GEN[23].isr[23]_i_1 
       (.I0(\INTR_DETECT_GEN[23].EDGE_DETECT_GEN.hw_intr_reg ),
        .I1(s_axi_wdata[23]),
        .I2(p_0_in),
        .I3(Bus_RNW_reg),
        .I4(p_18_in),
        .I5(p_1_in46_in),
        .O(\REG_GEN[23].isr[23]_i_1_n_0 ));
  FDRE \REG_GEN[23].isr_reg[23] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\REG_GEN[23].isr[23]_i_1_n_0 ),
        .Q(p_1_in46_in),
        .R(\REG_GEN[23].IAR_NORMAL_MODE_GEN.iar_reg0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \REG_GEN[2].IAR_NORMAL_MODE_GEN.iar[2]_i_1 
       (.I0(p_0_in21_in),
        .I1(s_axi_aresetn),
        .O(\REG_GEN[2].IAR_NORMAL_MODE_GEN.iar_reg0 ));
  FDRE \REG_GEN[2].IAR_NORMAL_MODE_GEN.iar_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(iar41_out),
        .Q(p_0_in21_in),
        .R(\REG_GEN[2].IAR_NORMAL_MODE_GEN.iar_reg0 ));
  LUT6 #(
    .INIT(64'h00000000FECE0000)) 
    \REG_GEN[2].ier[2]_i_1 
       (.I0(p_0_in87_in),
        .I1(p_0_in70_in),
        .I2(bus2ip_wrce),
        .I3(s_axi_wdata[2]),
        .I4(s_axi_aresetn),
        .I5(p_0_in46_in),
        .O(\REG_GEN[2].ier[2]_i_1_n_0 ));
  FDRE \REG_GEN[2].ier_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\REG_GEN[2].ier[2]_i_1_n_0 ),
        .Q(p_0_in87_in),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hAFACAFAFA0ACA0A0)) 
    \REG_GEN[2].isr[2]_i_1 
       (.I0(\INTR_DETECT_GEN[2].EDGE_DETECT_GEN.hw_intr_reg ),
        .I1(s_axi_wdata[2]),
        .I2(p_0_in),
        .I3(Bus_RNW_reg),
        .I4(p_18_in),
        .I5(p_1_in88_in),
        .O(\REG_GEN[2].isr[2]_i_1_n_0 ));
  FDRE \REG_GEN[2].isr_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\REG_GEN[2].isr[2]_i_1_n_0 ),
        .Q(p_1_in88_in),
        .R(\REG_GEN[2].IAR_NORMAL_MODE_GEN.iar_reg0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \REG_GEN[3].IAR_NORMAL_MODE_GEN.iar[3]_i_1 
       (.I0(p_0_in20_in),
        .I1(s_axi_aresetn),
        .O(\REG_GEN[3].IAR_NORMAL_MODE_GEN.iar_reg0 ));
  FDRE \REG_GEN[3].IAR_NORMAL_MODE_GEN.iar_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(iar39_out),
        .Q(p_0_in20_in),
        .R(\REG_GEN[3].IAR_NORMAL_MODE_GEN.iar_reg0 ));
  LUT6 #(
    .INIT(64'h00000000FECE0000)) 
    \REG_GEN[3].ier[3]_i_1 
       (.I0(p_0_in85_in),
        .I1(p_0_in69_in),
        .I2(bus2ip_wrce),
        .I3(s_axi_wdata[3]),
        .I4(s_axi_aresetn),
        .I5(p_0_in45_in),
        .O(\REG_GEN[3].ier[3]_i_1_n_0 ));
  FDRE \REG_GEN[3].ier_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\REG_GEN[3].ier[3]_i_1_n_0 ),
        .Q(p_0_in85_in),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hAFACAFAFA0ACA0A0)) 
    \REG_GEN[3].isr[3]_i_1 
       (.I0(\INTR_DETECT_GEN[3].EDGE_DETECT_GEN.hw_intr_reg ),
        .I1(s_axi_wdata[3]),
        .I2(p_0_in),
        .I3(Bus_RNW_reg),
        .I4(p_18_in),
        .I5(p_1_in86_in),
        .O(\REG_GEN[3].isr[3]_i_1_n_0 ));
  FDRE \REG_GEN[3].isr_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\REG_GEN[3].isr[3]_i_1_n_0 ),
        .Q(p_1_in86_in),
        .R(\REG_GEN[3].IAR_NORMAL_MODE_GEN.iar_reg0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \REG_GEN[4].IAR_NORMAL_MODE_GEN.iar[4]_i_1 
       (.I0(p_0_in19_in),
        .I1(s_axi_aresetn),
        .O(\REG_GEN[4].IAR_NORMAL_MODE_GEN.iar_reg0 ));
  FDRE \REG_GEN[4].IAR_NORMAL_MODE_GEN.iar_reg[4] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(iar37_out),
        .Q(p_0_in19_in),
        .R(\REG_GEN[4].IAR_NORMAL_MODE_GEN.iar_reg0 ));
  LUT6 #(
    .INIT(64'h00000000FECE0000)) 
    \REG_GEN[4].ier[4]_i_1 
       (.I0(p_0_in83_in),
        .I1(p_0_in68_in),
        .I2(bus2ip_wrce),
        .I3(s_axi_wdata[4]),
        .I4(s_axi_aresetn),
        .I5(p_0_in44_in),
        .O(\REG_GEN[4].ier[4]_i_1_n_0 ));
  FDRE \REG_GEN[4].ier_reg[4] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\REG_GEN[4].ier[4]_i_1_n_0 ),
        .Q(p_0_in83_in),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hAFACAFAFA0ACA0A0)) 
    \REG_GEN[4].isr[4]_i_1 
       (.I0(\INTR_DETECT_GEN[4].EDGE_DETECT_GEN.hw_intr_reg ),
        .I1(s_axi_wdata[4]),
        .I2(p_0_in),
        .I3(Bus_RNW_reg),
        .I4(p_18_in),
        .I5(p_1_in84_in),
        .O(\REG_GEN[4].isr[4]_i_1_n_0 ));
  FDRE \REG_GEN[4].isr_reg[4] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\REG_GEN[4].isr[4]_i_1_n_0 ),
        .Q(p_1_in84_in),
        .R(\REG_GEN[4].IAR_NORMAL_MODE_GEN.iar_reg0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \REG_GEN[5].IAR_NORMAL_MODE_GEN.iar[5]_i_1 
       (.I0(p_0_in18_in),
        .I1(s_axi_aresetn),
        .O(\REG_GEN[5].IAR_NORMAL_MODE_GEN.iar_reg0 ));
  FDRE \REG_GEN[5].IAR_NORMAL_MODE_GEN.iar_reg[5] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(iar35_out),
        .Q(p_0_in18_in),
        .R(\REG_GEN[5].IAR_NORMAL_MODE_GEN.iar_reg0 ));
  LUT6 #(
    .INIT(64'h00000000FECE0000)) 
    \REG_GEN[5].ier[5]_i_1 
       (.I0(p_0_in81_in),
        .I1(p_0_in67_in),
        .I2(bus2ip_wrce),
        .I3(s_axi_wdata[5]),
        .I4(s_axi_aresetn),
        .I5(p_0_in43_in),
        .O(\REG_GEN[5].ier[5]_i_1_n_0 ));
  FDRE \REG_GEN[5].ier_reg[5] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\REG_GEN[5].ier[5]_i_1_n_0 ),
        .Q(p_0_in81_in),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hAFACAFAFA0ACA0A0)) 
    \REG_GEN[5].isr[5]_i_1 
       (.I0(\INTR_DETECT_GEN[5].EDGE_DETECT_GEN.hw_intr_reg ),
        .I1(s_axi_wdata[5]),
        .I2(p_0_in),
        .I3(Bus_RNW_reg),
        .I4(p_18_in),
        .I5(p_1_in82_in),
        .O(\REG_GEN[5].isr[5]_i_1_n_0 ));
  FDRE \REG_GEN[5].isr_reg[5] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\REG_GEN[5].isr[5]_i_1_n_0 ),
        .Q(p_1_in82_in),
        .R(\REG_GEN[5].IAR_NORMAL_MODE_GEN.iar_reg0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \REG_GEN[6].IAR_NORMAL_MODE_GEN.iar[6]_i_1 
       (.I0(p_0_in17_in),
        .I1(s_axi_aresetn),
        .O(\REG_GEN[6].IAR_NORMAL_MODE_GEN.iar_reg0 ));
  FDRE \REG_GEN[6].IAR_NORMAL_MODE_GEN.iar_reg[6] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(iar33_out),
        .Q(p_0_in17_in),
        .R(\REG_GEN[6].IAR_NORMAL_MODE_GEN.iar_reg0 ));
  LUT6 #(
    .INIT(64'h00000000FECE0000)) 
    \REG_GEN[6].ier[6]_i_1 
       (.I0(p_0_in79_in),
        .I1(p_0_in66_in),
        .I2(bus2ip_wrce),
        .I3(s_axi_wdata[6]),
        .I4(s_axi_aresetn),
        .I5(p_0_in42_in),
        .O(\REG_GEN[6].ier[6]_i_1_n_0 ));
  FDRE \REG_GEN[6].ier_reg[6] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\REG_GEN[6].ier[6]_i_1_n_0 ),
        .Q(p_0_in79_in),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hAFACAFAFA0ACA0A0)) 
    \REG_GEN[6].isr[6]_i_1 
       (.I0(\INTR_DETECT_GEN[6].EDGE_DETECT_GEN.hw_intr_reg ),
        .I1(s_axi_wdata[6]),
        .I2(p_0_in),
        .I3(Bus_RNW_reg),
        .I4(p_18_in),
        .I5(p_1_in80_in),
        .O(\REG_GEN[6].isr[6]_i_1_n_0 ));
  FDRE \REG_GEN[6].isr_reg[6] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\REG_GEN[6].isr[6]_i_1_n_0 ),
        .Q(p_1_in80_in),
        .R(\REG_GEN[6].IAR_NORMAL_MODE_GEN.iar_reg0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \REG_GEN[7].IAR_NORMAL_MODE_GEN.iar[7]_i_1 
       (.I0(p_0_in16_in),
        .I1(s_axi_aresetn),
        .O(\REG_GEN[7].IAR_NORMAL_MODE_GEN.iar_reg0 ));
  FDRE \REG_GEN[7].IAR_NORMAL_MODE_GEN.iar_reg[7] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(iar31_out),
        .Q(p_0_in16_in),
        .R(\REG_GEN[7].IAR_NORMAL_MODE_GEN.iar_reg0 ));
  LUT6 #(
    .INIT(64'h00000000FECE0000)) 
    \REG_GEN[7].ier[7]_i_1 
       (.I0(p_0_in77_in),
        .I1(p_0_in65_in),
        .I2(bus2ip_wrce),
        .I3(s_axi_wdata[7]),
        .I4(s_axi_aresetn),
        .I5(p_0_in41_in),
        .O(\REG_GEN[7].ier[7]_i_1_n_0 ));
  FDRE \REG_GEN[7].ier_reg[7] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\REG_GEN[7].ier[7]_i_1_n_0 ),
        .Q(p_0_in77_in),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hAFACAFAFA0ACA0A0)) 
    \REG_GEN[7].isr[7]_i_1 
       (.I0(\INTR_DETECT_GEN[7].EDGE_DETECT_GEN.hw_intr_reg ),
        .I1(s_axi_wdata[7]),
        .I2(p_0_in),
        .I3(Bus_RNW_reg),
        .I4(p_18_in),
        .I5(p_1_in78_in),
        .O(\REG_GEN[7].isr[7]_i_1_n_0 ));
  FDRE \REG_GEN[7].isr_reg[7] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\REG_GEN[7].isr[7]_i_1_n_0 ),
        .Q(p_1_in78_in),
        .R(\REG_GEN[7].IAR_NORMAL_MODE_GEN.iar_reg0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \REG_GEN[8].IAR_NORMAL_MODE_GEN.iar[8]_i_1 
       (.I0(p_0_in15_in),
        .I1(s_axi_aresetn),
        .O(\REG_GEN[8].IAR_NORMAL_MODE_GEN.iar_reg0 ));
  FDRE \REG_GEN[8].IAR_NORMAL_MODE_GEN.iar_reg[8] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(iar29_out),
        .Q(p_0_in15_in),
        .R(\REG_GEN[8].IAR_NORMAL_MODE_GEN.iar_reg0 ));
  LUT6 #(
    .INIT(64'h00000000FECE0000)) 
    \REG_GEN[8].ier[8]_i_1 
       (.I0(p_0_in75_in),
        .I1(p_0_in64_in),
        .I2(bus2ip_wrce),
        .I3(s_axi_wdata[8]),
        .I4(s_axi_aresetn),
        .I5(p_0_in40_in),
        .O(\REG_GEN[8].ier[8]_i_1_n_0 ));
  FDRE \REG_GEN[8].ier_reg[8] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\REG_GEN[8].ier[8]_i_1_n_0 ),
        .Q(p_0_in75_in),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hAFACAFAFA0ACA0A0)) 
    \REG_GEN[8].isr[8]_i_1 
       (.I0(\INTR_DETECT_GEN[8].EDGE_DETECT_GEN.hw_intr_reg ),
        .I1(s_axi_wdata[8]),
        .I2(p_0_in),
        .I3(Bus_RNW_reg),
        .I4(p_18_in),
        .I5(p_1_in76_in),
        .O(\REG_GEN[8].isr[8]_i_1_n_0 ));
  FDRE \REG_GEN[8].isr_reg[8] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\REG_GEN[8].isr[8]_i_1_n_0 ),
        .Q(p_1_in76_in),
        .R(\REG_GEN[8].IAR_NORMAL_MODE_GEN.iar_reg0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \REG_GEN[9].IAR_NORMAL_MODE_GEN.iar[9]_i_1 
       (.I0(p_0_in14_in),
        .I1(s_axi_aresetn),
        .O(\REG_GEN[9].IAR_NORMAL_MODE_GEN.iar_reg0 ));
  FDRE \REG_GEN[9].IAR_NORMAL_MODE_GEN.iar_reg[9] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(iar27_out),
        .Q(p_0_in14_in),
        .R(\REG_GEN[9].IAR_NORMAL_MODE_GEN.iar_reg0 ));
  LUT6 #(
    .INIT(64'h00000000FECE0000)) 
    \REG_GEN[9].ier[9]_i_1 
       (.I0(p_0_in73_in),
        .I1(p_0_in63_in),
        .I2(bus2ip_wrce),
        .I3(s_axi_wdata[9]),
        .I4(s_axi_aresetn),
        .I5(p_0_in39_in),
        .O(\REG_GEN[9].ier[9]_i_1_n_0 ));
  FDRE \REG_GEN[9].ier_reg[9] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\REG_GEN[9].ier[9]_i_1_n_0 ),
        .Q(p_0_in73_in),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hAFACAFAFA0ACA0A0)) 
    \REG_GEN[9].isr[9]_i_1 
       (.I0(\INTR_DETECT_GEN[9].EDGE_DETECT_GEN.hw_intr_reg ),
        .I1(s_axi_wdata[9]),
        .I2(p_0_in),
        .I3(Bus_RNW_reg),
        .I4(p_18_in),
        .I5(p_1_in74_in),
        .O(\REG_GEN[9].isr[9]_i_1_n_0 ));
  FDRE \REG_GEN[9].isr_reg[9] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\REG_GEN[9].isr[9]_i_1_n_0 ),
        .Q(p_1_in74_in),
        .R(\REG_GEN[9].IAR_NORMAL_MODE_GEN.iar_reg0 ));
  FDRE \SIE_GEN.SIE_BIT_GEN[0].sie_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\SIE_GEN.SIE_BIT_GEN[0].sie_reg[0]_1 ),
        .Q(\SIE_GEN.SIE_BIT_GEN[0].sie_reg[0]_0 ),
        .R(1'b0));
  FDRE \SIE_GEN.SIE_BIT_GEN[10].sie_reg[10] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\SIE_GEN.SIE_BIT_GEN[10].sie_reg[10]_0 ),
        .Q(p_0_in62_in),
        .R(1'b0));
  FDRE \SIE_GEN.SIE_BIT_GEN[11].sie_reg[11] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\SIE_GEN.SIE_BIT_GEN[11].sie_reg[11]_0 ),
        .Q(p_0_in61_in),
        .R(1'b0));
  FDRE \SIE_GEN.SIE_BIT_GEN[12].sie_reg[12] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\SIE_GEN.SIE_BIT_GEN[12].sie_reg[12]_0 ),
        .Q(p_0_in60_in),
        .R(1'b0));
  FDRE \SIE_GEN.SIE_BIT_GEN[13].sie_reg[13] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\SIE_GEN.SIE_BIT_GEN[13].sie_reg[13]_0 ),
        .Q(p_0_in59_in),
        .R(1'b0));
  FDRE \SIE_GEN.SIE_BIT_GEN[14].sie_reg[14] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\SIE_GEN.SIE_BIT_GEN[14].sie_reg[14]_0 ),
        .Q(p_0_in58_in),
        .R(1'b0));
  FDRE \SIE_GEN.SIE_BIT_GEN[15].sie_reg[15] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\SIE_GEN.SIE_BIT_GEN[15].sie_reg[15]_0 ),
        .Q(p_0_in57_in),
        .R(1'b0));
  FDRE \SIE_GEN.SIE_BIT_GEN[16].sie_reg[16] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\SIE_GEN.SIE_BIT_GEN[16].sie_reg[16]_0 ),
        .Q(p_0_in56_in),
        .R(1'b0));
  FDRE \SIE_GEN.SIE_BIT_GEN[17].sie_reg[17] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\SIE_GEN.SIE_BIT_GEN[17].sie_reg[17]_0 ),
        .Q(p_0_in55_in),
        .R(1'b0));
  FDRE \SIE_GEN.SIE_BIT_GEN[18].sie_reg[18] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\SIE_GEN.SIE_BIT_GEN[18].sie_reg[18]_0 ),
        .Q(p_0_in54_in),
        .R(1'b0));
  FDRE \SIE_GEN.SIE_BIT_GEN[19].sie_reg[19] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\SIE_GEN.SIE_BIT_GEN[19].sie_reg[19]_0 ),
        .Q(p_0_in53_in),
        .R(1'b0));
  FDRE \SIE_GEN.SIE_BIT_GEN[1].sie_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\SIE_GEN.SIE_BIT_GEN[1].sie_reg[1]_0 ),
        .Q(p_0_in71_in),
        .R(1'b0));
  FDRE \SIE_GEN.SIE_BIT_GEN[20].sie_reg[20] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\SIE_GEN.SIE_BIT_GEN[20].sie_reg[20]_0 ),
        .Q(p_0_in52_in),
        .R(1'b0));
  FDRE \SIE_GEN.SIE_BIT_GEN[21].sie_reg[21] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\SIE_GEN.SIE_BIT_GEN[21].sie_reg[21]_0 ),
        .Q(p_0_in51_in),
        .R(1'b0));
  FDRE \SIE_GEN.SIE_BIT_GEN[22].sie_reg[22] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\SIE_GEN.SIE_BIT_GEN[22].sie_reg[22]_0 ),
        .Q(p_0_in50_in),
        .R(1'b0));
  FDRE \SIE_GEN.SIE_BIT_GEN[23].sie_reg[23] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\SIE_GEN.SIE_BIT_GEN[23].sie_reg[23]_0 ),
        .Q(p_0_in49_in),
        .R(1'b0));
  FDRE \SIE_GEN.SIE_BIT_GEN[2].sie_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\SIE_GEN.SIE_BIT_GEN[2].sie_reg[2]_0 ),
        .Q(p_0_in70_in),
        .R(1'b0));
  FDRE \SIE_GEN.SIE_BIT_GEN[3].sie_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\SIE_GEN.SIE_BIT_GEN[3].sie_reg[3]_0 ),
        .Q(p_0_in69_in),
        .R(1'b0));
  FDRE \SIE_GEN.SIE_BIT_GEN[4].sie_reg[4] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\SIE_GEN.SIE_BIT_GEN[4].sie_reg[4]_0 ),
        .Q(p_0_in68_in),
        .R(1'b0));
  FDRE \SIE_GEN.SIE_BIT_GEN[5].sie_reg[5] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\SIE_GEN.SIE_BIT_GEN[5].sie_reg[5]_0 ),
        .Q(p_0_in67_in),
        .R(1'b0));
  FDRE \SIE_GEN.SIE_BIT_GEN[6].sie_reg[6] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\SIE_GEN.SIE_BIT_GEN[6].sie_reg[6]_0 ),
        .Q(p_0_in66_in),
        .R(1'b0));
  FDRE \SIE_GEN.SIE_BIT_GEN[7].sie_reg[7] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\SIE_GEN.SIE_BIT_GEN[7].sie_reg[7]_0 ),
        .Q(p_0_in65_in),
        .R(1'b0));
  FDRE \SIE_GEN.SIE_BIT_GEN[8].sie_reg[8] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\SIE_GEN.SIE_BIT_GEN[8].sie_reg[8]_0 ),
        .Q(p_0_in64_in),
        .R(1'b0));
  FDRE \SIE_GEN.SIE_BIT_GEN[9].sie_reg[9] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\SIE_GEN.SIE_BIT_GEN[9].sie_reg[9]_0 ),
        .Q(p_0_in63_in),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFEAFFEAFFEAFF)) 
    irq_gen_i_1
       (.I0(irq_gen_i_2_n_0),
        .I1(\REG_GEN[20].ier_reg_n_0_[20] ),
        .I2(p_1_in52_in),
        .I3(irq_gen_i_3_n_0),
        .I4(p_1_in50_in),
        .I5(\REG_GEN[21].ier_reg_n_0_[21] ),
        .O(irq_gen_i));
  LUT4 #(
    .INIT(16'hF888)) 
    irq_gen_i_2
       (.I0(\REG_GEN[23].ier_reg_n_0_[23] ),
        .I1(p_1_in46_in),
        .I2(\REG_GEN[22].ier_reg_n_0_[22] ),
        .I3(p_1_in48_in),
        .O(irq_gen_i_2_n_0));
  LUT6 #(
    .INIT(64'h0000000000010101)) 
    irq_gen_i_3
       (.I0(\IVR_GEN.ivr[2]_i_3_n_0 ),
        .I1(irq_gen_i_4_n_0),
        .I2(\IPR_GEN.ipr[9]_i_1_n_0 ),
        .I3(p_1_in72_in),
        .I4(\REG_GEN[10].ier_reg_n_0_[10] ),
        .I5(irq_gen_i_5_n_0),
        .O(irq_gen_i_3_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    irq_gen_i_4
       (.I0(\IPR_GEN.ipr[8]_i_1_n_0 ),
        .I1(\IVR_GEN.ivr[3]_i_6_n_0 ),
        .I2(\IPR_GEN.ipr[5]_i_1_n_0 ),
        .I3(\IVR_GEN.ivr[3]_i_5_n_0 ),
        .I4(\IVR_GEN.ivr[3]_i_4_n_0 ),
        .I5(\IPR_GEN.ipr[4]_i_1_n_0 ),
        .O(irq_gen_i_4_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF888)) 
    irq_gen_i_5
       (.I0(p_1_in56_in),
        .I1(\REG_GEN[18].ier_reg_n_0_[18] ),
        .I2(p_1_in54_in),
        .I3(\REG_GEN[19].ier_reg_n_0_[19] ),
        .I4(\IPR_GEN.ipr[16]_i_1_n_0 ),
        .I5(\IPR_GEN.ipr[17]_i_1_n_0 ),
        .O(irq_gen_i_5_n_0));
  FDRE irq_gen_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(irq_gen_i),
        .Q(irq_gen),
        .R(SR));
  FDRE \mer_int_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\mer_int_reg[0]_0 ),
        .Q(mer),
        .R(SR));
  FDRE \mer_int_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\mer_int_reg[1]_0 ),
        .Q(p_0_in),
        .R(SR));
  LUT1 #(
    .INIT(2'h1)) 
    rst_i_1
       (.I0(s_axi_aresetn),
        .O(SR));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \s_axi_rdata_i[0]_i_3 
       (.I0(ivr[0]),
        .I1(\REG_GEN[0].ier_reg_n_0_[0] ),
        .I2(Q[0]),
        .I3(\REG_GEN[0].isr_reg_n_0_[0] ),
        .I4(Q[1]),
        .O(\IVR_GEN.ivr_reg[0]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT5 #(
    .INIT(32'h77057727)) 
    \s_axi_rdata_i[10]_i_2 
       (.I0(Q[0]),
        .I1(\IVR_GEN.ivr_reg[0]_0 ),
        .I2(p_1_in72_in),
        .I3(Q[1]),
        .I4(\REG_GEN[10].ier_reg_n_0_[10] ),
        .O(\bus2ip_addr_i_reg[3]_12 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT5 #(
    .INIT(32'h77057727)) 
    \s_axi_rdata_i[11]_i_2 
       (.I0(Q[0]),
        .I1(\IVR_GEN.ivr_reg[0]_0 ),
        .I2(p_1_in70_in),
        .I3(Q[1]),
        .I4(\REG_GEN[11].ier_reg_n_0_[11] ),
        .O(\bus2ip_addr_i_reg[3]_11 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT5 #(
    .INIT(32'h77057727)) 
    \s_axi_rdata_i[12]_i_2 
       (.I0(Q[0]),
        .I1(\IVR_GEN.ivr_reg[0]_0 ),
        .I2(p_1_in68_in),
        .I3(Q[1]),
        .I4(\REG_GEN[12].ier_reg_n_0_[12] ),
        .O(\bus2ip_addr_i_reg[3]_10 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT5 #(
    .INIT(32'h77057727)) 
    \s_axi_rdata_i[13]_i_2 
       (.I0(Q[0]),
        .I1(\IVR_GEN.ivr_reg[0]_0 ),
        .I2(p_1_in66_in),
        .I3(Q[1]),
        .I4(\REG_GEN[13].ier_reg_n_0_[13] ),
        .O(\bus2ip_addr_i_reg[3]_9 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT5 #(
    .INIT(32'h77057727)) 
    \s_axi_rdata_i[14]_i_2 
       (.I0(Q[0]),
        .I1(\IVR_GEN.ivr_reg[0]_0 ),
        .I2(p_1_in64_in),
        .I3(Q[1]),
        .I4(\REG_GEN[14].ier_reg_n_0_[14] ),
        .O(\bus2ip_addr_i_reg[3]_8 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT5 #(
    .INIT(32'h77057727)) 
    \s_axi_rdata_i[15]_i_2 
       (.I0(Q[0]),
        .I1(\IVR_GEN.ivr_reg[0]_0 ),
        .I2(p_1_in62_in),
        .I3(Q[1]),
        .I4(\REG_GEN[15].ier_reg_n_0_[15] ),
        .O(\bus2ip_addr_i_reg[3]_7 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT5 #(
    .INIT(32'h77057727)) 
    \s_axi_rdata_i[16]_i_2 
       (.I0(Q[0]),
        .I1(\IVR_GEN.ivr_reg[0]_0 ),
        .I2(p_1_in60_in),
        .I3(Q[1]),
        .I4(\REG_GEN[16].ier_reg_n_0_[16] ),
        .O(\bus2ip_addr_i_reg[3]_6 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT5 #(
    .INIT(32'h77057727)) 
    \s_axi_rdata_i[17]_i_2 
       (.I0(Q[0]),
        .I1(\IVR_GEN.ivr_reg[0]_0 ),
        .I2(p_1_in58_in),
        .I3(Q[1]),
        .I4(\REG_GEN[17].ier_reg_n_0_[17] ),
        .O(\bus2ip_addr_i_reg[3]_5 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT5 #(
    .INIT(32'h77057727)) 
    \s_axi_rdata_i[18]_i_2 
       (.I0(Q[0]),
        .I1(\IVR_GEN.ivr_reg[0]_0 ),
        .I2(p_1_in56_in),
        .I3(Q[1]),
        .I4(\REG_GEN[18].ier_reg_n_0_[18] ),
        .O(\bus2ip_addr_i_reg[3]_4 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT5 #(
    .INIT(32'h77057727)) 
    \s_axi_rdata_i[19]_i_2 
       (.I0(Q[0]),
        .I1(\IVR_GEN.ivr_reg[0]_0 ),
        .I2(p_1_in54_in),
        .I3(Q[1]),
        .I4(\REG_GEN[19].ier_reg_n_0_[19] ),
        .O(\bus2ip_addr_i_reg[3]_3 ));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \s_axi_rdata_i[1]_i_3 
       (.I0(ivr[1]),
        .I1(p_0_in89_in),
        .I2(Q[0]),
        .I3(p_1_in90_in),
        .I4(Q[1]),
        .O(\IVR_GEN.ivr_reg[1]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT5 #(
    .INIT(32'h77057727)) 
    \s_axi_rdata_i[20]_i_2 
       (.I0(Q[0]),
        .I1(\IVR_GEN.ivr_reg[0]_0 ),
        .I2(p_1_in52_in),
        .I3(Q[1]),
        .I4(\REG_GEN[20].ier_reg_n_0_[20] ),
        .O(\bus2ip_addr_i_reg[3]_2 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT5 #(
    .INIT(32'h77057727)) 
    \s_axi_rdata_i[21]_i_2 
       (.I0(Q[0]),
        .I1(\IVR_GEN.ivr_reg[0]_0 ),
        .I2(p_1_in50_in),
        .I3(Q[1]),
        .I4(\REG_GEN[21].ier_reg_n_0_[21] ),
        .O(\bus2ip_addr_i_reg[3]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT5 #(
    .INIT(32'h77057727)) 
    \s_axi_rdata_i[22]_i_2 
       (.I0(Q[0]),
        .I1(\IVR_GEN.ivr_reg[0]_0 ),
        .I2(p_1_in48_in),
        .I3(Q[1]),
        .I4(\REG_GEN[22].ier_reg_n_0_[22] ),
        .O(\bus2ip_addr_i_reg[3]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT5 #(
    .INIT(32'h77057727)) 
    \s_axi_rdata_i[23]_i_2 
       (.I0(Q[0]),
        .I1(\IVR_GEN.ivr_reg[0]_0 ),
        .I2(p_1_in46_in),
        .I3(Q[1]),
        .I4(\REG_GEN[23].ier_reg_n_0_[23] ),
        .O(\bus2ip_addr_i_reg[3] ));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \s_axi_rdata_i[2]_i_2 
       (.I0(ivr[2]),
        .I1(p_0_in87_in),
        .I2(Q[0]),
        .I3(p_1_in88_in),
        .I4(Q[1]),
        .O(\IVR_GEN.ivr_reg[2]_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \s_axi_rdata_i[31]_i_3 
       (.I0(ivr[0]),
        .I1(Q[1]),
        .I2(ivr[3]),
        .I3(ivr[1]),
        .I4(ivr[4]),
        .I5(ivr[2]),
        .O(\IVR_GEN.ivr_reg[0]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \s_axi_rdata_i[3]_i_2 
       (.I0(ivr[3]),
        .I1(p_0_in85_in),
        .I2(Q[0]),
        .I3(p_1_in86_in),
        .I4(Q[1]),
        .O(\IVR_GEN.ivr_reg[3]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \s_axi_rdata_i[4]_i_2 
       (.I0(ivr[4]),
        .I1(p_0_in83_in),
        .I2(Q[0]),
        .I3(p_1_in84_in),
        .I4(Q[1]),
        .O(\IVR_GEN.ivr_reg[4]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT5 #(
    .INIT(32'h77057727)) 
    \s_axi_rdata_i[5]_i_2 
       (.I0(Q[0]),
        .I1(\IVR_GEN.ivr_reg[0]_0 ),
        .I2(p_1_in82_in),
        .I3(Q[1]),
        .I4(p_0_in81_in),
        .O(\bus2ip_addr_i_reg[3]_17 ));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT5 #(
    .INIT(32'h77057727)) 
    \s_axi_rdata_i[6]_i_2 
       (.I0(Q[0]),
        .I1(\IVR_GEN.ivr_reg[0]_0 ),
        .I2(p_1_in80_in),
        .I3(Q[1]),
        .I4(p_0_in79_in),
        .O(\bus2ip_addr_i_reg[3]_16 ));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT5 #(
    .INIT(32'h77057727)) 
    \s_axi_rdata_i[7]_i_2 
       (.I0(Q[0]),
        .I1(\IVR_GEN.ivr_reg[0]_0 ),
        .I2(p_1_in78_in),
        .I3(Q[1]),
        .I4(p_0_in77_in),
        .O(\bus2ip_addr_i_reg[3]_15 ));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT5 #(
    .INIT(32'h77057727)) 
    \s_axi_rdata_i[8]_i_2 
       (.I0(Q[0]),
        .I1(\IVR_GEN.ivr_reg[0]_0 ),
        .I2(p_1_in76_in),
        .I3(Q[1]),
        .I4(p_0_in75_in),
        .O(\bus2ip_addr_i_reg[3]_14 ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT5 #(
    .INIT(32'h77057727)) 
    \s_axi_rdata_i[9]_i_2 
       (.I0(Q[0]),
        .I1(\IVR_GEN.ivr_reg[0]_0 ),
        .I2(p_1_in74_in),
        .I3(Q[1]),
        .I4(p_0_in73_in),
        .O(\bus2ip_addr_i_reg[3]_13 ));
endmodule

(* ORIG_REF_NAME = "slave_attachment" *) 
module zynq_bd_IRQ0_INTR_CTRL_0_slave_attachment
   (p_18_in,
    s_axi_rresp,
    Bus_RNW_reg_reg,
    s_axi_rvalid_i_reg_0,
    s_axi_bvalid_i_reg_0,
    Bus_RNW_reg_reg_0,
    Bus_RNW_reg_reg_1,
    Bus_RNW_reg_reg_2,
    Bus_RNW_reg_reg_3,
    Bus_RNW_reg_reg_4,
    Bus_RNW_reg_reg_5,
    Bus_RNW_reg_reg_6,
    Bus_RNW_reg_reg_7,
    Bus_RNW_reg_reg_8,
    Bus_RNW_reg_reg_9,
    Bus_RNW_reg_reg_10,
    Bus_RNW_reg_reg_11,
    Bus_RNW_reg_reg_12,
    Bus_RNW_reg_reg_13,
    Bus_RNW_reg_reg_14,
    Bus_RNW_reg_reg_15,
    Bus_RNW_reg_reg_16,
    Bus_RNW_reg_reg_17,
    Bus_RNW_reg_reg_18,
    Bus_RNW_reg_reg_19,
    Bus_RNW_reg_reg_20,
    Bus_RNW_reg_reg_21,
    Bus_RNW_reg_reg_22,
    Bus_RNW_reg_reg_23,
    iar,
    iar1_out,
    iar3_out,
    iar5_out,
    iar7_out,
    iar9_out,
    iar11_out,
    iar13_out,
    iar15_out,
    iar17_out,
    iar19_out,
    iar21_out,
    iar23_out,
    iar25_out,
    iar27_out,
    iar29_out,
    iar31_out,
    iar33_out,
    iar35_out,
    iar37_out,
    iar39_out,
    iar41_out,
    iar43_out,
    iar44_out,
    bus2ip_wrce,
    Q,
    ip2bus_rdack_reg,
    ip2bus_wrack_reg,
    ip2bus_rdack_prev2,
    Or128_vec2stdlogic19_out,
    ip2bus_wrack_prev2,
    Or128_vec2stdlogic,
    s_axi_wdata_1_sp_1,
    s_axi_wdata_0_sp_1,
    Bus_RNW_reg_reg_24,
    Bus_RNW_reg_reg_25,
    Bus_RNW_reg_reg_26,
    Bus_RNW_reg_reg_27,
    Bus_RNW_reg_reg_28,
    Bus_RNW_reg_reg_29,
    Bus_RNW_reg_reg_30,
    Bus_RNW_reg_reg_31,
    Bus_RNW_reg_reg_32,
    Bus_RNW_reg_reg_33,
    Bus_RNW_reg_reg_34,
    Bus_RNW_reg_reg_35,
    Bus_RNW_reg_reg_36,
    Bus_RNW_reg_reg_37,
    Bus_RNW_reg_reg_38,
    Bus_RNW_reg_reg_39,
    Bus_RNW_reg_reg_40,
    Bus_RNW_reg_reg_41,
    Bus_RNW_reg_reg_42,
    Bus_RNW_reg_reg_43,
    Bus_RNW_reg_reg_44,
    Bus_RNW_reg_reg_45,
    Bus_RNW_reg_reg_46,
    Bus_RNW_reg_reg_47,
    s_axi_bresp,
    s_axi_rdata,
    SR,
    s_axi_aclk,
    s_axi_arvalid,
    s_axi_wdata,
    s_axi_aresetn,
    \SIE_GEN.SIE_BIT_GEN[0].sie_reg[0] ,
    p_0_in71_in,
    p_0_in70_in,
    p_0_in69_in,
    p_0_in68_in,
    p_0_in67_in,
    p_0_in66_in,
    p_0_in65_in,
    p_0_in64_in,
    p_0_in63_in,
    p_0_in62_in,
    p_0_in61_in,
    p_0_in60_in,
    p_0_in59_in,
    p_0_in58_in,
    p_0_in57_in,
    p_0_in56_in,
    p_0_in55_in,
    p_0_in54_in,
    p_0_in53_in,
    p_0_in52_in,
    p_0_in51_in,
    p_0_in50_in,
    p_0_in49_in,
    ip2bus_rdack,
    s_axi_awvalid,
    s_axi_wvalid,
    ip2bus_wrack,
    ip2bus_rdack_int_d1,
    ip2bus_wrack_int_d1,
    \s_axi_rdata_i_reg[0]_0 ,
    \s_axi_rdata_i_reg[1]_0 ,
    \s_axi_rdata_i_reg[2]_0 ,
    \s_axi_rdata_i_reg[23]_0 ,
    \s_axi_rdata_i_reg[3]_0 ,
    \s_axi_rdata_i_reg[4]_0 ,
    \s_axi_rdata_i_reg[5]_0 ,
    \s_axi_rdata_i_reg[6]_0 ,
    \s_axi_rdata_i_reg[7]_0 ,
    \s_axi_rdata_i_reg[8]_0 ,
    \s_axi_rdata_i_reg[9]_0 ,
    \s_axi_rdata_i_reg[10]_0 ,
    \s_axi_rdata_i_reg[11]_0 ,
    \s_axi_rdata_i_reg[12]_0 ,
    \s_axi_rdata_i_reg[13]_0 ,
    \s_axi_rdata_i_reg[14]_0 ,
    \s_axi_rdata_i_reg[15]_0 ,
    \s_axi_rdata_i_reg[16]_0 ,
    \s_axi_rdata_i_reg[17]_0 ,
    \s_axi_rdata_i_reg[18]_0 ,
    \s_axi_rdata_i_reg[19]_0 ,
    \s_axi_rdata_i_reg[20]_0 ,
    \s_axi_rdata_i_reg[21]_0 ,
    \s_axi_rdata_i_reg[22]_0 ,
    \s_axi_rdata_i_reg[23]_1 ,
    \s_axi_rdata_i_reg[31]_0 ,
    p_0_in,
    mer,
    s_axi_bready,
    s_axi_rready,
    s_axi_araddr,
    s_axi_awaddr,
    s_axi_wstrb,
    p_0_in25_in,
    p_0_in26_in,
    p_0_in27_in,
    p_0_in28_in,
    p_0_in29_in,
    p_0_in30_in,
    p_0_in31_in,
    p_0_in32_in,
    p_0_in33_in,
    p_0_in34_in,
    p_0_in35_in,
    p_0_in36_in,
    p_0_in37_in,
    p_0_in38_in,
    p_0_in39_in,
    p_0_in40_in,
    p_0_in41_in,
    p_0_in42_in,
    p_0_in43_in,
    p_0_in44_in,
    p_0_in45_in,
    p_0_in46_in,
    p_0_in47_in,
    \CIE_GEN.CIE_BIT_GEN[0].cie_reg[0] );
  output p_18_in;
  output [0:0]s_axi_rresp;
  output Bus_RNW_reg_reg;
  output s_axi_rvalid_i_reg_0;
  output s_axi_bvalid_i_reg_0;
  output Bus_RNW_reg_reg_0;
  output Bus_RNW_reg_reg_1;
  output Bus_RNW_reg_reg_2;
  output Bus_RNW_reg_reg_3;
  output Bus_RNW_reg_reg_4;
  output Bus_RNW_reg_reg_5;
  output Bus_RNW_reg_reg_6;
  output Bus_RNW_reg_reg_7;
  output Bus_RNW_reg_reg_8;
  output Bus_RNW_reg_reg_9;
  output Bus_RNW_reg_reg_10;
  output Bus_RNW_reg_reg_11;
  output Bus_RNW_reg_reg_12;
  output Bus_RNW_reg_reg_13;
  output Bus_RNW_reg_reg_14;
  output Bus_RNW_reg_reg_15;
  output Bus_RNW_reg_reg_16;
  output Bus_RNW_reg_reg_17;
  output Bus_RNW_reg_reg_18;
  output Bus_RNW_reg_reg_19;
  output Bus_RNW_reg_reg_20;
  output Bus_RNW_reg_reg_21;
  output Bus_RNW_reg_reg_22;
  output Bus_RNW_reg_reg_23;
  output iar;
  output iar1_out;
  output iar3_out;
  output iar5_out;
  output iar7_out;
  output iar9_out;
  output iar11_out;
  output iar13_out;
  output iar15_out;
  output iar17_out;
  output iar19_out;
  output iar21_out;
  output iar23_out;
  output iar25_out;
  output iar27_out;
  output iar29_out;
  output iar31_out;
  output iar33_out;
  output iar35_out;
  output iar37_out;
  output iar39_out;
  output iar41_out;
  output iar43_out;
  output iar44_out;
  output [0:0]bus2ip_wrce;
  output [1:0]Q;
  output ip2bus_rdack_reg;
  output ip2bus_wrack_reg;
  output ip2bus_rdack_prev2;
  output Or128_vec2stdlogic19_out;
  output ip2bus_wrack_prev2;
  output Or128_vec2stdlogic;
  output s_axi_wdata_1_sp_1;
  output s_axi_wdata_0_sp_1;
  output Bus_RNW_reg_reg_24;
  output Bus_RNW_reg_reg_25;
  output Bus_RNW_reg_reg_26;
  output Bus_RNW_reg_reg_27;
  output Bus_RNW_reg_reg_28;
  output Bus_RNW_reg_reg_29;
  output Bus_RNW_reg_reg_30;
  output Bus_RNW_reg_reg_31;
  output Bus_RNW_reg_reg_32;
  output Bus_RNW_reg_reg_33;
  output Bus_RNW_reg_reg_34;
  output Bus_RNW_reg_reg_35;
  output Bus_RNW_reg_reg_36;
  output Bus_RNW_reg_reg_37;
  output Bus_RNW_reg_reg_38;
  output Bus_RNW_reg_reg_39;
  output Bus_RNW_reg_reg_40;
  output Bus_RNW_reg_reg_41;
  output Bus_RNW_reg_reg_42;
  output Bus_RNW_reg_reg_43;
  output Bus_RNW_reg_reg_44;
  output Bus_RNW_reg_reg_45;
  output Bus_RNW_reg_reg_46;
  output Bus_RNW_reg_reg_47;
  output [0:0]s_axi_bresp;
  output [24:0]s_axi_rdata;
  input [0:0]SR;
  input s_axi_aclk;
  input s_axi_arvalid;
  input [23:0]s_axi_wdata;
  input s_axi_aresetn;
  input \SIE_GEN.SIE_BIT_GEN[0].sie_reg[0] ;
  input p_0_in71_in;
  input p_0_in70_in;
  input p_0_in69_in;
  input p_0_in68_in;
  input p_0_in67_in;
  input p_0_in66_in;
  input p_0_in65_in;
  input p_0_in64_in;
  input p_0_in63_in;
  input p_0_in62_in;
  input p_0_in61_in;
  input p_0_in60_in;
  input p_0_in59_in;
  input p_0_in58_in;
  input p_0_in57_in;
  input p_0_in56_in;
  input p_0_in55_in;
  input p_0_in54_in;
  input p_0_in53_in;
  input p_0_in52_in;
  input p_0_in51_in;
  input p_0_in50_in;
  input p_0_in49_in;
  input ip2bus_rdack;
  input s_axi_awvalid;
  input s_axi_wvalid;
  input ip2bus_wrack;
  input ip2bus_rdack_int_d1;
  input ip2bus_wrack_int_d1;
  input \s_axi_rdata_i_reg[0]_0 ;
  input \s_axi_rdata_i_reg[1]_0 ;
  input \s_axi_rdata_i_reg[2]_0 ;
  input [23:0]\s_axi_rdata_i_reg[23]_0 ;
  input \s_axi_rdata_i_reg[3]_0 ;
  input \s_axi_rdata_i_reg[4]_0 ;
  input \s_axi_rdata_i_reg[5]_0 ;
  input \s_axi_rdata_i_reg[6]_0 ;
  input \s_axi_rdata_i_reg[7]_0 ;
  input \s_axi_rdata_i_reg[8]_0 ;
  input \s_axi_rdata_i_reg[9]_0 ;
  input \s_axi_rdata_i_reg[10]_0 ;
  input \s_axi_rdata_i_reg[11]_0 ;
  input \s_axi_rdata_i_reg[12]_0 ;
  input \s_axi_rdata_i_reg[13]_0 ;
  input \s_axi_rdata_i_reg[14]_0 ;
  input \s_axi_rdata_i_reg[15]_0 ;
  input \s_axi_rdata_i_reg[16]_0 ;
  input \s_axi_rdata_i_reg[17]_0 ;
  input \s_axi_rdata_i_reg[18]_0 ;
  input \s_axi_rdata_i_reg[19]_0 ;
  input \s_axi_rdata_i_reg[20]_0 ;
  input \s_axi_rdata_i_reg[21]_0 ;
  input \s_axi_rdata_i_reg[22]_0 ;
  input \s_axi_rdata_i_reg[23]_1 ;
  input \s_axi_rdata_i_reg[31]_0 ;
  input p_0_in;
  input mer;
  input s_axi_bready;
  input s_axi_rready;
  input [6:0]s_axi_araddr;
  input [6:0]s_axi_awaddr;
  input [3:0]s_axi_wstrb;
  input p_0_in25_in;
  input p_0_in26_in;
  input p_0_in27_in;
  input p_0_in28_in;
  input p_0_in29_in;
  input p_0_in30_in;
  input p_0_in31_in;
  input p_0_in32_in;
  input p_0_in33_in;
  input p_0_in34_in;
  input p_0_in35_in;
  input p_0_in36_in;
  input p_0_in37_in;
  input p_0_in38_in;
  input p_0_in39_in;
  input p_0_in40_in;
  input p_0_in41_in;
  input p_0_in42_in;
  input p_0_in43_in;
  input p_0_in44_in;
  input p_0_in45_in;
  input p_0_in46_in;
  input p_0_in47_in;
  input \CIE_GEN.CIE_BIT_GEN[0].cie_reg[0] ;

  wire Bus_RNW_reg_reg;
  wire Bus_RNW_reg_reg_0;
  wire Bus_RNW_reg_reg_1;
  wire Bus_RNW_reg_reg_10;
  wire Bus_RNW_reg_reg_11;
  wire Bus_RNW_reg_reg_12;
  wire Bus_RNW_reg_reg_13;
  wire Bus_RNW_reg_reg_14;
  wire Bus_RNW_reg_reg_15;
  wire Bus_RNW_reg_reg_16;
  wire Bus_RNW_reg_reg_17;
  wire Bus_RNW_reg_reg_18;
  wire Bus_RNW_reg_reg_19;
  wire Bus_RNW_reg_reg_2;
  wire Bus_RNW_reg_reg_20;
  wire Bus_RNW_reg_reg_21;
  wire Bus_RNW_reg_reg_22;
  wire Bus_RNW_reg_reg_23;
  wire Bus_RNW_reg_reg_24;
  wire Bus_RNW_reg_reg_25;
  wire Bus_RNW_reg_reg_26;
  wire Bus_RNW_reg_reg_27;
  wire Bus_RNW_reg_reg_28;
  wire Bus_RNW_reg_reg_29;
  wire Bus_RNW_reg_reg_3;
  wire Bus_RNW_reg_reg_30;
  wire Bus_RNW_reg_reg_31;
  wire Bus_RNW_reg_reg_32;
  wire Bus_RNW_reg_reg_33;
  wire Bus_RNW_reg_reg_34;
  wire Bus_RNW_reg_reg_35;
  wire Bus_RNW_reg_reg_36;
  wire Bus_RNW_reg_reg_37;
  wire Bus_RNW_reg_reg_38;
  wire Bus_RNW_reg_reg_39;
  wire Bus_RNW_reg_reg_4;
  wire Bus_RNW_reg_reg_40;
  wire Bus_RNW_reg_reg_41;
  wire Bus_RNW_reg_reg_42;
  wire Bus_RNW_reg_reg_43;
  wire Bus_RNW_reg_reg_44;
  wire Bus_RNW_reg_reg_45;
  wire Bus_RNW_reg_reg_46;
  wire Bus_RNW_reg_reg_47;
  wire Bus_RNW_reg_reg_5;
  wire Bus_RNW_reg_reg_6;
  wire Bus_RNW_reg_reg_7;
  wire Bus_RNW_reg_reg_8;
  wire Bus_RNW_reg_reg_9;
  wire \CIE_GEN.CIE_BIT_GEN[0].cie_reg[0] ;
  wire \FSM_onehot_state[0]_i_1_n_0 ;
  wire \FSM_onehot_state[1]_i_1_n_0 ;
  wire \FSM_onehot_state[2]_i_1_n_0 ;
  wire \FSM_onehot_state[3]_i_1_n_0 ;
  wire \FSM_onehot_state[3]_i_2_n_0 ;
  wire \FSM_onehot_state_reg_n_0_[0] ;
  wire \FSM_onehot_state_reg_n_0_[3] ;
  wire [3:0]\INCLUDE_DPHASE_TIMER.dpto_cnt_reg ;
  wire [31:0]IP2Bus_Data;
  wire Or128_vec2stdlogic;
  wire Or128_vec2stdlogic19_out;
  wire [1:0]Q;
  wire \SIE_GEN.SIE_BIT_GEN[0].sie_reg[0] ;
  wire [0:0]SR;
  wire [8:2]bus2ip_addr;
  wire \bus2ip_addr_i[2]_i_1_n_0 ;
  wire \bus2ip_addr_i[3]_i_1_n_0 ;
  wire \bus2ip_addr_i[4]_i_1_n_0 ;
  wire \bus2ip_addr_i[5]_i_1_n_0 ;
  wire \bus2ip_addr_i[6]_i_1_n_0 ;
  wire \bus2ip_addr_i[7]_i_1_n_0 ;
  wire \bus2ip_addr_i[8]_i_1_n_0 ;
  wire \bus2ip_addr_i[8]_i_2_n_0 ;
  wire bus2ip_rnw_i_reg_n_0;
  wire [0:0]bus2ip_wrce;
  wire clear;
  wire iar;
  wire iar11_out;
  wire iar13_out;
  wire iar15_out;
  wire iar17_out;
  wire iar19_out;
  wire iar1_out;
  wire iar21_out;
  wire iar23_out;
  wire iar25_out;
  wire iar27_out;
  wire iar29_out;
  wire iar31_out;
  wire iar33_out;
  wire iar35_out;
  wire iar37_out;
  wire iar39_out;
  wire iar3_out;
  wire iar41_out;
  wire iar43_out;
  wire iar44_out;
  wire iar5_out;
  wire iar7_out;
  wire iar9_out;
  wire ip2bus_error;
  wire ip2bus_rdack;
  wire ip2bus_rdack_int_d1;
  wire ip2bus_rdack_prev2;
  wire ip2bus_rdack_reg;
  wire ip2bus_wrack;
  wire ip2bus_wrack_int_d1;
  wire ip2bus_wrack_prev2;
  wire ip2bus_wrack_reg;
  wire is_read;
  wire is_read_i_1_n_0;
  wire is_read_reg_n_0;
  wire is_write;
  wire is_write_reg_n_0;
  wire mer;
  wire p_0_in;
  wire p_0_in25_in;
  wire p_0_in26_in;
  wire p_0_in27_in;
  wire p_0_in28_in;
  wire p_0_in29_in;
  wire p_0_in30_in;
  wire p_0_in31_in;
  wire p_0_in32_in;
  wire p_0_in33_in;
  wire p_0_in34_in;
  wire p_0_in35_in;
  wire p_0_in36_in;
  wire p_0_in37_in;
  wire p_0_in38_in;
  wire p_0_in39_in;
  wire p_0_in40_in;
  wire p_0_in41_in;
  wire p_0_in42_in;
  wire p_0_in43_in;
  wire p_0_in44_in;
  wire p_0_in45_in;
  wire p_0_in46_in;
  wire p_0_in47_in;
  wire p_0_in49_in;
  wire p_0_in50_in;
  wire p_0_in51_in;
  wire p_0_in52_in;
  wire p_0_in53_in;
  wire p_0_in54_in;
  wire p_0_in55_in;
  wire p_0_in56_in;
  wire p_0_in57_in;
  wire p_0_in58_in;
  wire p_0_in59_in;
  wire p_0_in60_in;
  wire p_0_in61_in;
  wire p_0_in62_in;
  wire p_0_in63_in;
  wire p_0_in64_in;
  wire p_0_in65_in;
  wire p_0_in66_in;
  wire p_0_in67_in;
  wire p_0_in68_in;
  wire p_0_in69_in;
  wire p_0_in70_in;
  wire p_0_in71_in;
  wire p_18_in;
  wire [3:0]plusOp;
  wire rst;
  wire s_axi_aclk;
  wire [6:0]s_axi_araddr;
  wire s_axi_aresetn;
  wire s_axi_arvalid;
  wire [6:0]s_axi_awaddr;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire [0:0]s_axi_bresp;
  wire s_axi_bresp_i;
  wire \s_axi_bresp_i[1]_i_1_n_0 ;
  wire s_axi_bvalid_i_i_1_n_0;
  wire s_axi_bvalid_i_reg_0;
  wire [24:0]s_axi_rdata;
  wire \s_axi_rdata_i[0]_i_2_n_0 ;
  wire \s_axi_rdata_i[1]_i_2_n_0 ;
  wire \s_axi_rdata_i_reg[0]_0 ;
  wire \s_axi_rdata_i_reg[10]_0 ;
  wire \s_axi_rdata_i_reg[11]_0 ;
  wire \s_axi_rdata_i_reg[12]_0 ;
  wire \s_axi_rdata_i_reg[13]_0 ;
  wire \s_axi_rdata_i_reg[14]_0 ;
  wire \s_axi_rdata_i_reg[15]_0 ;
  wire \s_axi_rdata_i_reg[16]_0 ;
  wire \s_axi_rdata_i_reg[17]_0 ;
  wire \s_axi_rdata_i_reg[18]_0 ;
  wire \s_axi_rdata_i_reg[19]_0 ;
  wire \s_axi_rdata_i_reg[1]_0 ;
  wire \s_axi_rdata_i_reg[20]_0 ;
  wire \s_axi_rdata_i_reg[21]_0 ;
  wire \s_axi_rdata_i_reg[22]_0 ;
  wire [23:0]\s_axi_rdata_i_reg[23]_0 ;
  wire \s_axi_rdata_i_reg[23]_1 ;
  wire \s_axi_rdata_i_reg[2]_0 ;
  wire \s_axi_rdata_i_reg[31]_0 ;
  wire \s_axi_rdata_i_reg[3]_0 ;
  wire \s_axi_rdata_i_reg[4]_0 ;
  wire \s_axi_rdata_i_reg[5]_0 ;
  wire \s_axi_rdata_i_reg[6]_0 ;
  wire \s_axi_rdata_i_reg[7]_0 ;
  wire \s_axi_rdata_i_reg[8]_0 ;
  wire \s_axi_rdata_i_reg[9]_0 ;
  wire s_axi_rready;
  wire [0:0]s_axi_rresp;
  wire s_axi_rresp_i;
  wire s_axi_rvalid_i_i_1_n_0;
  wire s_axi_rvalid_i_reg_0;
  wire [23:0]s_axi_wdata;
  wire s_axi_wdata_0_sn_1;
  wire s_axi_wdata_1_sn_1;
  wire [3:0]s_axi_wstrb;
  wire s_axi_wvalid;
  wire start2;
  wire start2_i_1_n_0;
  wire \state[0]_i_1_n_0 ;
  wire \state[1]_i_1_n_0 ;
  wire \state[1]_i_2_n_0 ;
  wire \state_reg_n_0_[0] ;
  wire \state_reg_n_0_[1] ;

  assign s_axi_wdata_0_sp_1 = s_axi_wdata_0_sn_1;
  assign s_axi_wdata_1_sp_1 = s_axi_wdata_1_sn_1;
  LUT6 #(
    .INIT(64'h444444444FFF4444)) 
    \FSM_onehot_state[0]_i_1 
       (.I0(\FSM_onehot_state[3]_i_2_n_0 ),
        .I1(\FSM_onehot_state_reg_n_0_[3] ),
        .I2(s_axi_awvalid),
        .I3(s_axi_wvalid),
        .I4(\FSM_onehot_state_reg_n_0_[0] ),
        .I5(s_axi_arvalid),
        .O(\FSM_onehot_state[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h8F88)) 
    \FSM_onehot_state[1]_i_1 
       (.I0(s_axi_arvalid),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(ip2bus_rdack_reg),
        .I3(s_axi_rresp_i),
        .O(\FSM_onehot_state[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0080FFFF00800080)) 
    \FSM_onehot_state[2]_i_1 
       (.I0(s_axi_awvalid),
        .I1(s_axi_wvalid),
        .I2(\FSM_onehot_state_reg_n_0_[0] ),
        .I3(s_axi_arvalid),
        .I4(ip2bus_wrack_reg),
        .I5(s_axi_bresp_i),
        .O(\FSM_onehot_state[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \FSM_onehot_state[3]_i_1 
       (.I0(ip2bus_wrack_reg),
        .I1(s_axi_bresp_i),
        .I2(\FSM_onehot_state_reg_n_0_[3] ),
        .I3(\FSM_onehot_state[3]_i_2_n_0 ),
        .I4(s_axi_rresp_i),
        .I5(ip2bus_rdack_reg),
        .O(\FSM_onehot_state[3]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0777)) 
    \FSM_onehot_state[3]_i_2 
       (.I0(s_axi_bvalid_i_reg_0),
        .I1(s_axi_bready),
        .I2(s_axi_rvalid_i_reg_0),
        .I3(s_axi_rready),
        .O(\FSM_onehot_state[3]_i_2_n_0 ));
  (* FSM_ENCODED_STATES = "iSTATE:0010,iSTATE0:0100,iSTATE1:1000,iSTATE2:0001" *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_state_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\FSM_onehot_state[0]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[0] ),
        .S(rst));
  (* FSM_ENCODED_STATES = "iSTATE:0010,iSTATE0:0100,iSTATE1:1000,iSTATE2:0001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\FSM_onehot_state[1]_i_1_n_0 ),
        .Q(s_axi_rresp_i),
        .R(rst));
  (* FSM_ENCODED_STATES = "iSTATE:0010,iSTATE0:0100,iSTATE1:1000,iSTATE2:0001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\FSM_onehot_state[2]_i_1_n_0 ),
        .Q(s_axi_bresp_i),
        .R(rst));
  (* FSM_ENCODED_STATES = "iSTATE:0010,iSTATE0:0100,iSTATE1:1000,iSTATE2:0001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\FSM_onehot_state[3]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[3] ),
        .R(rst));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \INCLUDE_DPHASE_TIMER.dpto_cnt[0]_i_1 
       (.I0(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [0]),
        .O(plusOp[0]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \INCLUDE_DPHASE_TIMER.dpto_cnt[1]_i_1 
       (.I0(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [1]),
        .I1(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [0]),
        .O(plusOp[1]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \INCLUDE_DPHASE_TIMER.dpto_cnt[2]_i_1 
       (.I0(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [2]),
        .I1(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [0]),
        .I2(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [1]),
        .O(plusOp[2]));
  LUT2 #(
    .INIT(4'h9)) 
    \INCLUDE_DPHASE_TIMER.dpto_cnt[3]_i_1 
       (.I0(\state_reg_n_0_[1] ),
        .I1(\state_reg_n_0_[0] ),
        .O(clear));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \INCLUDE_DPHASE_TIMER.dpto_cnt[3]_i_2 
       (.I0(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [3]),
        .I1(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [1]),
        .I2(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [0]),
        .I3(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [2]),
        .O(plusOp[3]));
  FDRE \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(plusOp[0]),
        .Q(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [0]),
        .R(clear));
  FDRE \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(plusOp[1]),
        .Q(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [1]),
        .R(clear));
  FDRE \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(plusOp[2]),
        .Q(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [2]),
        .R(clear));
  FDRE \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(plusOp[3]),
        .Q(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [3]),
        .R(clear));
  zynq_bd_IRQ0_INTR_CTRL_0_address_decoder I_DECODER
       (.Bus_RNW_reg_reg_0(Bus_RNW_reg_reg),
        .Bus_RNW_reg_reg_1(Bus_RNW_reg_reg_0),
        .Bus_RNW_reg_reg_10(Bus_RNW_reg_reg_9),
        .Bus_RNW_reg_reg_11(Bus_RNW_reg_reg_10),
        .Bus_RNW_reg_reg_12(Bus_RNW_reg_reg_11),
        .Bus_RNW_reg_reg_13(Bus_RNW_reg_reg_12),
        .Bus_RNW_reg_reg_14(Bus_RNW_reg_reg_13),
        .Bus_RNW_reg_reg_15(Bus_RNW_reg_reg_14),
        .Bus_RNW_reg_reg_16(Bus_RNW_reg_reg_15),
        .Bus_RNW_reg_reg_17(Bus_RNW_reg_reg_16),
        .Bus_RNW_reg_reg_18(Bus_RNW_reg_reg_17),
        .Bus_RNW_reg_reg_19(Bus_RNW_reg_reg_18),
        .Bus_RNW_reg_reg_2(Bus_RNW_reg_reg_1),
        .Bus_RNW_reg_reg_20(Bus_RNW_reg_reg_19),
        .Bus_RNW_reg_reg_21(Bus_RNW_reg_reg_20),
        .Bus_RNW_reg_reg_22(Bus_RNW_reg_reg_21),
        .Bus_RNW_reg_reg_23(Bus_RNW_reg_reg_22),
        .Bus_RNW_reg_reg_24(Bus_RNW_reg_reg_23),
        .Bus_RNW_reg_reg_25(Bus_RNW_reg_reg_24),
        .Bus_RNW_reg_reg_26(Bus_RNW_reg_reg_25),
        .Bus_RNW_reg_reg_27(Bus_RNW_reg_reg_26),
        .Bus_RNW_reg_reg_28(Bus_RNW_reg_reg_27),
        .Bus_RNW_reg_reg_29(Bus_RNW_reg_reg_28),
        .Bus_RNW_reg_reg_3(Bus_RNW_reg_reg_2),
        .Bus_RNW_reg_reg_30(Bus_RNW_reg_reg_29),
        .Bus_RNW_reg_reg_31(Bus_RNW_reg_reg_30),
        .Bus_RNW_reg_reg_32(Bus_RNW_reg_reg_31),
        .Bus_RNW_reg_reg_33(Bus_RNW_reg_reg_32),
        .Bus_RNW_reg_reg_34(Bus_RNW_reg_reg_33),
        .Bus_RNW_reg_reg_35(Bus_RNW_reg_reg_34),
        .Bus_RNW_reg_reg_36(Bus_RNW_reg_reg_35),
        .Bus_RNW_reg_reg_37(Bus_RNW_reg_reg_36),
        .Bus_RNW_reg_reg_38(Bus_RNW_reg_reg_37),
        .Bus_RNW_reg_reg_39(Bus_RNW_reg_reg_38),
        .Bus_RNW_reg_reg_4(Bus_RNW_reg_reg_3),
        .Bus_RNW_reg_reg_40(Bus_RNW_reg_reg_39),
        .Bus_RNW_reg_reg_41(Bus_RNW_reg_reg_40),
        .Bus_RNW_reg_reg_42(Bus_RNW_reg_reg_41),
        .Bus_RNW_reg_reg_43(Bus_RNW_reg_reg_42),
        .Bus_RNW_reg_reg_44(Bus_RNW_reg_reg_43),
        .Bus_RNW_reg_reg_45(Bus_RNW_reg_reg_44),
        .Bus_RNW_reg_reg_46(Bus_RNW_reg_reg_45),
        .Bus_RNW_reg_reg_47(Bus_RNW_reg_reg_46),
        .Bus_RNW_reg_reg_48(Bus_RNW_reg_reg_47),
        .Bus_RNW_reg_reg_49(bus2ip_rnw_i_reg_n_0),
        .Bus_RNW_reg_reg_5(Bus_RNW_reg_reg_4),
        .Bus_RNW_reg_reg_6(Bus_RNW_reg_reg_5),
        .Bus_RNW_reg_reg_7(Bus_RNW_reg_reg_6),
        .Bus_RNW_reg_reg_8(Bus_RNW_reg_reg_7),
        .Bus_RNW_reg_reg_9(Bus_RNW_reg_reg_8),
        .\CIE_GEN.CIE_BIT_GEN[0].cie_reg[0] (\CIE_GEN.CIE_BIT_GEN[0].cie_reg[0] ),
        .D({IP2Bus_Data[31],IP2Bus_Data[23:0]}),
        .\GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0 ({bus2ip_addr[8:5],Q,bus2ip_addr[2]}),
        .Or128_vec2stdlogic(Or128_vec2stdlogic),
        .Or128_vec2stdlogic19_out(Or128_vec2stdlogic19_out),
        .Q(start2),
        .\SIE_GEN.SIE_BIT_GEN[0].sie_reg[0] (\SIE_GEN.SIE_BIT_GEN[0].sie_reg[0] ),
        .bus2ip_wrce(bus2ip_wrce),
        .iar(iar),
        .iar11_out(iar11_out),
        .iar13_out(iar13_out),
        .iar15_out(iar15_out),
        .iar17_out(iar17_out),
        .iar19_out(iar19_out),
        .iar1_out(iar1_out),
        .iar21_out(iar21_out),
        .iar23_out(iar23_out),
        .iar25_out(iar25_out),
        .iar27_out(iar27_out),
        .iar29_out(iar29_out),
        .iar31_out(iar31_out),
        .iar33_out(iar33_out),
        .iar35_out(iar35_out),
        .iar37_out(iar37_out),
        .iar39_out(iar39_out),
        .iar3_out(iar3_out),
        .iar41_out(iar41_out),
        .iar43_out(iar43_out),
        .iar44_out(iar44_out),
        .iar5_out(iar5_out),
        .iar7_out(iar7_out),
        .iar9_out(iar9_out),
        .ip2bus_rdack(ip2bus_rdack),
        .ip2bus_rdack_int_d1(ip2bus_rdack_int_d1),
        .ip2bus_rdack_prev2(ip2bus_rdack_prev2),
        .ip2bus_rdack_reg(ip2bus_rdack_reg),
        .ip2bus_wrack(ip2bus_wrack),
        .ip2bus_wrack_int_d1(ip2bus_wrack_int_d1),
        .ip2bus_wrack_prev2(ip2bus_wrack_prev2),
        .ip2bus_wrack_reg(ip2bus_wrack_reg),
        .mer(mer),
        .p_0_in(p_0_in),
        .p_0_in25_in(p_0_in25_in),
        .p_0_in26_in(p_0_in26_in),
        .p_0_in27_in(p_0_in27_in),
        .p_0_in28_in(p_0_in28_in),
        .p_0_in29_in(p_0_in29_in),
        .p_0_in30_in(p_0_in30_in),
        .p_0_in31_in(p_0_in31_in),
        .p_0_in32_in(p_0_in32_in),
        .p_0_in33_in(p_0_in33_in),
        .p_0_in34_in(p_0_in34_in),
        .p_0_in35_in(p_0_in35_in),
        .p_0_in36_in(p_0_in36_in),
        .p_0_in37_in(p_0_in37_in),
        .p_0_in38_in(p_0_in38_in),
        .p_0_in39_in(p_0_in39_in),
        .p_0_in40_in(p_0_in40_in),
        .p_0_in41_in(p_0_in41_in),
        .p_0_in42_in(p_0_in42_in),
        .p_0_in43_in(p_0_in43_in),
        .p_0_in44_in(p_0_in44_in),
        .p_0_in45_in(p_0_in45_in),
        .p_0_in46_in(p_0_in46_in),
        .p_0_in47_in(p_0_in47_in),
        .p_0_in49_in(p_0_in49_in),
        .p_0_in50_in(p_0_in50_in),
        .p_0_in51_in(p_0_in51_in),
        .p_0_in52_in(p_0_in52_in),
        .p_0_in53_in(p_0_in53_in),
        .p_0_in54_in(p_0_in54_in),
        .p_0_in55_in(p_0_in55_in),
        .p_0_in56_in(p_0_in56_in),
        .p_0_in57_in(p_0_in57_in),
        .p_0_in58_in(p_0_in58_in),
        .p_0_in59_in(p_0_in59_in),
        .p_0_in60_in(p_0_in60_in),
        .p_0_in61_in(p_0_in61_in),
        .p_0_in62_in(p_0_in62_in),
        .p_0_in63_in(p_0_in63_in),
        .p_0_in64_in(p_0_in64_in),
        .p_0_in65_in(p_0_in65_in),
        .p_0_in66_in(p_0_in66_in),
        .p_0_in67_in(p_0_in67_in),
        .p_0_in68_in(p_0_in68_in),
        .p_0_in69_in(p_0_in69_in),
        .p_0_in70_in(p_0_in70_in),
        .p_0_in71_in(p_0_in71_in),
        .p_18_in(p_18_in),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_arready(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg ),
        .s_axi_arready_0(is_read_reg_n_0),
        .s_axi_awready(is_write_reg_n_0),
        .\s_axi_rdata_i_reg[0] (\s_axi_rdata_i[0]_i_2_n_0 ),
        .\s_axi_rdata_i_reg[0]_0 (\s_axi_rdata_i_reg[0]_0 ),
        .\s_axi_rdata_i_reg[10] (\s_axi_rdata_i_reg[10]_0 ),
        .\s_axi_rdata_i_reg[11] (\s_axi_rdata_i_reg[11]_0 ),
        .\s_axi_rdata_i_reg[12] (\s_axi_rdata_i_reg[12]_0 ),
        .\s_axi_rdata_i_reg[13] (\s_axi_rdata_i_reg[13]_0 ),
        .\s_axi_rdata_i_reg[14] (\s_axi_rdata_i_reg[14]_0 ),
        .\s_axi_rdata_i_reg[15] (\s_axi_rdata_i_reg[15]_0 ),
        .\s_axi_rdata_i_reg[16] (\s_axi_rdata_i_reg[16]_0 ),
        .\s_axi_rdata_i_reg[17] (\s_axi_rdata_i_reg[17]_0 ),
        .\s_axi_rdata_i_reg[18] (\s_axi_rdata_i_reg[18]_0 ),
        .\s_axi_rdata_i_reg[19] (\s_axi_rdata_i_reg[19]_0 ),
        .\s_axi_rdata_i_reg[1] (\s_axi_rdata_i[1]_i_2_n_0 ),
        .\s_axi_rdata_i_reg[1]_0 (\s_axi_rdata_i_reg[1]_0 ),
        .\s_axi_rdata_i_reg[20] (\s_axi_rdata_i_reg[20]_0 ),
        .\s_axi_rdata_i_reg[21] (\s_axi_rdata_i_reg[21]_0 ),
        .\s_axi_rdata_i_reg[22] (\s_axi_rdata_i_reg[22]_0 ),
        .\s_axi_rdata_i_reg[23] (\s_axi_rdata_i_reg[23]_0 [23:2]),
        .\s_axi_rdata_i_reg[23]_0 (\s_axi_rdata_i_reg[23]_1 ),
        .\s_axi_rdata_i_reg[2] (\s_axi_rdata_i_reg[2]_0 ),
        .\s_axi_rdata_i_reg[31] (\s_axi_rdata_i_reg[31]_0 ),
        .\s_axi_rdata_i_reg[3] (\s_axi_rdata_i_reg[3]_0 ),
        .\s_axi_rdata_i_reg[4] (\s_axi_rdata_i_reg[4]_0 ),
        .\s_axi_rdata_i_reg[5] (\s_axi_rdata_i_reg[5]_0 ),
        .\s_axi_rdata_i_reg[6] (\s_axi_rdata_i_reg[6]_0 ),
        .\s_axi_rdata_i_reg[7] (\s_axi_rdata_i_reg[7]_0 ),
        .\s_axi_rdata_i_reg[8] (\s_axi_rdata_i_reg[8]_0 ),
        .\s_axi_rdata_i_reg[9] (\s_axi_rdata_i_reg[9]_0 ),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wdata_0_sp_1(s_axi_wdata_0_sn_1),
        .s_axi_wdata_1_sp_1(s_axi_wdata_1_sn_1));
  LUT3 #(
    .INIT(8'hB8)) 
    \bus2ip_addr_i[2]_i_1 
       (.I0(s_axi_araddr[0]),
        .I1(s_axi_arvalid),
        .I2(s_axi_awaddr[0]),
        .O(\bus2ip_addr_i[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \bus2ip_addr_i[3]_i_1 
       (.I0(s_axi_araddr[1]),
        .I1(s_axi_arvalid),
        .I2(s_axi_awaddr[1]),
        .O(\bus2ip_addr_i[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \bus2ip_addr_i[4]_i_1 
       (.I0(s_axi_araddr[2]),
        .I1(s_axi_arvalid),
        .I2(s_axi_awaddr[2]),
        .O(\bus2ip_addr_i[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \bus2ip_addr_i[5]_i_1 
       (.I0(s_axi_araddr[3]),
        .I1(s_axi_arvalid),
        .I2(s_axi_awaddr[3]),
        .O(\bus2ip_addr_i[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \bus2ip_addr_i[6]_i_1 
       (.I0(s_axi_araddr[4]),
        .I1(s_axi_arvalid),
        .I2(s_axi_awaddr[4]),
        .O(\bus2ip_addr_i[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \bus2ip_addr_i[7]_i_1 
       (.I0(s_axi_araddr[5]),
        .I1(s_axi_arvalid),
        .I2(s_axi_awaddr[5]),
        .O(\bus2ip_addr_i[7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h03020202)) 
    \bus2ip_addr_i[8]_i_1 
       (.I0(s_axi_arvalid),
        .I1(\state_reg_n_0_[0] ),
        .I2(\state_reg_n_0_[1] ),
        .I3(s_axi_awvalid),
        .I4(s_axi_wvalid),
        .O(\bus2ip_addr_i[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \bus2ip_addr_i[8]_i_2 
       (.I0(s_axi_araddr[6]),
        .I1(s_axi_arvalid),
        .I2(s_axi_awaddr[6]),
        .O(\bus2ip_addr_i[8]_i_2_n_0 ));
  FDRE \bus2ip_addr_i_reg[2] 
       (.C(s_axi_aclk),
        .CE(\bus2ip_addr_i[8]_i_1_n_0 ),
        .D(\bus2ip_addr_i[2]_i_1_n_0 ),
        .Q(bus2ip_addr[2]),
        .R(rst));
  FDRE \bus2ip_addr_i_reg[3] 
       (.C(s_axi_aclk),
        .CE(\bus2ip_addr_i[8]_i_1_n_0 ),
        .D(\bus2ip_addr_i[3]_i_1_n_0 ),
        .Q(Q[0]),
        .R(rst));
  FDRE \bus2ip_addr_i_reg[4] 
       (.C(s_axi_aclk),
        .CE(\bus2ip_addr_i[8]_i_1_n_0 ),
        .D(\bus2ip_addr_i[4]_i_1_n_0 ),
        .Q(Q[1]),
        .R(rst));
  FDRE \bus2ip_addr_i_reg[5] 
       (.C(s_axi_aclk),
        .CE(\bus2ip_addr_i[8]_i_1_n_0 ),
        .D(\bus2ip_addr_i[5]_i_1_n_0 ),
        .Q(bus2ip_addr[5]),
        .R(rst));
  FDRE \bus2ip_addr_i_reg[6] 
       (.C(s_axi_aclk),
        .CE(\bus2ip_addr_i[8]_i_1_n_0 ),
        .D(\bus2ip_addr_i[6]_i_1_n_0 ),
        .Q(bus2ip_addr[6]),
        .R(rst));
  FDRE \bus2ip_addr_i_reg[7] 
       (.C(s_axi_aclk),
        .CE(\bus2ip_addr_i[8]_i_1_n_0 ),
        .D(\bus2ip_addr_i[7]_i_1_n_0 ),
        .Q(bus2ip_addr[7]),
        .R(rst));
  FDRE \bus2ip_addr_i_reg[8] 
       (.C(s_axi_aclk),
        .CE(\bus2ip_addr_i[8]_i_1_n_0 ),
        .D(\bus2ip_addr_i[8]_i_2_n_0 ),
        .Q(bus2ip_addr[8]),
        .R(rst));
  FDRE bus2ip_rnw_i_reg
       (.C(s_axi_aclk),
        .CE(\bus2ip_addr_i[8]_i_1_n_0 ),
        .D(s_axi_arvalid),
        .Q(bus2ip_rnw_i_reg_n_0),
        .R(rst));
  LUT6 #(
    .INIT(64'hFFEAEAEAAAAAAAAA)) 
    is_read_i_1
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(s_axi_bvalid_i_reg_0),
        .I2(s_axi_bready),
        .I3(s_axi_rvalid_i_reg_0),
        .I4(s_axi_rready),
        .I5(\FSM_onehot_state_reg_n_0_[3] ),
        .O(is_read_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'h8)) 
    is_read_i_2
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(s_axi_arvalid),
        .O(is_read));
  FDRE is_read_reg
       (.C(s_axi_aclk),
        .CE(is_read_i_1_n_0),
        .D(is_read),
        .Q(is_read_reg_n_0),
        .R(rst));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    is_write_i_1
       (.I0(s_axi_arvalid),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(s_axi_wvalid),
        .I3(s_axi_awvalid),
        .O(is_write));
  FDRE is_write_reg
       (.C(s_axi_aclk),
        .CE(is_read_i_1_n_0),
        .D(is_write),
        .Q(is_write_reg_n_0),
        .R(rst));
  FDRE rst_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(SR),
        .Q(rst),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hB8)) 
    \s_axi_bresp_i[1]_i_1 
       (.I0(ip2bus_error),
        .I1(s_axi_bresp_i),
        .I2(s_axi_bresp),
        .O(\s_axi_bresp_i[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_bresp_i_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\s_axi_bresp_i[1]_i_1_n_0 ),
        .Q(s_axi_bresp),
        .R(rst));
  LUT5 #(
    .INIT(32'h75553000)) 
    s_axi_bvalid_i_i_1
       (.I0(s_axi_bready),
        .I1(\state_reg_n_0_[0] ),
        .I2(\state_reg_n_0_[1] ),
        .I3(ip2bus_wrack_reg),
        .I4(s_axi_bvalid_i_reg_0),
        .O(s_axi_bvalid_i_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    s_axi_bvalid_i_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_axi_bvalid_i_i_1_n_0),
        .Q(s_axi_bvalid_i_reg_0),
        .R(rst));
  LUT6 #(
    .INIT(64'h220000FC00000000)) 
    \s_axi_rdata_i[0]_i_2 
       (.I0(mer),
        .I1(bus2ip_addr[5]),
        .I2(\s_axi_rdata_i_reg[23]_0 [0]),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(bus2ip_addr[2]),
        .O(\s_axi_rdata_i[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h000000F0C00000A0)) 
    \s_axi_rdata_i[1]_i_2 
       (.I0(\s_axi_rdata_i_reg[23]_0 [1]),
        .I1(p_0_in),
        .I2(bus2ip_addr[2]),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(bus2ip_addr[5]),
        .O(\s_axi_rdata_i[1]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[0] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(IP2Bus_Data[0]),
        .Q(s_axi_rdata[0]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[10] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(IP2Bus_Data[10]),
        .Q(s_axi_rdata[10]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[11] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(IP2Bus_Data[11]),
        .Q(s_axi_rdata[11]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[12] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(IP2Bus_Data[12]),
        .Q(s_axi_rdata[12]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[13] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(IP2Bus_Data[13]),
        .Q(s_axi_rdata[13]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[14] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(IP2Bus_Data[14]),
        .Q(s_axi_rdata[14]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[15] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(IP2Bus_Data[15]),
        .Q(s_axi_rdata[15]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[16] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(IP2Bus_Data[16]),
        .Q(s_axi_rdata[16]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[17] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(IP2Bus_Data[17]),
        .Q(s_axi_rdata[17]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[18] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(IP2Bus_Data[18]),
        .Q(s_axi_rdata[18]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[19] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(IP2Bus_Data[19]),
        .Q(s_axi_rdata[19]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[1] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(IP2Bus_Data[1]),
        .Q(s_axi_rdata[1]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[20] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(IP2Bus_Data[20]),
        .Q(s_axi_rdata[20]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[21] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(IP2Bus_Data[21]),
        .Q(s_axi_rdata[21]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[22] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(IP2Bus_Data[22]),
        .Q(s_axi_rdata[22]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[23] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(IP2Bus_Data[23]),
        .Q(s_axi_rdata[23]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[2] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(IP2Bus_Data[2]),
        .Q(s_axi_rdata[2]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[31] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(IP2Bus_Data[31]),
        .Q(s_axi_rdata[24]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[3] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(IP2Bus_Data[3]),
        .Q(s_axi_rdata[3]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[4] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(IP2Bus_Data[4]),
        .Q(s_axi_rdata[4]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[5] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(IP2Bus_Data[5]),
        .Q(s_axi_rdata[5]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[6] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(IP2Bus_Data[6]),
        .Q(s_axi_rdata[6]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[7] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(IP2Bus_Data[7]),
        .Q(s_axi_rdata[7]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[8] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(IP2Bus_Data[8]),
        .Q(s_axi_rdata[8]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[9] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(IP2Bus_Data[9]),
        .Q(s_axi_rdata[9]),
        .R(rst));
  LUT5 #(
    .INIT(32'h070F0F0F)) 
    \s_axi_rresp_i[1]_i_1 
       (.I0(s_axi_wstrb[3]),
        .I1(s_axi_wstrb[0]),
        .I2(bus2ip_rnw_i_reg_n_0),
        .I3(s_axi_wstrb[1]),
        .I4(s_axi_wstrb[2]),
        .O(ip2bus_error));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rresp_i_reg[1] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(ip2bus_error),
        .Q(s_axi_rresp),
        .R(rst));
  LUT5 #(
    .INIT(32'h75553000)) 
    s_axi_rvalid_i_i_1
       (.I0(s_axi_rready),
        .I1(\state_reg_n_0_[1] ),
        .I2(\state_reg_n_0_[0] ),
        .I3(ip2bus_rdack_reg),
        .I4(s_axi_rvalid_i_reg_0),
        .O(s_axi_rvalid_i_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    s_axi_rvalid_i_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_axi_rvalid_i_i_1_n_0),
        .Q(s_axi_rvalid_i_reg_0),
        .R(rst));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT5 #(
    .INIT(32'h000F0008)) 
    start2_i_1
       (.I0(s_axi_awvalid),
        .I1(s_axi_wvalid),
        .I2(\state_reg_n_0_[0] ),
        .I3(\state_reg_n_0_[1] ),
        .I4(s_axi_arvalid),
        .O(start2_i_1_n_0));
  FDRE start2_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(start2_i_1_n_0),
        .Q(start2),
        .R(rst));
  LUT5 #(
    .INIT(32'hF3BBF388)) 
    \state[0]_i_1 
       (.I0(ip2bus_wrack_reg),
        .I1(\state_reg_n_0_[1] ),
        .I2(\FSM_onehot_state[3]_i_2_n_0 ),
        .I3(\state_reg_n_0_[0] ),
        .I4(s_axi_arvalid),
        .O(\state[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFF0FA3A3FF0FA0A0)) 
    \state[1]_i_1 
       (.I0(ip2bus_rdack_reg),
        .I1(s_axi_arvalid),
        .I2(\state_reg_n_0_[0] ),
        .I3(\FSM_onehot_state[3]_i_2_n_0 ),
        .I4(\state_reg_n_0_[1] ),
        .I5(\state[1]_i_2_n_0 ),
        .O(\state[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \state[1]_i_2 
       (.I0(s_axi_awvalid),
        .I1(s_axi_wvalid),
        .O(\state[1]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\state[0]_i_1_n_0 ),
        .Q(\state_reg_n_0_[0] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\state[1]_i_1_n_0 ),
        .Q(\state_reg_n_0_[1] ),
        .R(rst));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
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
    reg GRESTORE_int;

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

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

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

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
