library ieee;
use ieee.std_logic_1164.all;


entity CPLD_tb is
  port (
    clk             : in  std_logic;
    reset           : in  std_logic;
    clk_div         : in  std_logic_vector(7 downto 0);    
    CPLD_info_data  : out std_logic_vector(31 downto 0);
    raw_data_latch  : out std_logic_vector(127 downto 0);
    raw_data        : out std_logic_vector(127 downto 0);
    CPLD_info_valid : out std_logic);  
end entity CPLD_tb;

architecture behavioral of CPLD_tb is
  signal CPLD_clk_out    : std_logic;
  signal CPLD_info_in    : std_logic;

begin
  CPLD_info_1: entity work.CPLD_info
    port map (
      clk             => clk,
      reset           => reset,
      clk_div         => clk_div,
      CPLD_clk_out    => CPLD_clk_out,
      CPLD_info_in    => CPLD_info_in,
      CPLD_info_data  => CPLD_info_data,
      raw_data_latch  => raw_data_latch,
      raw_data        => raw_data,
      CPLD_info_valid => CPLD_info_valid);


  CPLD_Top_1: entity work.CPLD_Top
    port map (
      Zynq_info_clk => CPLD_clk_out,
      Zynq_info_out => CPLD_info_in);
  
end architecture behavioral;
  
