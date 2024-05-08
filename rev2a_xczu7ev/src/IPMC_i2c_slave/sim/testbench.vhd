library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_misc.all;

use work.AXIRegWidthPkg.all;
use work.AXIRegPkg.all;

use work.types.all;

entity testbench_wrapper is
  
  generic (
    CLK_FREQ               : integer;
    ALLOCATED_MEMORY_RANGE : integer);

  port (
    clk_axi         : in  std_logic;
    reset_axi_n     : in  std_logic;
    slave_i2c_araddr  : in  STD_LOGIC_VECTOR ( 31 downto 0 );
    slave_i2c_arprot  : in  STD_LOGIC_VECTOR ( 2 downto 0 );
    slave_i2c_arready : out STD_LOGIC;
    slave_i2c_arvalid : in  STD_LOGIC;
    slave_i2c_awaddr  : in  STD_LOGIC_VECTOR ( 31 downto 0 );
    slave_i2c_awprot  : in  STD_LOGIC_VECTOR ( 2 downto 0 );
    slave_i2c_awready : out STD_LOGIC;
    slave_i2c_awvalid : in  STD_LOGIC;
    slave_i2c_bready  : in  STD_LOGIC;
    slave_i2c_bresp   : out STD_LOGIC_VECTOR ( 1 downto 0 );
    slave_i2c_bvalid  : out STD_LOGIC;
    slave_i2c_rdata   : out STD_LOGIC_VECTOR ( 31 downto 0 );
    slave_i2c_rready  : in  STD_LOGIC;
    slave_i2c_rresp   : out STD_LOGIC_VECTOR ( 1 downto 0 );
    slave_i2c_rvalid  : out STD_LOGIC;
    slave_i2c_wdata   : in  STD_LOGIC_VECTOR ( 31 downto 0 );
    slave_i2c_wready  : out STD_LOGIC;
    slave_i2c_wstrb   : in  STD_LOGIC_VECTOR ( 3 downto 0 );
    slave_i2c_wvalid  : in  STD_LOGIC;

    linux_booted    : out std_logic;
    
    SDA_o           : out std_logic;
    SDA_t           : out std_logic;
    SDA_i           : in  std_logic;
    SCL             : in  std_logic
    );
end entity testbench_wrapper;

architecture behavioral of testbench_wrapper is

  signal readMOSI  : AXIReadMOSI  := DefaultAXIReadMOSI;
  signal readMISO  : AXIReadMISO  := DefaultAXIReadMISO;
  signal writeMOSI : AXIWriteMOSI := DefaultAXIWriteMOSI;
  signal writeMISO : AXIWriteMISO := DefaultAXIWriteMISO;

  
begin  -- architecture behavioral

      readMOSI.address             <= slave_i2c_araddr;
--      readMOSI.address_id          <= slave_i2c_arid;
      readMOSI.protection_type     <= slave_i2c_arprot;
      readMOSI.address_valid       <= slave_i2c_arvalid;
--      readMOSI.burst_length        <= slave_i2c_arlen;
--      readMOSI.burst_size          <= slave_i2c_arsize;
--      readMOSI.burst_type          <= slave_i2c_arburst;
--      readMOSI.lock_type           <= slave_i2c_arlock;
--      readMOSI.cache_type          <= slave_i2c_arcache;
--      readMOSI.qos                 <= slave_i2c_arqos;
--      readMOSI.region              <= slave_i2c_arregion;
--      readMOSI.address_user        <= slave_i2c_aruser;
      readMOSI.ready_for_data      <= slave_i2c_rready;


   slave_i2c_arready <=       readMISO.ready_for_address;
--   slave_i2c_rid     <=       readMISO.data_id;
   slave_i2c_rdata   <=       readMISO.data;
   slave_i2c_rvalid  <=       readMISO.data_valid;
   slave_i2c_rresp   <=       readMISO.response;
--   slave_i2c_rlast   <=       readMISO.last;
--   slave_i2c_ruser   <=       readMISO.data_user;

      
      writeMOSI.address            <= slave_i2c_awaddr;
--      writeMOSI.address_id         <= slave_i2c_awid;
      writeMOSI.protection_type    <= slave_i2c_awprot;
      writeMOSI.address_valid      <= slave_i2c_awvalid;
--      writeMOSI.burst_length       <= slave_i2c_awlen;
--      writeMOSI.burst_size         <= slave_i2c_awsize;
--      writeMOSI.burst_type         <= slave_i2c_awburst;
--      writeMOSI.lock_type          <= slave_i2c_awlock;
--      writeMOSI.cache_type         <= slave_i2c_awcache;
--      writeMOSI.qos                <= slave_i2c_awqos;
--      writeMOSI.region             <= slave_i2c_awregion;
--      writeMOSI.address_user       <= slave_i2c_awuser;
--      writeMOSI.write_id           <= slave_i2c_wid;
      writeMOSI.data               <= slave_i2c_wdata;
      writeMOSI.data_valid         <= slave_i2c_wvalid;
      writeMOSI.data_write_strobe  <= slave_i2c_wstrb;
--      writeMOSI.last               <= slave_i2c_wlast;
--      writeMOSI.data_user          <= slave_i2c_wuser;
      writeMOSI.ready_for_response <= slave_i2c_bready;



      slave_i2c_awready <= writeMISO.ready_for_address;
      slave_i2c_wready  <= writeMISO.ready_for_data;
--      slave_i2c_bid     <= writeMISO.response_id;
      slave_i2c_bvalid  <= writeMISO.response_valid;
      slave_i2c_bresp   <= writeMISO.response;
--      slave_i2c_buser   <= writeMISO.response_user;

  
  IPMC_i2c_slave_1: entity work.IPMC_i2c_slave
    generic map (
      CLK_FREQ               => CLK_FREQ,
      ALLOCATED_MEMORY_RANGE => ALLOCATED_MEMORY_RANGE)
    port map (
      clk_axi      => clk_axi,
      reset_axi_n  => reset_axi_n,
      readMOSI     => readMOSI, 
      readMISO     => readMISO,
      writeMOSI    => writeMOSI,
      writeMISO    => writeMISO,
      linux_booted => linux_booted,
      SDA_o        => SDA_o,
      SDA_t        => SDA_t,
      SDA_i        => SDA_i,
      SCL          => SCL);

end architecture behavioral;
