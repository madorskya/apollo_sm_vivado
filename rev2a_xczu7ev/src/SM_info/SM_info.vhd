library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

use work.AXIRegPkg.all;

use work.types.all;
--use work.FW_TIMESTAMP.all;
--use work.FW_VERSION.all;
--use work.FW_FPGA.all;
use work.SM_INFO_Ctrl.all;


Library UNISIM;
use UNISIM.vcomponents.all;


entity SM_info is
  generic (
    ALLOCATED_MEMORY_RANGE : integer ;
    FPGA_GENERATION : string := "ULTRASCALE";
    GLOBAL_DATE         : std_logic_vector(31 downto 0);
    GLOBAL_TIME         : std_logic_vector(31 downto 0);
    GLOBAL_VER          : std_logic_vector(31 downto 0);
    GLOBAL_SHA          : std_logic_vector(31 downto 0);
    TOP_VER             : std_logic_vector(31 downto 0);
    TOP_SHA             : std_logic_vector(31 downto 0);
    CON_VER             : std_logic_vector(31 downto 0);
    CON_SHA             : std_logic_vector(31 downto 0);
    HOG_VER             : std_logic_vector(31 downto 0);
    HOG_SHA             : std_logic_vector(31 downto 0)
    );            
  port (
    clk_axi         : in  std_logic;
    reset_axi_n     : in  std_logic;
    readMOSI        : in  AXIReadMOSI;
    readMISO        : out AXIReadMISO := DefaultAXIReadMISO;
    writeMOSI       : in  AXIWriteMOSI;
    writeMISO       : out AXIWriteMISO := DefaultAXIWriteMISO
    );
end entity SM_info;

architecture behavioral of SM_info is
  signal Mon              :  SM_INFO_Mon_t;

  signal DNA_value        : std_logic_vector(95 downto 0);
  signal DNA_valid        : std_logic;
  
begin  -- architecture behavioral

  -------------------------------------------------------------------------------
  -- AXI 
  -------------------------------------------------------------------------------
  -------------------------------------------------------------------------------
  SM_INFO_interface_1: entity work.SM_INFO_map
    generic map(
      ALLOCATED_MEMORY_RANGE => ALLOCATED_MEMORY_RANGE
      )              
    port map (
      clk_axi         => clk_axi,
      reset_axi_n     => reset_axi_n,
      slave_readMOSI  => readMOSI,
      slave_readMISO  => readMISO,
      slave_writeMOSI => writeMOSI,
      slave_writeMISO => writeMISO,
      Mon             => Mon);

  Mon.GLOBAL_DATE		<= GLOBAL_DATE;
  Mon.GLOBAL_TIME		<= GLOBAL_TIME;
  Mon.GLOBAL_VER		<= GLOBAL_VER;
  Mon.GLOBAL_SHA		<= GLOBAL_SHA;
  Mon.TOP_VER			<= TOP_VER;
  Mon.TOP_SHA			<= TOP_SHA;
  Mon.CON_VER			<= CON_VER;
  Mon.CON_SHA			<= CON_SHA;
  Mon.HOG_VER			<= HOG_VER;
  Mon.HOG_SHA			<= HOG_SHA;
  
  Mon.DNA.valid  	<= DNA_valid;
  Mon.DNA.WORD_0 	<= DNA_value(31 downto  0);
  Mon.DNA.WORD_1 	<= DNA_value(63 downto 32);
  Mon.DNA.WORD_2 	<= DNA_value(95 downto 64);


  XILINX_DNA_1: entity work.XILINX_DNA
    generic map (
      ALLOCATED_MEMORY_RANGE => ALLOCATED_MEMORY_RANGE,
      FPGA_GENERATION        => FPGA_GENERATION)
    port map (
      clk     => clk_axi,
      reset => not reset_axi_n,
      DNA         => DNA_value,
      DNA_valid   => DNA_valid);
  end architecture behavioral;
