`timescale 1ns / 1ps
module jtag_mux
(
    (* X_INTERFACE_INFO = "xilinx.com:interface:jtag:2.0 JTAG_0 TCK" *)
    input   wire                                  TCK_0,
    (* X_INTERFACE_INFO = "xilinx.com:interface:jtag:2.0 JTAG_0 TMS" *)
    input   wire                                  TMS_0,
    (* X_INTERFACE_INFO = "xilinx.com:interface:jtag:2.0 JTAG_0 TDI" *)
    input   wire                                  TDI_0,
    (* X_INTERFACE_INFO = "xilinx.com:interface:jtag:2.0 JTAG_0 TDO" *)
    output  wire                                  TDO_0,
    
    (* X_INTERFACE_INFO = "xilinx.com:interface:jtag:2.0 JTAG_1 TCK" *)
    input   wire                                  TCK_1,
    (* X_INTERFACE_INFO = "xilinx.com:interface:jtag:2.0 JTAG_1 TMS" *)
    input   wire                                  TMS_1,
    (* X_INTERFACE_INFO = "xilinx.com:interface:jtag:2.0 JTAG_1 TDI" *)
    input   wire                                  TDI_1,
    (* X_INTERFACE_INFO = "xilinx.com:interface:jtag:2.0 JTAG_1 TDO" *)
    output  wire                                  TDO_1,
    
    (* X_INTERFACE_INFO = "xilinx.com:interface:jtag:2.0 JTAG TCK" *)
    output  wire                                  TCK,
    (* X_INTERFACE_INFO = "xilinx.com:interface:jtag:2.0 JTAG TMS" *)
    output  wire                                  TMS,
    (* X_INTERFACE_INFO = "xilinx.com:interface:jtag:2.0 JTAG TDI" *)
    output  wire                                  TDI,
    (* X_INTERFACE_INFO = "xilinx.com:interface:jtag:2.0 JTAG TDO" *)
    input   wire                                  TDO
);

assign TCK = TCK_0 | TCK_1;
assign TMS = TMS_0 | TMS_1;
assign TDI = TDI_0 | TDI_1;
assign TDO_0 = TDO;
assign TDO_1 = TDO; 
 
endmodule
