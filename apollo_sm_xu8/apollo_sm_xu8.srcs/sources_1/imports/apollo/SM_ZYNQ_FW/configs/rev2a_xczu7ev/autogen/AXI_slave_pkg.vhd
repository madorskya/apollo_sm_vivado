library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

package AXISlaveAddrPkg is
constant AXI_ADDR_IRQ0_INTR_CTRL : unsigned(31 downto 0) := x"A0000000";
constant AXI_ADDR_C2C1_AXI_BRIDGE : unsigned(31 downto 0) := x"B0000000";
constant AXI_ADDR_C2C1_AXI_FW : unsigned(31 downto 0) := x"A0001000";
constant AXI_ADDR_C2C1B_AXI_LITE_BRIDGE : unsigned(31 downto 0) := x"B1000000";
constant AXI_ADDR_C2C1_AXILITE_FW : unsigned(31 downto 0) := x"A0002000";
constant AXI_ADDR_C2C2_AXI_BRIDGE : unsigned(31 downto 0) := x"B2000000";
constant AXI_ADDR_C2C2_AXI_FW : unsigned(31 downto 0) := x"A0003000";
constant AXI_ADDR_C2C2B_AXI_LITE_BRIDGE : unsigned(31 downto 0) := x"B3000000";
constant AXI_ADDR_C2C2_AXILITE_FW : unsigned(31 downto 0) := x"A0004000";
constant AXI_ADDR_PL_MEM : unsigned(31 downto 0) := x"A8000000";
constant AXI_ADDR_PL_MEM_CM : unsigned(31 downto 0) := x"A8002000";
constant AXI_ADDR_SERV : unsigned(31 downto 0) := x"A8004000";
constant AXI_ADDR_SLAVE_I2C : unsigned(31 downto 0) := x"A8006000";
constant AXI_ADDR_CM_MON_AXI_FW : unsigned(31 downto 0) := x"B4000000";
constant AXI_ADDR_SM_INFO : unsigned(31 downto 0) := x"A8005000";
constant AXI_ADDR_MONITOR : unsigned(31 downto 0) := x"A0005000";
constant AXI_ADDR_SI : unsigned(31 downto 0) := x"A0006000";
constant AXI_ADDR_PLXVC : unsigned(31 downto 0) := x"A0007000";
constant AXI_ADDR_CM : unsigned(31 downto 0) := x"A0100000";
constant AXI_ADDR_CM1_UART : unsigned(31 downto 0) := x"A0008000";
constant AXI_ADDR_CM2_UART : unsigned(31 downto 0) := x"A0009000";
constant AXI_ADDR_CM1_PB_UART : unsigned(31 downto 0) := x"A000A000";
constant AXI_ADDR_CM2_PB_UART : unsigned(31 downto 0) := x"A000B000";
constant AXI_ADDR_ESM_UART : unsigned(31 downto 0) := x"A000C000";
constant AXI_ADDR_AXI_MON : unsigned(31 downto 0) := x"B4001000";
constant AXI_ADDR_INT_AXI_FW : unsigned(31 downto 0) := x"B4002000";
-- ranges
constant AXI_RANGE_IRQ0_INTR_CTRL : unsigned(31 downto 0) :=  x"00001000";
constant AXI_RANGE_C2C1_AXI_BRIDGE : unsigned(31 downto 0) :=  x"01000000";
constant AXI_RANGE_C2C1_AXI_FW : unsigned(31 downto 0) :=  x"00001000";
constant AXI_RANGE_C2C1B_AXI_LITE_BRIDGE : unsigned(31 downto 0) :=  x"01000000";
constant AXI_RANGE_C2C1_AXILITE_FW : unsigned(31 downto 0) :=  x"00001000";
constant AXI_RANGE_C2C2_AXI_BRIDGE : unsigned(31 downto 0) :=  x"01000000";
constant AXI_RANGE_C2C2_AXI_FW : unsigned(31 downto 0) :=  x"00001000";
constant AXI_RANGE_C2C2B_AXI_LITE_BRIDGE : unsigned(31 downto 0) :=  x"01000000";
constant AXI_RANGE_C2C2_AXILITE_FW : unsigned(31 downto 0) :=  x"00001000";
constant AXI_RANGE_PL_MEM : unsigned(31 downto 0) :=  x"00002000";
constant AXI_RANGE_PL_MEM_CM : unsigned(31 downto 0) :=  x"00002000";
constant AXI_RANGE_SERV : unsigned(31 downto 0) :=  x"00001000";
constant AXI_RANGE_SLAVE_I2C : unsigned(31 downto 0) :=  x"00002000";
constant AXI_RANGE_CM_MON_AXI_FW : unsigned(31 downto 0) :=  x"00001000";
constant AXI_RANGE_SM_INFO : unsigned(31 downto 0) :=  x"00001000";
constant AXI_RANGE_MONITOR : unsigned(31 downto 0) :=  x"00001000";
constant AXI_RANGE_SI : unsigned(31 downto 0) :=  x"00001000";
constant AXI_RANGE_PLXVC : unsigned(31 downto 0) :=  x"00001000";
constant AXI_RANGE_CM : unsigned(31 downto 0) :=  x"00020000";
constant AXI_RANGE_CM1_UART : unsigned(31 downto 0) :=  x"00001000";
constant AXI_RANGE_CM2_UART : unsigned(31 downto 0) :=  x"00001000";
constant AXI_RANGE_CM1_PB_UART : unsigned(31 downto 0) :=  x"00001000";
constant AXI_RANGE_CM2_PB_UART : unsigned(31 downto 0) :=  x"00001000";
constant AXI_RANGE_ESM_UART : unsigned(31 downto 0) :=  x"00001000";
constant AXI_RANGE_AXI_MON : unsigned(31 downto 0) :=  x"00001000";
constant AXI_RANGE_INT_AXI_FW : unsigned(31 downto 0) :=  x"00001000";
end package AXISlaveAddrPkg;
