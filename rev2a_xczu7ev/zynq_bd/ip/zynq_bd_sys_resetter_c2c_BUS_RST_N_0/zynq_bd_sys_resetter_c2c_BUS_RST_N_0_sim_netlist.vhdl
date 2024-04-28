-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.2 (lin64) Build 4029153 Fri Oct 13 20:13:54 MDT 2023
-- Date        : Sat Apr 20 17:07:59 2024
-- Host        : tesla.bu.edu running 64-bit AlmaLinux release 8.8 (Sapphire Caracal)
-- Command     : write_vhdl -force -mode funcsim -rename_top zynq_bd_sys_resetter_c2c_BUS_RST_N_0 -prefix
--               zynq_bd_sys_resetter_c2c_BUS_RST_N_0_ zynq_bd_sys_resetter_primary_BUS_RST_N_0_sim_netlist.vhdl
-- Design      : zynq_bd_sys_resetter_primary_BUS_RST_N_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xczu7ev-fbvb900-2-i
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity zynq_bd_sys_resetter_c2c_BUS_RST_N_0 is
  port (
    Op1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    Res : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of zynq_bd_sys_resetter_c2c_BUS_RST_N_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of zynq_bd_sys_resetter_c2c_BUS_RST_N_0 : entity is "zynq_bd_sys_resetter_primary_BUS_RST_N_0,util_vector_logic_v2_0_3_util_vector_logic,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of zynq_bd_sys_resetter_c2c_BUS_RST_N_0 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of zynq_bd_sys_resetter_c2c_BUS_RST_N_0 : entity is "util_vector_logic_v2_0_3_util_vector_logic,Vivado 2023.2";
end zynq_bd_sys_resetter_c2c_BUS_RST_N_0;

architecture STRUCTURE of zynq_bd_sys_resetter_c2c_BUS_RST_N_0 is
begin
\Res[0]_INST_0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Op1(0),
      O => Res(0)
    );
end STRUCTURE;
