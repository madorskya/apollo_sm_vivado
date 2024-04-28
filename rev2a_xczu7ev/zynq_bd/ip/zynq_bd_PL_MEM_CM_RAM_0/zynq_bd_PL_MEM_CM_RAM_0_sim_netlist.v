// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (lin64) Build 4029153 Fri Oct 13 20:13:54 MDT 2023
// Date        : Sat Apr 20 17:06:08 2024
// Host        : tesla.bu.edu running 64-bit AlmaLinux release 8.8 (Sapphire Caracal)
// Command     : write_verilog -force -mode funcsim -rename_top zynq_bd_PL_MEM_CM_RAM_0 -prefix
//               zynq_bd_PL_MEM_CM_RAM_0_ zynq_bd_PL_MEM_RAM_0_sim_netlist.v
// Design      : zynq_bd_PL_MEM_RAM_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xczu7ev-fbvb900-2-i
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "zynq_bd_PL_MEM_RAM_0,blk_mem_gen_v8_4_7,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_7,Vivado 2023.2" *) 
(* NotValidForBitStream *)
module zynq_bd_PL_MEM_CM_RAM_0
   (clka,
    rsta,
    ena,
    wea,
    addra,
    dina,
    douta,
    clkb,
    rstb,
    enb,
    web,
    addrb,
    dinb,
    doutb,
    rsta_busy,
    rstb_busy);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ_WRITE, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA RST" *) input rsta;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA EN" *) input ena;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [3:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [31:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [31:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [31:0]douta;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTB, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ_WRITE, READ_LATENCY 1" *) input clkb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB RST" *) input rstb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB EN" *) input enb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB WE" *) input [3:0]web;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB ADDR" *) input [31:0]addrb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DIN" *) input [31:0]dinb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DOUT" *) output [31:0]doutb;
  output rsta_busy;
  output rstb_busy;

  wire [31:0]addra;
  wire [31:0]addrb;
  wire clka;
  wire clkb;
  wire [31:0]dina;
  wire [31:0]dinb;
  wire [31:0]douta;
  wire [31:0]doutb;
  wire ena;
  wire enb;
  wire rsta;
  wire rsta_busy;
  wire rstb;
  wire rstb_busy;
  wire [3:0]wea;
  wire [3:0]web;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_sbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire [31:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [31:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [31:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "32" *) 
  (* C_ADDRB_WIDTH = "32" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "8" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "0" *) 
  (* C_COUNT_36K_BRAM = "2" *) 
  (* C_CTRL_ECC_ALGO = "NONE" *) 
  (* C_DEFAULT_DATA = "0" *) 
  (* C_DISABLE_WARN_BHV_COLL = "0" *) 
  (* C_DISABLE_WARN_BHV_RANGE = "0" *) 
  (* C_ELABORATION_DIR = "./" *) 
  (* C_ENABLE_32BIT_ADDRESS = "1" *) 
  (* C_EN_DEEPSLEEP_PIN = "0" *) 
  (* C_EN_ECC_PIPE = "0" *) 
  (* C_EN_RDADDRA_CHG = "0" *) 
  (* C_EN_RDADDRB_CHG = "0" *) 
  (* C_EN_SAFETY_CKT = "1" *) 
  (* C_EN_SHUTDOWN_PIN = "0" *) 
  (* C_EN_SLEEP_PIN = "0" *) 
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     7.734465 mW" *) 
  (* C_FAMILY = "zynquplus" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "1" *) 
  (* C_HAS_ENB = "1" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_REGCEA = "0" *) 
  (* C_HAS_REGCEB = "0" *) 
  (* C_HAS_RSTA = "1" *) 
  (* C_HAS_RSTB = "1" *) 
  (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) 
  (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
  (* C_INITA_VAL = "0" *) 
  (* C_INITB_VAL = "0" *) 
  (* C_INIT_FILE = "NONE" *) 
  (* C_INIT_FILE_NAME = "no_coe_file_loaded" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "0" *) 
  (* C_MEM_TYPE = "2" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "2048" *) 
  (* C_READ_DEPTH_B = "2048" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "32" *) 
  (* C_READ_WIDTH_B = "32" *) 
  (* C_RSTRAM_A = "0" *) 
  (* C_RSTRAM_B = "0" *) 
  (* C_RST_PRIORITY_A = "CE" *) 
  (* C_RST_PRIORITY_B = "CE" *) 
  (* C_SIM_COLLISION_CHECK = "ALL" *) 
  (* C_USE_BRAM_BLOCK = "1" *) 
  (* C_USE_BYTE_WEA = "1" *) 
  (* C_USE_BYTE_WEB = "1" *) 
  (* C_USE_DEFAULT_DATA = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "4" *) 
  (* C_WEB_WIDTH = "4" *) 
  (* C_WRITE_DEPTH_A = "2048" *) 
  (* C_WRITE_DEPTH_B = "2048" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "32" *) 
  (* C_WRITE_WIDTH_B = "32" *) 
  (* C_XDEVICEFAMILY = "zynquplus" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  zynq_bd_PL_MEM_CM_RAM_0_blk_mem_gen_v8_4_7 U0
       (.addra({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,addra[12:2],1'b0,1'b0}),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,addrb[12:2],1'b0,1'b0}),
        .clka(clka),
        .clkb(clkb),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina(dina),
        .dinb(dinb),
        .douta(douta),
        .doutb(doutb),
        .eccpipece(1'b0),
        .ena(ena),
        .enb(enb),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[31:0]),
        .regcea(1'b0),
        .regceb(1'b0),
        .rsta(rsta),
        .rsta_busy(rsta_busy),
        .rstb(rstb),
        .rstb_busy(rstb_busy),
        .s_aclk(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[3:0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_dbiterr(NLW_U0_s_axi_dbiterr_UNCONNECTED),
        .s_axi_injectdbiterr(1'b0),
        .s_axi_injectsbiterr(1'b0),
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[31:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[31:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(wea),
        .web(web));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2023.2"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
jLV29U0rrfMIZhYJzdoUrPoqB9eHQ5NXmWyCdqnN3Wgm+GU4C3zthrN1m4QGiaj0thPCIynZbX+0
7yjtkv+T5ByJ6NhiofAwWseGLvPXlYu6ERAPvi4SAYpF2VUqQHtPAbPmnPubGdDRgIEpeobF7hsz
rEcpEru1pyiScUriyuo=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
vsoizVrOONWw/DhjRLEYrtRmtji+Ok63CbpSg/l9VnoKAi8tAzqRbQ57atGB2N6IGGbKHkbK2Uzh
EHgWvYZeyt4hE+bpQX91vc9PNxfjQMGzPoFD3jCWk30EmEk+AND39eWx+DhJ8xhFuucoOQ2GwyAk
B+Mjs15naPE7DvlHel8hnD4dfSdYhGKp96oozu8JeBto8aHG6poOuYkxSwaut7NCI+mabCkMxtMp
RrydgmRuTvhRTbJMyx5CxFSZTRDrS5aU1vaRlnMiqKCI7g2KY9pemYaJsFeVodBuo6IyKGynyEhs
wr+VtUhQDtaVhMkwB95WwmMoDk9F2L5Au1I+TQ==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
W081dPMCWhKs5YlQD7n3zvf7+PTcnb8eFWxoVs8+zHLkxDMA1klITbsfztGYvJFce8Yao5XQLLqZ
oUE5Pq2arq+zwICFUcLjdMsmP1WmL82znHOPHm83zNwrxWMloHkySAqzFbgJeHa973uZqj0M8ydc
sYmzCYVlGVjt0QX0xqA=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Zpc3MmdLWaVOv+S4z2POuoyslYoAbWc+Npxq2UyQRtDwf566IId3uwAetolMAgfLo/G3ezuSOXMn
8NznS37h9XvmVrxA50SAux68P87WgkLtiUYqM3CMBKkxNlZ/TR8WzTuQyFdvzkOE9lp8HC7LXnk5
RDsnOM+su46FW7ysY01COslo9Xc7rhs6WFqx29+Xcqk8+ZMLSzaJfuwZdNmJFS3Q1vhlq3ZeYqMl
wMieB731KsPxjxp7VKNHpTbgFryC2isqc4ohBDOt52M/Bz4B/rIpFeHfZ7X3jWSiKtSuBsDN2NXf
EMjfAT248dlK7NxJ+NBNPhS5sLxTiGyQhta57A==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
rPMYqnkKhJKV1wltOfDrKos9ZbucaoX3WGTuqsdLkGpcKObzslHBwlGrKtWV7bZYmS2SM+QuEMfa
CE+tCUdsSiprp+n5BuSQlJa6BJ8mlqccjoo/JLw2QEmUhyMXQ3TLGomGGoZdeTmMPXhUBAOyLPea
Ddc8mgtTN8Kpy117GOTXDKP+IKJqW01fLrPJpgEhFiJCbyElLgtCRWmI94gX+y4XNVS0Cd1YwNw6
4nHgnEdC7fXARDKcYO3VsWC/pdzPQgursXloNLrVYa6i2xr+8E1V0+nSWwNYQZP7XUIVqXKMU8Ea
bT4acXrRCF/5tJJ5B9JparYI0zxXSbaakn1dIw==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2022_10", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
mfroTgL8g2pyIXQ/mGO9YHm19cd5mOlJ++qpusOYeVxGmkIhvF4aKx+AyIUz2yGGAeCtOzIasHty
pyqKgZhibSqxcpHgR0m6GOxXXOXJiHaK8NzxUzXeRJovcBI/WjtDhXeb1LRMI1J97jVBtJPJQH0Y
fGOD7jWvkvQwxnrZdyLp6kPWgSIcavHHDbO7iJv4gnyGp6W3/FCDo2RKWNLoW+SNjSdLZ6YRP8a+
ldaGU8TYvJ03KWlmik7repuN6AwxCjg2KeQ+x1sBAEXzROXomuSbvX3ZAo8UiIKAQY1SJumHLG3L
QI/S4Wbl1Hz6LDTsttMwP480gq6+tb6s1E4oWw==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
QJIabgm8dx/gVHbOQFwt8maOKVHFgkpZTPR6dzD8fqoGo9M9oGPTqBqchtPZWgv2UYFF2KEUSlV4
L3SDXBKrLs+NsAVTcICaEMiEi6j82zj/C1LsPkQfS8RLrg0ab8lbDMb5YqJ7lkHs3iM65x2iN1Mf
66cTgCbkAdl3rDpab75btpTQt5ZKiq5CSY3RZfyIW0uWbTGTELm6liuRKM9+K8BQwTU7A+FFFQBA
/9eJwQYzNNA/iwoYJ2WTPd6pBlzXriNLu9M+/2bYicNBSuH1PBR9v2ESrTB6k7EiV1zvBXV9NuG/
sFt4MumWMuSNwP2W38bQATxxW/l0IrmaXGOC/w==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
lhKf/Vgj6pHpme1ji4HVe36BU8pMkam/2I9lFeyOiBnIbzgdEGfLJBcEvkL33A7s0hxa6LFbHnkT
upgMpPjmIghBz3xUQ13vpiY152thFec6qvlcdg1r+GTmnBOSFl6g/OfZ3eFUhfsve6ZjQHpXnKFo
a55hN2+eP1EG9+VxGeM7XkHaeFhEIry52qtnmg072KEFIwRiGs2d/TJ4AqupuIdIiP1kTN9k+oqa
2ta1vdtqPY0dDHqrf+5YSd0CejkhQeCqg/bauLP3755SwdOPRgooG5ANT8hUpTiFMFXtU+GC9NSp
evJtMHUy1NbgMmhFHO+w3URLEdjSaBxZPD7YLdWkF65jY526tJzoek+BzEKoBaGfCaY7O1nHKXm+
89k3rPUy0Xo4/0nHpno+N/Db09heJPbnGsCwN/l+KnR6Lz8kvWziBjZe0ijOkKI+T12y3T1VeOtY
H/aqtNlQt1mhFwrbw6ezaAiDPVbCQXnly6b4tbb8+nFsxWOGIGAfLozB

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
PNsQ8uEcQYrl+GaDuBaq1tQ5br5aAdaqHnyrc0NVu/JnQUk53jaiLx8Oz5fNACvWelUUk2/C+P5I
b2rbU1bb/dC6TqC5J1N0yoMYRYw58u4Lrl8Kgqgt9Rlph5Qgzzfxp+oblXF/pO4mRyAXpZhpNkFT
0Ar9BUtPOTOtJ9/g53SRnZ6GjxzfeD+25J4fcXBNo2gCTgUkwiLSsJRwTB/cJmn+dZPwPdIOHEP9
TkfDK+OrbLYO3T+DFBTCMRNH2NB1J9sc5s+nPU8iYnjgPTo6HoGW+LIlCz6yNJMZzJzoeW708utc
0fJXkT7vLDVh7olvy3V9AAY8Do0YR1kiZlhVhQ==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
zAz8RnGHFebkJFAS+gjC+mXHW7m7We+JgSmIz15mS01u/4+9Ng0sJfkeXOClmVPTQ2Mp2Yuv6/6f
ehzUTcANilWsqLM6Q1FToCPNX/NTqodlcHirGM7b5R9yevouNT/aqH12nmbunBQmBHmehNutdCjG
r6Z7kZgeZ2ZE7MMOF0rTy1XHEPkqgMNTRoS8R/pPWPTW4/j+bn3aJj0Q/fTz4Gi3mbSUKWs2fREQ
UKiuolNJkN6DiDvhlVYHUyytXNJG44ikmBXehoQQRLapkYaxnQmMRT1ok9uY6pKoy71CtvJ3Mt2x
EQv1GU2i4qQyAOwa0mkEohWXduicU6tDz3zQwQ==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
TK3eE9V+v1z2P1KjG4GrjhA1n3qDOpNzLGXdtjnjhF0QBFPSuhC+nmNqTPOb3p2a9r5KD0miY3Cd
+KpjH6Ao09E2/LD2Go4aLQh6vP+9BldlSKEwCGfx2NjBQrXWVH21lQR7IRjOvyTOclpd7SgtUJLw
dvebETyLiKr9C6RfnIBeptuCA3iJlXfwkh6I0JfzD5WBizQkotioZmmrXv5105pCXQ4Ta1WThFsA
2ll9dZeSjEDHUxxhfyfjryv9m4VL89ZDU/rGITsdptwB1BC1jLqmPDymY05lyECnjA6NIR5GGfI4
K2y2f4GfikKoN5r9IOvFzw963Wm82ZZPtXOKGg==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 64192)
`pragma protect data_block
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
LkVqFwFSog6vSA==
`pragma protect end_protected
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
