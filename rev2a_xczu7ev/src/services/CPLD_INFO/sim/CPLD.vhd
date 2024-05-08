library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity CPLD_Top is
  port (
    Zynq_info_clk     : in  std_logic;    
    Zynq_info_out     : out std_logic);
end entity CPLD_Top;

architecture behavioral of CPLD_top is
  constant INFO_SIZE   : integer := 5;
  constant info_stream : std_logic_vector((2**INFO_SIZE) -1 downto 0) := x"deadbeef";
  
  signal counter : unsigned(INFO_SIZE+1 downto 0) := (others => '0');
  signal  info_stream_rev : std_logic_vector(info_stream'left downto info_stream'right);
  
begin

  gen: for iBit in info_stream'right to info_stream'left generate
    info_stream_rev(info_stream'left - iBit) <= info_stream(iBit);
  end generate;
    
-- debugging to test if the CPLD is up
  info: process (Zynq_info_clk) is
  begin  -- process info
    if Zynq_info_clk'event and Zynq_info_clk = '1' then  -- rising clock edge
      case counter(counter'left downto counter'left -1) is
        when "00"  =>
          -- info_size of alternating 0/1
          Zynq_info_out <= counter(counter'right);
        when "01"  =>
          -- info_size of '0'
          Zynq_info_out <= '0';
        when "10" =>
          -- info
          Zynq_info_out <= info_stream_rev(to_integer(counter(counter'left-2 downto 0)));
        when "11" =>
          --info_size of '1'
          Zynq_info_out <= '1';
        when others => null;
      end case;
      counter <= counter + 1;      
    end if;
  end process info;
end architecture behavioral;
