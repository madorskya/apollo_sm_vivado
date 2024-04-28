-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.2 (lin64) Build 4029153 Fri Oct 13 20:13:54 MDT 2023
-- Date        : Sat Apr 20 17:15:55 2024
-- Host        : tesla.bu.edu running 64-bit AlmaLinux release 8.8 (Sapphire Caracal)
-- Command     : write_vhdl -force -mode synth_stub
--               /home/madorsky/github/apollo/SM_ZYNQ_FW/Projects/rev2a_xczu7ev/zynq_bd/ip/zynq_bd_xbar_0/zynq_bd_xbar_0_stub.vhdl
-- Design      : zynq_bd_xbar_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xczu7ev-fbvb900-2-i
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity zynq_bd_xbar_0 is
  Port ( 
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 33 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 79 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awuser : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awvalid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awready : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_wlast : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_wvalid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_wready : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bid : out STD_LOGIC_VECTOR ( 33 downto 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_bvalid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bready : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arid : in STD_LOGIC_VECTOR ( 33 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 79 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_aruser : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arvalid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arready : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rid : out STD_LOGIC_VECTOR ( 33 downto 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_rlast : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rready : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 599 downto 0 );
    m_axi_awlen : out STD_LOGIC_VECTOR ( 119 downto 0 );
    m_axi_awsize : out STD_LOGIC_VECTOR ( 44 downto 0 );
    m_axi_awburst : out STD_LOGIC_VECTOR ( 29 downto 0 );
    m_axi_awlock : out STD_LOGIC_VECTOR ( 14 downto 0 );
    m_axi_awcache : out STD_LOGIC_VECTOR ( 59 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 44 downto 0 );
    m_axi_awregion : out STD_LOGIC_VECTOR ( 59 downto 0 );
    m_axi_awqos : out STD_LOGIC_VECTOR ( 59 downto 0 );
    m_axi_awuser : out STD_LOGIC_VECTOR ( 239 downto 0 );
    m_axi_awvalid : out STD_LOGIC_VECTOR ( 14 downto 0 );
    m_axi_awready : in STD_LOGIC_VECTOR ( 14 downto 0 );
    m_axi_wdata : out STD_LOGIC_VECTOR ( 479 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 59 downto 0 );
    m_axi_wlast : out STD_LOGIC_VECTOR ( 14 downto 0 );
    m_axi_wvalid : out STD_LOGIC_VECTOR ( 14 downto 0 );
    m_axi_wready : in STD_LOGIC_VECTOR ( 14 downto 0 );
    m_axi_bresp : in STD_LOGIC_VECTOR ( 29 downto 0 );
    m_axi_bvalid : in STD_LOGIC_VECTOR ( 14 downto 0 );
    m_axi_bready : out STD_LOGIC_VECTOR ( 14 downto 0 );
    m_axi_araddr : out STD_LOGIC_VECTOR ( 599 downto 0 );
    m_axi_arlen : out STD_LOGIC_VECTOR ( 119 downto 0 );
    m_axi_arsize : out STD_LOGIC_VECTOR ( 44 downto 0 );
    m_axi_arburst : out STD_LOGIC_VECTOR ( 29 downto 0 );
    m_axi_arlock : out STD_LOGIC_VECTOR ( 14 downto 0 );
    m_axi_arcache : out STD_LOGIC_VECTOR ( 59 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 44 downto 0 );
    m_axi_arregion : out STD_LOGIC_VECTOR ( 59 downto 0 );
    m_axi_arqos : out STD_LOGIC_VECTOR ( 59 downto 0 );
    m_axi_aruser : out STD_LOGIC_VECTOR ( 239 downto 0 );
    m_axi_arvalid : out STD_LOGIC_VECTOR ( 14 downto 0 );
    m_axi_arready : in STD_LOGIC_VECTOR ( 14 downto 0 );
    m_axi_rdata : in STD_LOGIC_VECTOR ( 479 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 29 downto 0 );
    m_axi_rlast : in STD_LOGIC_VECTOR ( 14 downto 0 );
    m_axi_rvalid : in STD_LOGIC_VECTOR ( 14 downto 0 );
    m_axi_rready : out STD_LOGIC_VECTOR ( 14 downto 0 )
  );

end zynq_bd_xbar_0;

architecture stub of zynq_bd_xbar_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "aclk,aresetn,s_axi_awid[33:0],s_axi_awaddr[79:0],s_axi_awlen[15:0],s_axi_awsize[5:0],s_axi_awburst[3:0],s_axi_awlock[1:0],s_axi_awcache[7:0],s_axi_awprot[5:0],s_axi_awqos[7:0],s_axi_awuser[31:0],s_axi_awvalid[1:0],s_axi_awready[1:0],s_axi_wdata[63:0],s_axi_wstrb[7:0],s_axi_wlast[1:0],s_axi_wvalid[1:0],s_axi_wready[1:0],s_axi_bid[33:0],s_axi_bresp[3:0],s_axi_bvalid[1:0],s_axi_bready[1:0],s_axi_arid[33:0],s_axi_araddr[79:0],s_axi_arlen[15:0],s_axi_arsize[5:0],s_axi_arburst[3:0],s_axi_arlock[1:0],s_axi_arcache[7:0],s_axi_arprot[5:0],s_axi_arqos[7:0],s_axi_aruser[31:0],s_axi_arvalid[1:0],s_axi_arready[1:0],s_axi_rid[33:0],s_axi_rdata[63:0],s_axi_rresp[3:0],s_axi_rlast[1:0],s_axi_rvalid[1:0],s_axi_rready[1:0],m_axi_awaddr[599:0],m_axi_awlen[119:0],m_axi_awsize[44:0],m_axi_awburst[29:0],m_axi_awlock[14:0],m_axi_awcache[59:0],m_axi_awprot[44:0],m_axi_awregion[59:0],m_axi_awqos[59:0],m_axi_awuser[239:0],m_axi_awvalid[14:0],m_axi_awready[14:0],m_axi_wdata[479:0],m_axi_wstrb[59:0],m_axi_wlast[14:0],m_axi_wvalid[14:0],m_axi_wready[14:0],m_axi_bresp[29:0],m_axi_bvalid[14:0],m_axi_bready[14:0],m_axi_araddr[599:0],m_axi_arlen[119:0],m_axi_arsize[44:0],m_axi_arburst[29:0],m_axi_arlock[14:0],m_axi_arcache[59:0],m_axi_arprot[44:0],m_axi_arregion[59:0],m_axi_arqos[59:0],m_axi_aruser[239:0],m_axi_arvalid[14:0],m_axi_arready[14:0],m_axi_rdata[479:0],m_axi_rresp[29:0],m_axi_rlast[14:0],m_axi_rvalid[14:0],m_axi_rready[14:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "axi_crossbar_v2_1_30_axi_crossbar,Vivado 2023.2";
begin
end;
