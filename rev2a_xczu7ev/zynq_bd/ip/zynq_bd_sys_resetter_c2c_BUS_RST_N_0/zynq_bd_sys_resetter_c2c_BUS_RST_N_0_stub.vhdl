-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.2 (lin64) Build 4029153 Fri Oct 13 20:13:54 MDT 2023
-- Date        : Sat Apr 20 17:07:59 2024
-- Host        : tesla.bu.edu running 64-bit AlmaLinux release 8.8 (Sapphire Caracal)
-- Command     : write_vhdl -force -mode synth_stub -rename_top zynq_bd_sys_resetter_c2c_BUS_RST_N_0 -prefix
--               zynq_bd_sys_resetter_c2c_BUS_RST_N_0_ zynq_bd_sys_resetter_primary_BUS_RST_N_0_stub.vhdl
-- Design      : zynq_bd_sys_resetter_primary_BUS_RST_N_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xczu7ev-fbvb900-2-i
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity zynq_bd_sys_resetter_c2c_BUS_RST_N_0 is
  Port ( 
    Op1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    Res : out STD_LOGIC_VECTOR ( 0 to 0 )
  );

end zynq_bd_sys_resetter_c2c_BUS_RST_N_0;

architecture stub of zynq_bd_sys_resetter_c2c_BUS_RST_N_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "Op1[0:0],Res[0:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "util_vector_logic_v2_0_3_util_vector_logic,Vivado 2023.2";
begin
end;
