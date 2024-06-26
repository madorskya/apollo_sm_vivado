--This file was auto-generated.
--Modifications might be lost.
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.AXIRegWidthPkg.all;
use work.AXIRegPkg.all;
use work.types.all;
use work.SERV_Ctrl.all;



entity SERV_map is
  generic (
    ALLOCATED_MEMORY_RANGE : integer
    );
  port (
    clk_axi          : in  std_logic;
    reset_axi_n      : in  std_logic;
    slave_readMOSI   : in  AXIReadMOSI;
    slave_readMISO   : out AXIReadMISO  := DefaultAXIReadMISO;
    slave_writeMOSI  : in  AXIWriteMOSI;
    slave_writeMISO  : out AXIWriteMISO := DefaultAXIWriteMISO;
    Mon              : in  SERV_Mon_t;
    Ctrl             : out SERV_Ctrl_t
    );
end entity SERV_map;
architecture behavioral of SERV_map is
  signal localAddress       : std_logic_vector(AXI_ADDR_WIDTH-1 downto 0);
  signal localRdData        : slv_32_t;
  signal localRdData_latch  : slv_32_t;
  signal localWrData        : slv_32_t;
  signal localWrEn          : std_logic;
  signal localRdReq         : std_logic;
  signal localRdAck         : std_logic;


  signal reg_data :  slv32_array_t(integer range 0 to 82);
  constant Default_reg_data : slv32_array_t(integer range 0 to 82) := (others => x"00000000");
begin  -- architecture behavioral

  -------------------------------------------------------------------------------
  -- AXI 
  -------------------------------------------------------------------------------
  -------------------------------------------------------------------------------
  assert ((4*82) <= ALLOCATED_MEMORY_RANGE)
    report "SERV: Regmap addressing range " & integer'image(4*82) & " is outside of AXI mapped range " & integer'image(ALLOCATED_MEMORY_RANGE)
  severity ERROR;
  assert ((4*82) > ALLOCATED_MEMORY_RANGE)
    report "SERV: Regmap addressing range " & integer'image(4*82) & " is inside of AXI mapped range " & integer'image(ALLOCATED_MEMORY_RANGE)
  severity NOTE;

  AXIRegBridge : entity work.axiLiteReg
    port map (
      clk_axi     => clk_axi,
      reset_axi_n => reset_axi_n,
      readMOSI    => slave_readMOSI,
      readMISO    => slave_readMISO,
      writeMOSI   => slave_writeMOSI,
      writeMISO   => slave_writeMISO,
      address     => localAddress,
      rd_data     => localRdData_latch,
      wr_data     => localWrData,
      write_en    => localWrEn,
      read_req    => localRdReq,
      read_ack    => localRdAck);

  latch_reads: process (clk_axi) is
  begin  -- process latch_reads
    if clk_axi'event and clk_axi = '1' then  -- rising clock edge
      if localRdReq = '1' then
        localRdData_latch <= localRdData;        
      end if;
    end if;
  end process latch_reads;
  reads: process (localRdReq,localAddress,reg_data) is
  begin  -- process reads
    localRdAck  <= '0';
    localRdData <= x"00000000";
    if localRdReq = '1' then
      localRdAck  <= '1';
      case to_integer(unsigned(localAddress(6 downto 0))) is

        when 0 => --0x0
          localRdData( 0)            <=  reg_data( 0)( 0);                   --Enable Si5344 outputs
          localRdData( 1)            <=  reg_data( 0)( 1);                   --Power on Si5344
          localRdData( 2)            <=  reg_data( 0)( 2);                   --
          localRdData( 4)            <=  Mon.SI5344.INT;                     --Si5344 i2c interrupt
          localRdData( 5)            <=  Mon.SI5344.LOL;                     --Si5344 Loss of lock
          localRdData( 6)            <=  Mon.SI5344.LOS;                     --Si5344 Loss of signal
        when 4 => --0x4
          localRdData( 0)            <=  reg_data( 4)( 0);                   --TTC source select (0:TCDS,1:TTC_FAKE
          localRdData( 4)            <=  Mon.TCDS.REFCLK_LOCKED;             --TCDS refclk locked
        when 5 => --0x5
          localRdData( 0)            <=  reg_data( 5)( 0);                   --Enable Si5344 outputs
          localRdData( 1)            <=  reg_data( 5)( 1);                   --Power on Si5344
          localRdData( 4)            <=  Mon.TCDS.SI5344.INT;                --Si5344 i2c interrupt
          localRdData( 5)            <=  Mon.TCDS.SI5344.LOL;                --Si5344 Loss of lock
          localRdData( 6)            <=  Mon.TCDS.SI5344.LOS;                --Si5344 Loss of signal
        when 6 => --0x6
          localRdData( 0)            <=  Mon.CLOCKING.LHC_LOS_BP;            --Backplane LHC clk LOS
          localRdData( 1)            <=  Mon.CLOCKING.LHC_LOS_OSC;           --Local Si LHC clk LOS
          localRdData( 4)            <=  reg_data( 6)( 4);                   --LHC clk source select
          localRdData( 5)            <=  reg_data( 6)( 5);                   --Enable FPGA IBUFDS
          localRdData( 8)            <=  Mon.CLOCKING.HQ_LOS_BP;             --Backplane HQ clk LOS
          localRdData( 9)            <=  Mon.CLOCKING.HQ_LOS_OSC;            --Local Si HQ clk LOS
          localRdData(12)            <=  reg_data( 6)(12);                   --HQ clk source select
          localRdData(13)            <=  reg_data( 6)(13);                   --Enable FPGA IBUFDS
          localRdData(21)            <=  reg_data( 6)(21);                   --Enable FPGA IBUFDS
        when 7 => --0x7
          localRdData(31 downto  0)  <=  Mon.CLOCKING.LHC_CLK_FREQ;          --Measured Freq of clock
        when 8 => --0x8
          localRdData(31 downto  0)  <=  Mon.CLOCKING.HQ_CLK_FREQ;           --Measured Freq of clock
        when 9 => --0x9
          localRdData(31 downto  0)  <=  Mon.CLOCKING.TTC_CLK_FREQ;          --Measured Freq of clock
        when 10 => --0xa
          localRdData(31 downto  0)  <=  Mon.CLOCKING.AXI_CLK_FREQ;          --Measured Freq of clock
        when 11 => --0xb
          localRdData(31 downto  0)  <=  Mon.CLOCKING.TCDS_CLK_FREQ;         --Measured Freq of clock
        when 16 => --0x10
          localRdData( 0)            <=  reg_data(16)( 0);                   --reset FP LEDs
          localRdData( 1)            <=  reg_data(16)( 1);                   --override FP LED page 0
          localRdData( 4 downto  2)  <=  reg_data(16)( 4 downto  2);         --override FP LED page 0 pattern
          localRdData( 5)            <=  Mon.FP_LEDS.BUTTON;                 --FP button (not debounced)
          localRdData(11 downto  8)  <=  reg_data(16)(11 downto  8);         --page 0 speed
          localRdData(21 downto 16)  <=  reg_data(16)(21 downto 16);         --Page to display
          localRdData(22)            <=  reg_data(16)(22);                   --Force the display of a page (override button UI)
          localRdData(29 downto 24)  <=  reg_data(16)(29 downto 24);         --Page to display
          localRdData(31)            <=  Mon.FP_LEDS.FP_SHDWN_REQ;           --FP button shutdown request
        when 32 => --0x20
          localRdData(15 downto  0)  <=  Mon.SWITCH.STATUS;                  --Ethernet switch LEDs
        when 48 => --0x30
          localRdData( 0)            <=  reg_data(48)( 0);                   --Enable the JTAG lines to the CPLD
        when 49 => --0x31
          localRdData( 0)            <=  Mon.CPLD.FIRMWARE.DATA_VALID;       --Data from CPLD is valid
          localRdData(31 downto 24)  <=  reg_data(49)(31 downto 24);         --Divide axi_clk by this for CPLD interface
        when 50 => --0x32
          localRdData(31 downto  0)  <=  Mon.CPLD.FIRMWARE.DATA;             --Data from CPLD
        when 51 => --0x33
          localRdData(31 downto  0)  <=  Mon.CPLD.FIRMWARE.RAW_DATA_0;       --Raw from CPLD
        when 52 => --0x34
          localRdData(31 downto  0)  <=  Mon.CPLD.FIRMWARE.RAW_DATA_1;       --Raw from CPLD
        when 53 => --0x35
          localRdData(31 downto  0)  <=  Mon.CPLD.FIRMWARE.RAW_DATA_2;       --Raw from CPLD
        when 54 => --0x36
          localRdData(31 downto  0)  <=  Mon.CPLD.FIRMWARE.RAW_DATA_3;       --Raw from CPLD
        when 55 => --0x37
          localRdData(31 downto  0)  <=  Mon.CPLD.FIRMWARE.LIVE_DATA_0;      --LIVE from CPLD
        when 56 => --0x38
          localRdData(31 downto  0)  <=  Mon.CPLD.FIRMWARE.LIVE_DATA_1;      --LIVE from CPLD
        when 57 => --0x39
          localRdData(31 downto  0)  <=  Mon.CPLD.FIRMWARE.LIVE_DATA_2;      --LIVE from CPLD
        when 58 => --0x3a
          localRdData(31 downto  0)  <=  Mon.CPLD.FIRMWARE.LIVE_DATA_3;      --LIVE from CPLD
        when 80 => --0x50
          localRdData( 0)            <=  reg_data(80)( 0);                   --
        when 81 => --0x51
          localRdData(31 downto  0)  <=  Mon.MISC.ETH1_CLK_FREQ;             --Measured Freq of clock
        when 82 => --0x52
          localRdData( 0)            <=  Mon.MISC.ZYNQ_BOOTED;               --


        when others =>
          localRdData <= x"00000000";
      end case;
    end if;
  end process reads;




  -- Register mapping to ctrl structures
  Ctrl.SI5344.OE                 <=  reg_data( 0)( 0);               
  Ctrl.SI5344.EN                 <=  reg_data( 0)( 1);               
  Ctrl.SI5344.FPGA_PLL_RESET     <=  reg_data( 0)( 2);               
  Ctrl.TCDS.TTC_SOURCE           <=  reg_data( 4)( 0);               
  Ctrl.TCDS.SI5344.OE            <=  reg_data( 5)( 0);               
  Ctrl.TCDS.SI5344.EN            <=  reg_data( 5)( 1);               
  Ctrl.CLOCKING.LHC_SEL          <=  reg_data( 6)( 4);               
  Ctrl.CLOCKING.LHC_CLK_IBUF_EN  <=  reg_data( 6)( 5);               
  Ctrl.CLOCKING.HQ_SEL           <=  reg_data( 6)(12);               
  Ctrl.CLOCKING.HQ_CLK_IBUF_EN   <=  reg_data( 6)(13);               
  Ctrl.CLOCKING.TTC_CLK_IBUF_EN  <=  reg_data( 6)(21);               
  Ctrl.FP_LEDS.RESET             <=  reg_data(16)( 0);               
  Ctrl.FP_LEDS.PAGE0_FORCE       <=  reg_data(16)( 1);               
  Ctrl.FP_LEDS.PAGE0_MODE        <=  reg_data(16)( 4 downto  2);     
  Ctrl.FP_LEDS.PAGE0_SPEED       <=  reg_data(16)(11 downto  8);     
  Ctrl.FP_LEDS.FORCED_PAGE       <=  reg_data(16)(21 downto 16);     
  Ctrl.FP_LEDS.FORCE_PAGE        <=  reg_data(16)(22);               
  Ctrl.FP_LEDS.PAGE              <=  reg_data(16)(29 downto 24);     
  Ctrl.CPLD.ENABLE_JTAG          <=  reg_data(48)( 0);               
  Ctrl.CPLD.FIRMWARE.CLK_DIV     <=  reg_data(49)(31 downto 24);     
  Ctrl.MISC.ETH1_RESET_N         <=  reg_data(80)( 0);               


  reg_writes: process (clk_axi, reset_axi_n) is
  begin  -- process reg_writes
    if reset_axi_n = '0' then                 -- asynchronous reset (active low)
      reg_data( 0)( 0)  <= DEFAULT_SERV_CTRL_t.SI5344.OE;
      reg_data( 0)( 1)  <= DEFAULT_SERV_CTRL_t.SI5344.EN;
      reg_data( 0)( 2)  <= DEFAULT_SERV_CTRL_t.SI5344.FPGA_PLL_RESET;
      reg_data( 4)( 0)  <= DEFAULT_SERV_CTRL_t.TCDS.TTC_SOURCE;
      reg_data( 5)( 0)  <= DEFAULT_SERV_CTRL_t.TCDS.SI5344.OE;
      reg_data( 5)( 1)  <= DEFAULT_SERV_CTRL_t.TCDS.SI5344.EN;
      reg_data( 6)( 4)  <= DEFAULT_SERV_CTRL_t.CLOCKING.LHC_SEL;
      reg_data( 6)( 5)  <= DEFAULT_SERV_CTRL_t.CLOCKING.LHC_CLK_IBUF_EN;
      reg_data( 6)(12)  <= DEFAULT_SERV_CTRL_t.CLOCKING.HQ_SEL;
      reg_data( 6)(13)  <= DEFAULT_SERV_CTRL_t.CLOCKING.HQ_CLK_IBUF_EN;
      reg_data( 6)(21)  <= DEFAULT_SERV_CTRL_t.CLOCKING.TTC_CLK_IBUF_EN;
      reg_data(16)( 0)  <= DEFAULT_SERV_CTRL_t.FP_LEDS.RESET;
      reg_data(16)( 1)  <= DEFAULT_SERV_CTRL_t.FP_LEDS.PAGE0_FORCE;
      reg_data(16)( 4 downto  2)  <= DEFAULT_SERV_CTRL_t.FP_LEDS.PAGE0_MODE;
      reg_data(16)(11 downto  8)  <= DEFAULT_SERV_CTRL_t.FP_LEDS.PAGE0_SPEED;
      reg_data(16)(21 downto 16)  <= DEFAULT_SERV_CTRL_t.FP_LEDS.FORCED_PAGE;
      reg_data(16)(22)  <= DEFAULT_SERV_CTRL_t.FP_LEDS.FORCE_PAGE;
      reg_data(16)(29 downto 24)  <= DEFAULT_SERV_CTRL_t.FP_LEDS.PAGE;
      reg_data(48)( 0)  <= DEFAULT_SERV_CTRL_t.CPLD.ENABLE_JTAG;
      reg_data(49)(31 downto 24)  <= DEFAULT_SERV_CTRL_t.CPLD.FIRMWARE.CLK_DIV;
      reg_data(80)( 0)  <= DEFAULT_SERV_CTRL_t.MISC.ETH1_RESET_N;

    elsif clk_axi'event and clk_axi = '1' then  -- rising clock edge
      

      
      if localWrEn = '1' then
        case to_integer(unsigned(localAddress(6 downto 0))) is
        when 0 => --0x0
          reg_data( 0)( 0)            <=  localWrData( 0);                --Enable Si5344 outputs
          reg_data( 0)( 1)            <=  localWrData( 1);                --Power on Si5344
          reg_data( 0)( 2)            <=  localWrData( 2);                --
        when 4 => --0x4
          reg_data( 4)( 0)            <=  localWrData( 0);                --TTC source select (0:TCDS,1:TTC_FAKE
        when 5 => --0x5
          reg_data( 5)( 0)            <=  localWrData( 0);                --Enable Si5344 outputs
          reg_data( 5)( 1)            <=  localWrData( 1);                --Power on Si5344
        when 6 => --0x6
          reg_data( 6)( 4)            <=  localWrData( 4);                --LHC clk source select
          reg_data( 6)( 5)            <=  localWrData( 5);                --Enable FPGA IBUFDS
          reg_data( 6)(12)            <=  localWrData(12);                --HQ clk source select
          reg_data( 6)(13)            <=  localWrData(13);                --Enable FPGA IBUFDS
          reg_data( 6)(21)            <=  localWrData(21);                --Enable FPGA IBUFDS
        when 16 => --0x10
          reg_data(16)( 0)            <=  localWrData( 0);                --reset FP LEDs
          reg_data(16)( 1)            <=  localWrData( 1);                --override FP LED page 0
          reg_data(16)( 4 downto  2)  <=  localWrData( 4 downto  2);      --override FP LED page 0 pattern
          reg_data(16)(11 downto  8)  <=  localWrData(11 downto  8);      --page 0 speed
          reg_data(16)(21 downto 16)  <=  localWrData(21 downto 16);      --Page to display
          reg_data(16)(22)            <=  localWrData(22);                --Force the display of a page (override button UI)
          reg_data(16)(29 downto 24)  <=  localWrData(29 downto 24);      --Page to display
        when 48 => --0x30
          reg_data(48)( 0)            <=  localWrData( 0);                --Enable the JTAG lines to the CPLD
        when 49 => --0x31
          reg_data(49)(31 downto 24)  <=  localWrData(31 downto 24);      --Divide axi_clk by this for CPLD interface
        when 80 => --0x50
          reg_data(80)( 0)            <=  localWrData( 0);                --

          when others => null;
        end case;
      end if;
    end if;
  end process reg_writes;


end architecture behavioral;