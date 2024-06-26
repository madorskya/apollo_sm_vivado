--This file was auto-generated.
--Modifications might be lost.
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_misc.all;
use ieee.numeric_std.all;
use work.AXIRegWidthPkg.all;
use work.AXIRegPkg.all;
use work.types.all;
use work.BRAMPortPkg.all;
use work.CM_Ctrl.all;



entity CM_map is
  generic (
    READ_TIMEOUT     : integer := 2048;
    ALLOCATED_MEMORY_RANGE : integer
    );
  port (
    clk_axi          : in  std_logic;
    reset_axi_n      : in  std_logic;
    slave_readMOSI   : in  AXIReadMOSI;
    slave_readMISO   : out AXIReadMISO  := DefaultAXIReadMISO;
    slave_writeMOSI  : in  AXIWriteMOSI;
    slave_writeMISO  : out AXIWriteMISO := DefaultAXIWriteMISO;
    
    Mon              : in  CM_Mon_t;
    Ctrl             : out CM_Ctrl_t
        
    );
end entity CM_map;
architecture behavioral of CM_map is
  signal localAddress       : std_logic_vector(AXI_ADDR_WIDTH-1 downto 0);
  signal localRdData        : slv_32_t;
  signal localRdData_latch  : slv_32_t;
  signal localWrData        : slv_32_t;
  signal localWrEn          : std_logic;
  signal localRdReq         : std_logic;
  signal localRdAck         : std_logic;
  signal regRdAck           : std_logic;

  
  constant BRAM_COUNT       : integer := 6;
--  signal latchBRAM          : std_logic_vector(BRAM_COUNT-1 downto 0);
--  signal delayLatchBRAM          : std_logic_vector(BRAM_COUNT-1 downto 0);
  constant BRAM_range       : int_array_t(0 to BRAM_COUNT-1) := (0 => 10
,			1 => 10
,			2 => 10
,			3 => 10
,			4 => 11
,			5 => 11);
  constant BRAM_addr        : slv32_array_t(0 to BRAM_COUNT-1) := (0 => x"00000000"
,			1 => x"00000800"
,			2 => x"00002000"
,			3 => x"00002800"
,			4 => x"00001800"
,			5 => x"00003800");
  signal BRAM_MOSI          : BRAMPortMOSI_array_t(0 to BRAM_COUNT-1);
  signal BRAM_MISO          : BRAMPortMISO_array_t(0 to BRAM_COUNT-1);
  
  
  signal reg_data :  slv32_array_t(integer range 0 to 18449);
  constant Default_reg_data : slv32_array_t(integer range 0 to 18449) := (others => x"00000000");
begin  -- architecture behavioral

  -------------------------------------------------------------------------------
  -- AXI 
  -------------------------------------------------------------------------------
  -------------------------------------------------------------------------------
  assert ((4*18449) <= ALLOCATED_MEMORY_RANGE)
    report "CM: Regmap addressing range " & integer'image(4*18449) & " is outside of AXI mapped range " & integer'image(ALLOCATED_MEMORY_RANGE)
  severity ERROR;
  assert ((4*18449) > ALLOCATED_MEMORY_RANGE)
    report "CM: Regmap addressing range " & integer'image(4*18449) & " is inside of AXI mapped range " & integer'image(ALLOCATED_MEMORY_RANGE)
  severity NOTE;

  AXIRegBridge : entity work.axiLiteRegBlocking
    generic map (
      READ_TIMEOUT => READ_TIMEOUT
      )
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

  -------------------------------------------------------------------------------
  -- Record read decoding
  -------------------------------------------------------------------------------
  -------------------------------------------------------------------------------

  latch_reads: process (clk_axi,reset_axi_n) is
  begin  -- process latch_reads
    if reset_axi_n = '0' then
      localRdAck <= '0';
    elsif clk_axi'event and clk_axi = '1' then  -- rising clock edge
      localRdAck <= '0';
      
      if regRdAck = '1' then
        localRdData_latch <= localRdData;
        localRdAck <= '1';
      elsif BRAM_MISO(0).rd_data_valid = '1' then
        localRdAck <= '1';
        localRdData_latch <= BRAM_MISO(0).rd_data;
elsif BRAM_MISO(1).rd_data_valid = '1' then
        localRdAck <= '1';
        localRdData_latch <= BRAM_MISO(1).rd_data;
elsif BRAM_MISO(2).rd_data_valid = '1' then
        localRdAck <= '1';
        localRdData_latch <= BRAM_MISO(2).rd_data;
elsif BRAM_MISO(3).rd_data_valid = '1' then
        localRdAck <= '1';
        localRdData_latch <= BRAM_MISO(3).rd_data;
elsif BRAM_MISO(4).rd_data_valid = '1' then
        localRdAck <= '1';
        localRdData_latch <= BRAM_MISO(4).rd_data;
elsif BRAM_MISO(5).rd_data_valid = '1' then
        localRdAck <= '1';
        localRdData_latch <= BRAM_MISO(5).rd_data;

      end if;
    end if;
  end process latch_reads;

  
  reads: process (clk_axi,reset_axi_n) is
  begin  -- process latch_reads
    if reset_axi_n = '0' then
      regRdAck <= '0';
    elsif clk_axi'event and clk_axi = '1' then  -- rising clock edge
      regRdAck  <= '0';
      localRdData <= x"00000000";
      if localRdReq = '1' then
        regRdAck  <= '1';
        case to_integer(unsigned(localAddress(14 downto 0))) is
          
        when 1024 => --0x400
          localRdData( 0)            <=  Mon.CM(1).C2C(1).STATUS.CONFIG_ERROR;                    --C2C config error
          localRdData( 1)            <=  Mon.CM(1).C2C(1).STATUS.LINK_ERROR;                      --C2C link error
          localRdData( 2)            <=  Mon.CM(1).C2C(1).STATUS.LINK_GOOD;                       --C2C link FSM in SYNC
          localRdData( 3)            <=  Mon.CM(1).C2C(1).STATUS.MB_ERROR;                        --C2C multi-bit error
          localRdData( 4)            <=  Mon.CM(1).C2C(1).STATUS.DO_CC;                           --Aurora do CC
          localRdData( 5)            <=  reg_data(1024)( 5);                                      --C2C initialize
          localRdData( 8)            <=  Mon.CM(1).C2C(1).STATUS.PHY_RESET;                       --Aurora phy in reset
          localRdData( 9)            <=  Mon.CM(1).C2C(1).STATUS.PHY_GT_PLL_LOCK;                 --Aurora phy GT PLL locked
          localRdData(10)            <=  Mon.CM(1).C2C(1).STATUS.PHY_MMCM_LOL;                    --Aurora phy mmcm LOL
          localRdData(13 downto 12)  <=  Mon.CM(1).C2C(1).STATUS.PHY_LANE_UP;                     --Aurora phy lanes up
          localRdData(16)            <=  Mon.CM(1).C2C(1).STATUS.PHY_HARD_ERR;                    --Aurora phy hard error
          localRdData(17)            <=  Mon.CM(1).C2C(1).STATUS.PHY_SOFT_ERR;                    --Aurora phy soft error
          localRdData(18)            <=  Mon.CM(1).C2C(1).STATUS.PB_RESET;                        --Reset of the C2C PHY
          localRdData(31)            <=  Mon.CM(1).C2C(1).STATUS.LINK_IN_FW;                      --FW includes this link
        when 1028 => --0x404
          localRdData(15 downto  0)  <=  Mon.CM(1).C2C(1).DEBUG.DMONITOR;                         --DEBUG d monitor
          localRdData(16)            <=  Mon.CM(1).C2C(1).DEBUG.QPLL_LOCK;                        --DEBUG cplllock
          localRdData(20)            <=  Mon.CM(1).C2C(1).DEBUG.CPLL_LOCK;                        --DEBUG cplllock
          localRdData(21)            <=  Mon.CM(1).C2C(1).DEBUG.EYESCAN_DATA_ERROR;               --DEBUG eyescan data error
          localRdData(23)            <=  reg_data(1028)(23);                                      --DEBUG eyescan trigger
        when 1029 => --0x405
          localRdData(15 downto  0)  <=  reg_data(1029)(15 downto  0);                            --bit 2 is DRP uber reset
        when 1030 => --0x406
          localRdData( 2 downto  0)  <=  Mon.CM(1).C2C(1).DEBUG.RX.BUF_STATUS;                    --DEBUG rx buf status
          localRdData( 5)            <=  Mon.CM(1).C2C(1).DEBUG.RX.PMA_RESET_DONE;                --DEBUG rx reset done
          localRdData(10)            <=  Mon.CM(1).C2C(1).DEBUG.RX.PRBS_ERR;                      --DEBUG rx PRBS error
          localRdData(11)            <=  Mon.CM(1).C2C(1).DEBUG.RX.RESET_DONE;                    --DEBUG rx reset done
          localRdData(13)            <=  reg_data(1030)(13);                                      --DEBUG rx CDR hold
          localRdData(18)            <=  reg_data(1030)(18);                                      --DEBUG rx LPM ENABLE
          localRdData(25)            <=  reg_data(1030)(25);                                      --DEBUG rx PRBS counter reset
          localRdData(29 downto 26)  <=  reg_data(1030)(29 downto 26);                            --DEBUG rx PRBS select
        when 1031 => --0x407
          localRdData( 2 downto  0)  <=  reg_data(1031)( 2 downto  0);                            --DEBUG rx rate
        when 1032 => --0x408
          localRdData( 1 downto  0)  <=  Mon.CM(1).C2C(1).DEBUG.TX.BUF_STATUS;                    --DEBUG tx buf status
          localRdData( 2)            <=  Mon.CM(1).C2C(1).DEBUG.TX.RESET_DONE;                    --DEBUG tx reset done
          localRdData( 7)            <=  reg_data(1032)( 7);                                      --DEBUG tx inhibit
          localRdData(17)            <=  reg_data(1032)(17);                                      --DEBUG tx polarity
          localRdData(22 downto 18)  <=  reg_data(1032)(22 downto 18);                            --DEBUG post cursor
          localRdData(23)            <=  reg_data(1032)(23);                                      --DEBUG force PRBS error
          localRdData(31 downto 27)  <=  reg_data(1032)(31 downto 27);                            --DEBUG pre cursor
        when 1033 => --0x409
          localRdData( 3 downto  0)  <=  reg_data(1033)( 3 downto  0);                            --DEBUG PRBS select
          localRdData( 8 downto  4)  <=  reg_data(1033)( 8 downto  4);                            --DEBUG tx diff control
        when 1040 => --0x410
          localRdData(31 downto  0)  <=  Mon.CM(1).C2C(1).COUNTERS.ERRORS_ALL_TIME;               --Counter for all errors while locked
        when 1041 => --0x411
          localRdData(31 downto  0)  <=  Mon.CM(1).C2C(1).COUNTERS.ERRORS_SINCE_LOCKED;           --Counter for errors since locked
        when 1045 => --0x415
          localRdData(31 downto  0)  <=  Mon.CM(1).C2C(1).COUNTERS.PHY_HARD_ERROR_COUNT;          --Counter for PHY_HARD_ERROR
        when 1046 => --0x416
          localRdData(31 downto  0)  <=  Mon.CM(1).C2C(1).COUNTERS.PHY_SOFT_ERROR_COUNT;          --Counter for PHY_SOFT_ERROR
        when 1047 => --0x417
          localRdData( 2 downto  0)  <=  Mon.CM(1).C2C(1).COUNTERS.PHYLANE_STATE;                 --Current state of phy_lane_control module
        when 1049 => --0x419
          localRdData(31 downto  0)  <=  Mon.CM(1).C2C(1).COUNTERS.ERROR_WAITS_SINCE_LOCKED;      --Count for phylane in error state
        when 1050 => --0x41a
          localRdData(31 downto  0)  <=  Mon.CM(1).C2C(1).COUNTERS.USER_CLK_FREQ;                 --Frequency of the user C2C clk
        when 1051 => --0x41b
          localRdData(31 downto  0)  <=  Mon.CM(1).C2C(1).COUNTERS.XCVR_RESETS;                   --Count for phylane in error state
        when 1052 => --0x41c
          localRdData(31 downto  0)  <=  Mon.CM(1).C2C(1).COUNTERS.WAITING_TIMEOUTS;              --Count for phylane in error state
        when 1053 => --0x41d
          localRdData(31 downto  0)  <=  Mon.CM(1).C2C(1).COUNTERS.SOFT_ERROR_RATE;               --single bit error rate
        when 1054 => --0x41e
          localRdData(31 downto  0)  <=  Mon.CM(1).C2C(1).COUNTERS.HARD_ERROR_RATE;               --multi bit error rate
        when 1056 => --0x420
          localRdData(31 downto  0)  <=  Mon.CM(1).C2C(1).BRIDGE_INFO.AXI.ADDR_LSB;               --
        when 1057 => --0x421
          localRdData(31 downto  0)  <=  Mon.CM(1).C2C(1).BRIDGE_INFO.AXI.ADDR_MSB;               --
        when 1058 => --0x422
          localRdData(31 downto  0)  <=  Mon.CM(1).C2C(1).BRIDGE_INFO.AXI.SIZE;                   --
        when 1059 => --0x423
          localRdData( 0)            <=  Mon.CM(1).C2C(1).BRIDGE_INFO.AXI.VALID;                  --
        when 1060 => --0x424
          localRdData(31 downto  0)  <=  Mon.CM(1).C2C(1).BRIDGE_INFO.AXILITE.ADDR_LSB;           --
        when 1061 => --0x425
          localRdData(31 downto  0)  <=  Mon.CM(1).C2C(1).BRIDGE_INFO.AXILITE.ADDR_MSB;           --
        when 1062 => --0x426
          localRdData(31 downto  0)  <=  Mon.CM(1).C2C(1).BRIDGE_INFO.AXILITE.SIZE;               --
        when 1063 => --0x427
          localRdData( 0)            <=  Mon.CM(1).C2C(1).BRIDGE_INFO.AXILITE.VALID;              --
        when 1072 => --0x430
          localRdData(31 downto  0)  <=  Mon.CM(1).C2C(1).USER_FREQ;                              --Measured Freq of clock
        when 1073 => --0x431
          localRdData(23 downto  0)  <=  reg_data(1073)(23 downto  0);                            --Time spent waiting for phylane to stabilize
          localRdData(24)            <=  reg_data(1073)(24);                                      --phy_lane_control is enabled
        when 1074 => --0x432
          localRdData(19 downto  0)  <=  reg_data(1074)(19 downto  0);                            --Contious phy_lane_up signals required to lock phylane control
        when 1075 => --0x433
          localRdData( 7 downto  0)  <=  reg_data(1075)( 7 downto  0);                            --Number of failures before we reset the pma
        when 1076 => --0x434
          localRdData(31 downto  0)  <=  reg_data(1076)(31 downto  0);                            --Max soft error rate
        when 1077 => --0x435
          localRdData(31 downto  0)  <=  reg_data(1077)(31 downto  0);                            --Max hard error rate
        when 3072 => --0xc00
          localRdData( 0)            <=  Mon.CM(1).C2C(2).STATUS.CONFIG_ERROR;                    --C2C config error
          localRdData( 1)            <=  Mon.CM(1).C2C(2).STATUS.LINK_ERROR;                      --C2C link error
          localRdData( 2)            <=  Mon.CM(1).C2C(2).STATUS.LINK_GOOD;                       --C2C link FSM in SYNC
          localRdData( 3)            <=  Mon.CM(1).C2C(2).STATUS.MB_ERROR;                        --C2C multi-bit error
          localRdData( 4)            <=  Mon.CM(1).C2C(2).STATUS.DO_CC;                           --Aurora do CC
          localRdData( 5)            <=  reg_data(3072)( 5);                                      --C2C initialize
          localRdData( 8)            <=  Mon.CM(1).C2C(2).STATUS.PHY_RESET;                       --Aurora phy in reset
          localRdData( 9)            <=  Mon.CM(1).C2C(2).STATUS.PHY_GT_PLL_LOCK;                 --Aurora phy GT PLL locked
          localRdData(10)            <=  Mon.CM(1).C2C(2).STATUS.PHY_MMCM_LOL;                    --Aurora phy mmcm LOL
          localRdData(13 downto 12)  <=  Mon.CM(1).C2C(2).STATUS.PHY_LANE_UP;                     --Aurora phy lanes up
          localRdData(16)            <=  Mon.CM(1).C2C(2).STATUS.PHY_HARD_ERR;                    --Aurora phy hard error
          localRdData(17)            <=  Mon.CM(1).C2C(2).STATUS.PHY_SOFT_ERR;                    --Aurora phy soft error
          localRdData(18)            <=  Mon.CM(1).C2C(2).STATUS.PB_RESET;                        --Reset of the C2C PHY
          localRdData(31)            <=  Mon.CM(1).C2C(2).STATUS.LINK_IN_FW;                      --FW includes this link
        when 3076 => --0xc04
          localRdData(15 downto  0)  <=  Mon.CM(1).C2C(2).DEBUG.DMONITOR;                         --DEBUG d monitor
          localRdData(16)            <=  Mon.CM(1).C2C(2).DEBUG.QPLL_LOCK;                        --DEBUG cplllock
          localRdData(20)            <=  Mon.CM(1).C2C(2).DEBUG.CPLL_LOCK;                        --DEBUG cplllock
          localRdData(21)            <=  Mon.CM(1).C2C(2).DEBUG.EYESCAN_DATA_ERROR;               --DEBUG eyescan data error
          localRdData(23)            <=  reg_data(3076)(23);                                      --DEBUG eyescan trigger
        when 3077 => --0xc05
          localRdData(15 downto  0)  <=  reg_data(3077)(15 downto  0);                            --bit 2 is DRP uber reset
        when 3078 => --0xc06
          localRdData( 2 downto  0)  <=  Mon.CM(1).C2C(2).DEBUG.RX.BUF_STATUS;                    --DEBUG rx buf status
          localRdData( 5)            <=  Mon.CM(1).C2C(2).DEBUG.RX.PMA_RESET_DONE;                --DEBUG rx reset done
          localRdData(10)            <=  Mon.CM(1).C2C(2).DEBUG.RX.PRBS_ERR;                      --DEBUG rx PRBS error
          localRdData(11)            <=  Mon.CM(1).C2C(2).DEBUG.RX.RESET_DONE;                    --DEBUG rx reset done
          localRdData(13)            <=  reg_data(3078)(13);                                      --DEBUG rx CDR hold
          localRdData(18)            <=  reg_data(3078)(18);                                      --DEBUG rx LPM ENABLE
          localRdData(25)            <=  reg_data(3078)(25);                                      --DEBUG rx PRBS counter reset
          localRdData(29 downto 26)  <=  reg_data(3078)(29 downto 26);                            --DEBUG rx PRBS select
        when 3079 => --0xc07
          localRdData( 2 downto  0)  <=  reg_data(3079)( 2 downto  0);                            --DEBUG rx rate
        when 3080 => --0xc08
          localRdData( 1 downto  0)  <=  Mon.CM(1).C2C(2).DEBUG.TX.BUF_STATUS;                    --DEBUG tx buf status
          localRdData( 2)            <=  Mon.CM(1).C2C(2).DEBUG.TX.RESET_DONE;                    --DEBUG tx reset done
          localRdData( 7)            <=  reg_data(3080)( 7);                                      --DEBUG tx inhibit
          localRdData(17)            <=  reg_data(3080)(17);                                      --DEBUG tx polarity
          localRdData(22 downto 18)  <=  reg_data(3080)(22 downto 18);                            --DEBUG post cursor
          localRdData(23)            <=  reg_data(3080)(23);                                      --DEBUG force PRBS error
          localRdData(31 downto 27)  <=  reg_data(3080)(31 downto 27);                            --DEBUG pre cursor
        when 3081 => --0xc09
          localRdData( 3 downto  0)  <=  reg_data(3081)( 3 downto  0);                            --DEBUG PRBS select
          localRdData( 8 downto  4)  <=  reg_data(3081)( 8 downto  4);                            --DEBUG tx diff control
        when 3088 => --0xc10
          localRdData(31 downto  0)  <=  Mon.CM(1).C2C(2).COUNTERS.ERRORS_ALL_TIME;               --Counter for all errors while locked
        when 3089 => --0xc11
          localRdData(31 downto  0)  <=  Mon.CM(1).C2C(2).COUNTERS.ERRORS_SINCE_LOCKED;           --Counter for errors since locked
        when 3093 => --0xc15
          localRdData(31 downto  0)  <=  Mon.CM(1).C2C(2).COUNTERS.PHY_HARD_ERROR_COUNT;          --Counter for PHY_HARD_ERROR
        when 3094 => --0xc16
          localRdData(31 downto  0)  <=  Mon.CM(1).C2C(2).COUNTERS.PHY_SOFT_ERROR_COUNT;          --Counter for PHY_SOFT_ERROR
        when 3095 => --0xc17
          localRdData( 2 downto  0)  <=  Mon.CM(1).C2C(2).COUNTERS.PHYLANE_STATE;                 --Current state of phy_lane_control module
        when 3097 => --0xc19
          localRdData(31 downto  0)  <=  Mon.CM(1).C2C(2).COUNTERS.ERROR_WAITS_SINCE_LOCKED;      --Count for phylane in error state
        when 3098 => --0xc1a
          localRdData(31 downto  0)  <=  Mon.CM(1).C2C(2).COUNTERS.USER_CLK_FREQ;                 --Frequency of the user C2C clk
        when 3099 => --0xc1b
          localRdData(31 downto  0)  <=  Mon.CM(1).C2C(2).COUNTERS.XCVR_RESETS;                   --Count for phylane in error state
        when 3100 => --0xc1c
          localRdData(31 downto  0)  <=  Mon.CM(1).C2C(2).COUNTERS.WAITING_TIMEOUTS;              --Count for phylane in error state
        when 3101 => --0xc1d
          localRdData(31 downto  0)  <=  Mon.CM(1).C2C(2).COUNTERS.SOFT_ERROR_RATE;               --single bit error rate
        when 3102 => --0xc1e
          localRdData(31 downto  0)  <=  Mon.CM(1).C2C(2).COUNTERS.HARD_ERROR_RATE;               --multi bit error rate
        when 3104 => --0xc20
          localRdData(31 downto  0)  <=  Mon.CM(1).C2C(2).BRIDGE_INFO.AXI.ADDR_LSB;               --
        when 3105 => --0xc21
          localRdData(31 downto  0)  <=  Mon.CM(1).C2C(2).BRIDGE_INFO.AXI.ADDR_MSB;               --
        when 3106 => --0xc22
          localRdData(31 downto  0)  <=  Mon.CM(1).C2C(2).BRIDGE_INFO.AXI.SIZE;                   --
        when 3107 => --0xc23
          localRdData( 0)            <=  Mon.CM(1).C2C(2).BRIDGE_INFO.AXI.VALID;                  --
        when 3108 => --0xc24
          localRdData(31 downto  0)  <=  Mon.CM(1).C2C(2).BRIDGE_INFO.AXILITE.ADDR_LSB;           --
        when 3109 => --0xc25
          localRdData(31 downto  0)  <=  Mon.CM(1).C2C(2).BRIDGE_INFO.AXILITE.ADDR_MSB;           --
        when 3110 => --0xc26
          localRdData(31 downto  0)  <=  Mon.CM(1).C2C(2).BRIDGE_INFO.AXILITE.SIZE;               --
        when 3111 => --0xc27
          localRdData( 0)            <=  Mon.CM(1).C2C(2).BRIDGE_INFO.AXILITE.VALID;              --
        when 3120 => --0xc30
          localRdData(31 downto  0)  <=  Mon.CM(1).C2C(2).USER_FREQ;                              --Measured Freq of clock
        when 3121 => --0xc31
          localRdData(23 downto  0)  <=  reg_data(3121)(23 downto  0);                            --Time spent waiting for phylane to stabilize
          localRdData(24)            <=  reg_data(3121)(24);                                      --phy_lane_control is enabled
        when 3122 => --0xc32
          localRdData(19 downto  0)  <=  reg_data(3122)(19 downto  0);                            --Contious phy_lane_up signals required to lock phylane control
        when 3123 => --0xc33
          localRdData( 7 downto  0)  <=  reg_data(3123)( 7 downto  0);                            --Number of failures before we reset the pma
        when 3124 => --0xc34
          localRdData(31 downto  0)  <=  reg_data(3124)(31 downto  0);                            --Max soft error rate
        when 3125 => --0xc35
          localRdData(31 downto  0)  <=  reg_data(3125)(31 downto  0);                            --Max hard error rate
        when 4096 => --0x1000
          localRdData( 0)            <=  reg_data(4096)( 0);                                      --Tell CM uC to power-up
          localRdData( 1)            <=  reg_data(4096)( 1);                                      --Tell CM uC to power-up the rest of the CM
          localRdData( 2)            <=  reg_data(4096)( 2);                                      --Ignore power good from CM
          localRdData( 3)            <=  Mon.CM(1).CTRL.PWR_GOOD;                                 --CM power is good
          localRdData( 7 downto  4)  <=  Mon.CM(1).CTRL.STATE;                                    --CM power up state
          localRdData( 8)            <=  reg_data(4096)( 8);                                      --CM power is good
          localRdData( 9)            <=  Mon.CM(1).CTRL.PWR_ENABLED;                              --power is enabled
          localRdData(10)            <=  Mon.CM(1).CTRL.IOS_ENABLED;                              --IOs to CM are enabled
        when 4208 => --0x1070
          localRdData( 7 downto  0)  <=  reg_data(4208)( 7 downto  0);                            --Baud 16x counter.  Set by 50Mhz/(baudrate(hz) * 16). Nominally 27
          localRdData( 8)            <=  Mon.CM(1).MONITOR.ACTIVE;                                --Monitoring active. Is zero when no update in the last second.
          localRdData(16)            <=  reg_data(4208)(16);                                      --Enable readout
        when 4209 => --0x1071
          localRdData( 4 downto  0)  <=  Mon.CM(1).MONITOR.HISTORY.VALID;                         --bytes valid in debug history
        when 4210 => --0x1072
          localRdData( 7 downto  0)  <=  Mon.CM(1).MONITOR.HISTORY.HISTORY_0;                     --byte 0 of uart history
          localRdData(15 downto  8)  <=  Mon.CM(1).MONITOR.HISTORY.HISTORY_1;                     --byte 1 of uart history
          localRdData(23 downto 16)  <=  Mon.CM(1).MONITOR.HISTORY.HISTORY_2;                     --byte 2 of uart history
          localRdData(31 downto 24)  <=  Mon.CM(1).MONITOR.HISTORY.HISTORY_3;                     --byte 3 of uart history
        when 4211 => --0x1073
          localRdData( 7 downto  0)  <=  Mon.CM(1).MONITOR.HISTORY.HISTORY_4;                     --byte 4 of uart history
          localRdData( 9 downto  0)  <=  Mon.CM(1).MONITOR.BAD_TRANS.ADDR;                        --Sensor addr bits
          localRdData(31 downto 16)  <=  Mon.CM(1).MONITOR.BAD_TRANS.DATA;                        --Sensor data bits
        when 4212 => --0x1074
          localRdData( 7 downto  0)  <=  Mon.CM(1).MONITOR.BAD_TRANS.ERROR_MASK;                  --Sensor error bits
          localRdData( 9 downto  0)  <=  Mon.CM(1).MONITOR.LAST_TRANS.ADDR;                       --Sensor addr bits
          localRdData(19 downto 16)  <=  Mon.CM(1).MONITOR.BAD_TRANS.RESERVED;                    --Sensor reserved bits
          localRdData(31 downto 16)  <=  Mon.CM(1).MONITOR.LAST_TRANS.DATA;                       --Sensor data bits
        when 4213 => --0x1075
          localRdData( 7 downto  0)  <=  Mon.CM(1).MONITOR.LAST_TRANS.ERROR_MASK;                 --Sensor error bits
          localRdData(19 downto 16)  <=  Mon.CM(1).MONITOR.LAST_TRANS.RESERVED;                   --Sensor reserved bits
        when 4214 => --0x1076
          localRdData( 0)            <=  reg_data(4214)( 0);                                      --Reset monitoring error counters
        when 4215 => --0x1077
          localRdData(15 downto  0)  <=  Mon.CM(1).MONITOR.ERRORS.CNT_BAD_SOF;                    --Monitoring errors. Count of invalid byte types in parsing.
          localRdData(31 downto 16)  <=  Mon.CM(1).MONITOR.ERRORS.CNT_AXI_BUSY_BYTE2;             --Monitoring errors. Count of invalid byte types in parsing.
        when 4216 => --0x1078
          localRdData(15 downto  0)  <=  Mon.CM(1).MONITOR.ERRORS.CNT_SOF_V1;                     --Monitoring errors. Count of invalid byte types in parsing.
          localRdData(15 downto  0)  <=  Mon.CM(1).MONITOR.ERRORS.CNT_SOF_V2;                     --Monitoring errors. Count of invalid byte types in parsing.
        when 4217 => --0x1079
          localRdData(15 downto  0)  <=  Mon.CM(1).MONITOR.ERRORS.CNT_BYTE2_NOT_DATA;             --Monitoring errors. Count of invalid byte types in parsing.
          localRdData(31 downto 16)  <=  Mon.CM(1).MONITOR.ERRORS.CNT_BYTE3_NOT_DATA;             --Monitoring errors. Count of invalid byte types in parsing.
        when 4218 => --0x107a
          localRdData(15 downto  0)  <=  Mon.CM(1).MONITOR.ERRORS.CNT_BYTE4_NOT_DATA;             --Monitoring errors. Count of invalid byte types in parsing.
          localRdData(31 downto 16)  <=  Mon.CM(1).MONITOR.ERRORS.CNT_BYTE5_NOT_DATA;             --Monitoring errors. Count of invalid byte types in parsing.
        when 4219 => --0x107b
          localRdData(15 downto  0)  <=  Mon.CM(1).MONITOR.ERRORS.CNT_UNKNOWN;                    --Monitoring errors. Count of invalid byte types in parsing.
          localRdData(31 downto 16)  <=  Mon.CM(1).MONITOR.ERRORS.CNT_TIMEOUT;                    --Monitoring errors. Count of invalid byte types in parsing.
        when 4220 => --0x107c
          localRdData(15 downto  0)  <=  Mon.CM(1).MONITOR.ERRORS.CNT_V1;                         --Monitoring errors. Count of invalid byte types in parsing.
          localRdData(31 downto 16)  <=  Mon.CM(1).MONITOR.ERRORS.CNT_V2;                         --Monitoring errors. Count of invalid byte types in parsing.
        when 4223 => --0x107f
          localRdData(31 downto  0)  <=  reg_data(4223)(31 downto  0);                            --Count to wait for in state machine before timing out (50Mhz clk)
        when 4224 => --0x1080
          localRdData(31 downto  0)  <=  Mon.CM(1).MONITOR.UART_BYTES;                            --Count of UART bytes from CM MCU
        when 5888 => --0x1700
          localRdData( 0)            <=  reg_data(5888)( 0);                                      --
        when 5889 => --0x1701
          localRdData(31 downto  0)  <=  reg_data(5889)(31 downto  0);                            --
        when 9216 => --0x2400
          localRdData( 0)            <=  Mon.CM(2).C2C(1).STATUS.CONFIG_ERROR;                    --C2C config error
          localRdData( 1)            <=  Mon.CM(2).C2C(1).STATUS.LINK_ERROR;                      --C2C link error
          localRdData( 2)            <=  Mon.CM(2).C2C(1).STATUS.LINK_GOOD;                       --C2C link FSM in SYNC
          localRdData( 3)            <=  Mon.CM(2).C2C(1).STATUS.MB_ERROR;                        --C2C multi-bit error
          localRdData( 4)            <=  Mon.CM(2).C2C(1).STATUS.DO_CC;                           --Aurora do CC
          localRdData( 5)            <=  reg_data(9216)( 5);                                      --C2C initialize
          localRdData( 8)            <=  Mon.CM(2).C2C(1).STATUS.PHY_RESET;                       --Aurora phy in reset
          localRdData( 9)            <=  Mon.CM(2).C2C(1).STATUS.PHY_GT_PLL_LOCK;                 --Aurora phy GT PLL locked
          localRdData(10)            <=  Mon.CM(2).C2C(1).STATUS.PHY_MMCM_LOL;                    --Aurora phy mmcm LOL
          localRdData(13 downto 12)  <=  Mon.CM(2).C2C(1).STATUS.PHY_LANE_UP;                     --Aurora phy lanes up
          localRdData(16)            <=  Mon.CM(2).C2C(1).STATUS.PHY_HARD_ERR;                    --Aurora phy hard error
          localRdData(17)            <=  Mon.CM(2).C2C(1).STATUS.PHY_SOFT_ERR;                    --Aurora phy soft error
          localRdData(18)            <=  Mon.CM(2).C2C(1).STATUS.PB_RESET;                        --Reset of the C2C PHY
          localRdData(31)            <=  Mon.CM(2).C2C(1).STATUS.LINK_IN_FW;                      --FW includes this link
        when 9220 => --0x2404
          localRdData(15 downto  0)  <=  Mon.CM(2).C2C(1).DEBUG.DMONITOR;                         --DEBUG d monitor
          localRdData(16)            <=  Mon.CM(2).C2C(1).DEBUG.QPLL_LOCK;                        --DEBUG cplllock
          localRdData(20)            <=  Mon.CM(2).C2C(1).DEBUG.CPLL_LOCK;                        --DEBUG cplllock
          localRdData(21)            <=  Mon.CM(2).C2C(1).DEBUG.EYESCAN_DATA_ERROR;               --DEBUG eyescan data error
          localRdData(23)            <=  reg_data(9220)(23);                                      --DEBUG eyescan trigger
        when 9221 => --0x2405
          localRdData(15 downto  0)  <=  reg_data(9221)(15 downto  0);                            --bit 2 is DRP uber reset
        when 9222 => --0x2406
          localRdData( 2 downto  0)  <=  Mon.CM(2).C2C(1).DEBUG.RX.BUF_STATUS;                    --DEBUG rx buf status
          localRdData( 5)            <=  Mon.CM(2).C2C(1).DEBUG.RX.PMA_RESET_DONE;                --DEBUG rx reset done
          localRdData(10)            <=  Mon.CM(2).C2C(1).DEBUG.RX.PRBS_ERR;                      --DEBUG rx PRBS error
          localRdData(11)            <=  Mon.CM(2).C2C(1).DEBUG.RX.RESET_DONE;                    --DEBUG rx reset done
          localRdData(13)            <=  reg_data(9222)(13);                                      --DEBUG rx CDR hold
          localRdData(18)            <=  reg_data(9222)(18);                                      --DEBUG rx LPM ENABLE
          localRdData(25)            <=  reg_data(9222)(25);                                      --DEBUG rx PRBS counter reset
          localRdData(29 downto 26)  <=  reg_data(9222)(29 downto 26);                            --DEBUG rx PRBS select
        when 9223 => --0x2407
          localRdData( 2 downto  0)  <=  reg_data(9223)( 2 downto  0);                            --DEBUG rx rate
        when 9224 => --0x2408
          localRdData( 1 downto  0)  <=  Mon.CM(2).C2C(1).DEBUG.TX.BUF_STATUS;                    --DEBUG tx buf status
          localRdData( 2)            <=  Mon.CM(2).C2C(1).DEBUG.TX.RESET_DONE;                    --DEBUG tx reset done
          localRdData( 7)            <=  reg_data(9224)( 7);                                      --DEBUG tx inhibit
          localRdData(17)            <=  reg_data(9224)(17);                                      --DEBUG tx polarity
          localRdData(22 downto 18)  <=  reg_data(9224)(22 downto 18);                            --DEBUG post cursor
          localRdData(23)            <=  reg_data(9224)(23);                                      --DEBUG force PRBS error
          localRdData(31 downto 27)  <=  reg_data(9224)(31 downto 27);                            --DEBUG pre cursor
        when 9225 => --0x2409
          localRdData( 3 downto  0)  <=  reg_data(9225)( 3 downto  0);                            --DEBUG PRBS select
          localRdData( 8 downto  4)  <=  reg_data(9225)( 8 downto  4);                            --DEBUG tx diff control
        when 9232 => --0x2410
          localRdData(31 downto  0)  <=  Mon.CM(2).C2C(1).COUNTERS.ERRORS_ALL_TIME;               --Counter for all errors while locked
        when 9233 => --0x2411
          localRdData(31 downto  0)  <=  Mon.CM(2).C2C(1).COUNTERS.ERRORS_SINCE_LOCKED;           --Counter for errors since locked
        when 9237 => --0x2415
          localRdData(31 downto  0)  <=  Mon.CM(2).C2C(1).COUNTERS.PHY_HARD_ERROR_COUNT;          --Counter for PHY_HARD_ERROR
        when 9238 => --0x2416
          localRdData(31 downto  0)  <=  Mon.CM(2).C2C(1).COUNTERS.PHY_SOFT_ERROR_COUNT;          --Counter for PHY_SOFT_ERROR
        when 9239 => --0x2417
          localRdData( 2 downto  0)  <=  Mon.CM(2).C2C(1).COUNTERS.PHYLANE_STATE;                 --Current state of phy_lane_control module
        when 9241 => --0x2419
          localRdData(31 downto  0)  <=  Mon.CM(2).C2C(1).COUNTERS.ERROR_WAITS_SINCE_LOCKED;      --Count for phylane in error state
        when 9242 => --0x241a
          localRdData(31 downto  0)  <=  Mon.CM(2).C2C(1).COUNTERS.USER_CLK_FREQ;                 --Frequency of the user C2C clk
        when 9243 => --0x241b
          localRdData(31 downto  0)  <=  Mon.CM(2).C2C(1).COUNTERS.XCVR_RESETS;                   --Count for phylane in error state
        when 9244 => --0x241c
          localRdData(31 downto  0)  <=  Mon.CM(2).C2C(1).COUNTERS.WAITING_TIMEOUTS;              --Count for phylane in error state
        when 9245 => --0x241d
          localRdData(31 downto  0)  <=  Mon.CM(2).C2C(1).COUNTERS.SOFT_ERROR_RATE;               --single bit error rate
        when 9246 => --0x241e
          localRdData(31 downto  0)  <=  Mon.CM(2).C2C(1).COUNTERS.HARD_ERROR_RATE;               --multi bit error rate
        when 9248 => --0x2420
          localRdData(31 downto  0)  <=  Mon.CM(2).C2C(1).BRIDGE_INFO.AXI.ADDR_LSB;               --
        when 9249 => --0x2421
          localRdData(31 downto  0)  <=  Mon.CM(2).C2C(1).BRIDGE_INFO.AXI.ADDR_MSB;               --
        when 9250 => --0x2422
          localRdData(31 downto  0)  <=  Mon.CM(2).C2C(1).BRIDGE_INFO.AXI.SIZE;                   --
        when 9251 => --0x2423
          localRdData( 0)            <=  Mon.CM(2).C2C(1).BRIDGE_INFO.AXI.VALID;                  --
        when 9252 => --0x2424
          localRdData(31 downto  0)  <=  Mon.CM(2).C2C(1).BRIDGE_INFO.AXILITE.ADDR_LSB;           --
        when 9253 => --0x2425
          localRdData(31 downto  0)  <=  Mon.CM(2).C2C(1).BRIDGE_INFO.AXILITE.ADDR_MSB;           --
        when 9254 => --0x2426
          localRdData(31 downto  0)  <=  Mon.CM(2).C2C(1).BRIDGE_INFO.AXILITE.SIZE;               --
        when 9255 => --0x2427
          localRdData( 0)            <=  Mon.CM(2).C2C(1).BRIDGE_INFO.AXILITE.VALID;              --
        when 9264 => --0x2430
          localRdData(31 downto  0)  <=  Mon.CM(2).C2C(1).USER_FREQ;                              --Measured Freq of clock
        when 9265 => --0x2431
          localRdData(23 downto  0)  <=  reg_data(9265)(23 downto  0);                            --Time spent waiting for phylane to stabilize
          localRdData(24)            <=  reg_data(9265)(24);                                      --phy_lane_control is enabled
        when 9266 => --0x2432
          localRdData(19 downto  0)  <=  reg_data(9266)(19 downto  0);                            --Contious phy_lane_up signals required to lock phylane control
        when 9267 => --0x2433
          localRdData( 7 downto  0)  <=  reg_data(9267)( 7 downto  0);                            --Number of failures before we reset the pma
        when 9268 => --0x2434
          localRdData(31 downto  0)  <=  reg_data(9268)(31 downto  0);                            --Max soft error rate
        when 9269 => --0x2435
          localRdData(31 downto  0)  <=  reg_data(9269)(31 downto  0);                            --Max hard error rate
        when 11264 => --0x2c00
          localRdData( 0)            <=  Mon.CM(2).C2C(2).STATUS.CONFIG_ERROR;                    --C2C config error
          localRdData( 1)            <=  Mon.CM(2).C2C(2).STATUS.LINK_ERROR;                      --C2C link error
          localRdData( 2)            <=  Mon.CM(2).C2C(2).STATUS.LINK_GOOD;                       --C2C link FSM in SYNC
          localRdData( 3)            <=  Mon.CM(2).C2C(2).STATUS.MB_ERROR;                        --C2C multi-bit error
          localRdData( 4)            <=  Mon.CM(2).C2C(2).STATUS.DO_CC;                           --Aurora do CC
          localRdData( 5)            <=  reg_data(11264)( 5);                                     --C2C initialize
          localRdData( 8)            <=  Mon.CM(2).C2C(2).STATUS.PHY_RESET;                       --Aurora phy in reset
          localRdData( 9)            <=  Mon.CM(2).C2C(2).STATUS.PHY_GT_PLL_LOCK;                 --Aurora phy GT PLL locked
          localRdData(10)            <=  Mon.CM(2).C2C(2).STATUS.PHY_MMCM_LOL;                    --Aurora phy mmcm LOL
          localRdData(13 downto 12)  <=  Mon.CM(2).C2C(2).STATUS.PHY_LANE_UP;                     --Aurora phy lanes up
          localRdData(16)            <=  Mon.CM(2).C2C(2).STATUS.PHY_HARD_ERR;                    --Aurora phy hard error
          localRdData(17)            <=  Mon.CM(2).C2C(2).STATUS.PHY_SOFT_ERR;                    --Aurora phy soft error
          localRdData(18)            <=  Mon.CM(2).C2C(2).STATUS.PB_RESET;                        --Reset of the C2C PHY
          localRdData(31)            <=  Mon.CM(2).C2C(2).STATUS.LINK_IN_FW;                      --FW includes this link
        when 11268 => --0x2c04
          localRdData(15 downto  0)  <=  Mon.CM(2).C2C(2).DEBUG.DMONITOR;                         --DEBUG d monitor
          localRdData(16)            <=  Mon.CM(2).C2C(2).DEBUG.QPLL_LOCK;                        --DEBUG cplllock
          localRdData(20)            <=  Mon.CM(2).C2C(2).DEBUG.CPLL_LOCK;                        --DEBUG cplllock
          localRdData(21)            <=  Mon.CM(2).C2C(2).DEBUG.EYESCAN_DATA_ERROR;               --DEBUG eyescan data error
          localRdData(23)            <=  reg_data(11268)(23);                                     --DEBUG eyescan trigger
        when 11269 => --0x2c05
          localRdData(15 downto  0)  <=  reg_data(11269)(15 downto  0);                           --bit 2 is DRP uber reset
        when 11270 => --0x2c06
          localRdData( 2 downto  0)  <=  Mon.CM(2).C2C(2).DEBUG.RX.BUF_STATUS;                    --DEBUG rx buf status
          localRdData( 5)            <=  Mon.CM(2).C2C(2).DEBUG.RX.PMA_RESET_DONE;                --DEBUG rx reset done
          localRdData(10)            <=  Mon.CM(2).C2C(2).DEBUG.RX.PRBS_ERR;                      --DEBUG rx PRBS error
          localRdData(11)            <=  Mon.CM(2).C2C(2).DEBUG.RX.RESET_DONE;                    --DEBUG rx reset done
          localRdData(13)            <=  reg_data(11270)(13);                                     --DEBUG rx CDR hold
          localRdData(18)            <=  reg_data(11270)(18);                                     --DEBUG rx LPM ENABLE
          localRdData(25)            <=  reg_data(11270)(25);                                     --DEBUG rx PRBS counter reset
          localRdData(29 downto 26)  <=  reg_data(11270)(29 downto 26);                           --DEBUG rx PRBS select
        when 11271 => --0x2c07
          localRdData( 2 downto  0)  <=  reg_data(11271)( 2 downto  0);                           --DEBUG rx rate
        when 11272 => --0x2c08
          localRdData( 1 downto  0)  <=  Mon.CM(2).C2C(2).DEBUG.TX.BUF_STATUS;                    --DEBUG tx buf status
          localRdData( 2)            <=  Mon.CM(2).C2C(2).DEBUG.TX.RESET_DONE;                    --DEBUG tx reset done
          localRdData( 7)            <=  reg_data(11272)( 7);                                     --DEBUG tx inhibit
          localRdData(17)            <=  reg_data(11272)(17);                                     --DEBUG tx polarity
          localRdData(22 downto 18)  <=  reg_data(11272)(22 downto 18);                           --DEBUG post cursor
          localRdData(23)            <=  reg_data(11272)(23);                                     --DEBUG force PRBS error
          localRdData(31 downto 27)  <=  reg_data(11272)(31 downto 27);                           --DEBUG pre cursor
        when 11273 => --0x2c09
          localRdData( 3 downto  0)  <=  reg_data(11273)( 3 downto  0);                           --DEBUG PRBS select
          localRdData( 8 downto  4)  <=  reg_data(11273)( 8 downto  4);                           --DEBUG tx diff control
        when 11280 => --0x2c10
          localRdData(31 downto  0)  <=  Mon.CM(2).C2C(2).COUNTERS.ERRORS_ALL_TIME;               --Counter for all errors while locked
        when 11281 => --0x2c11
          localRdData(31 downto  0)  <=  Mon.CM(2).C2C(2).COUNTERS.ERRORS_SINCE_LOCKED;           --Counter for errors since locked
        when 11285 => --0x2c15
          localRdData(31 downto  0)  <=  Mon.CM(2).C2C(2).COUNTERS.PHY_HARD_ERROR_COUNT;          --Counter for PHY_HARD_ERROR
        when 11286 => --0x2c16
          localRdData(31 downto  0)  <=  Mon.CM(2).C2C(2).COUNTERS.PHY_SOFT_ERROR_COUNT;          --Counter for PHY_SOFT_ERROR
        when 11287 => --0x2c17
          localRdData( 2 downto  0)  <=  Mon.CM(2).C2C(2).COUNTERS.PHYLANE_STATE;                 --Current state of phy_lane_control module
        when 11289 => --0x2c19
          localRdData(31 downto  0)  <=  Mon.CM(2).C2C(2).COUNTERS.ERROR_WAITS_SINCE_LOCKED;      --Count for phylane in error state
        when 11290 => --0x2c1a
          localRdData(31 downto  0)  <=  Mon.CM(2).C2C(2).COUNTERS.USER_CLK_FREQ;                 --Frequency of the user C2C clk
        when 11291 => --0x2c1b
          localRdData(31 downto  0)  <=  Mon.CM(2).C2C(2).COUNTERS.XCVR_RESETS;                   --Count for phylane in error state
        when 11292 => --0x2c1c
          localRdData(31 downto  0)  <=  Mon.CM(2).C2C(2).COUNTERS.WAITING_TIMEOUTS;              --Count for phylane in error state
        when 11293 => --0x2c1d
          localRdData(31 downto  0)  <=  Mon.CM(2).C2C(2).COUNTERS.SOFT_ERROR_RATE;               --single bit error rate
        when 11294 => --0x2c1e
          localRdData(31 downto  0)  <=  Mon.CM(2).C2C(2).COUNTERS.HARD_ERROR_RATE;               --multi bit error rate
        when 11296 => --0x2c20
          localRdData(31 downto  0)  <=  Mon.CM(2).C2C(2).BRIDGE_INFO.AXI.ADDR_LSB;               --
        when 11297 => --0x2c21
          localRdData(31 downto  0)  <=  Mon.CM(2).C2C(2).BRIDGE_INFO.AXI.ADDR_MSB;               --
        when 11298 => --0x2c22
          localRdData(31 downto  0)  <=  Mon.CM(2).C2C(2).BRIDGE_INFO.AXI.SIZE;                   --
        when 11299 => --0x2c23
          localRdData( 0)            <=  Mon.CM(2).C2C(2).BRIDGE_INFO.AXI.VALID;                  --
        when 11300 => --0x2c24
          localRdData(31 downto  0)  <=  Mon.CM(2).C2C(2).BRIDGE_INFO.AXILITE.ADDR_LSB;           --
        when 11301 => --0x2c25
          localRdData(31 downto  0)  <=  Mon.CM(2).C2C(2).BRIDGE_INFO.AXILITE.ADDR_MSB;           --
        when 11302 => --0x2c26
          localRdData(31 downto  0)  <=  Mon.CM(2).C2C(2).BRIDGE_INFO.AXILITE.SIZE;               --
        when 11303 => --0x2c27
          localRdData( 0)            <=  Mon.CM(2).C2C(2).BRIDGE_INFO.AXILITE.VALID;              --
        when 11312 => --0x2c30
          localRdData(31 downto  0)  <=  Mon.CM(2).C2C(2).USER_FREQ;                              --Measured Freq of clock
        when 11313 => --0x2c31
          localRdData(23 downto  0)  <=  reg_data(11313)(23 downto  0);                           --Time spent waiting for phylane to stabilize
          localRdData(24)            <=  reg_data(11313)(24);                                     --phy_lane_control is enabled
        when 11314 => --0x2c32
          localRdData(19 downto  0)  <=  reg_data(11314)(19 downto  0);                           --Contious phy_lane_up signals required to lock phylane control
        when 11315 => --0x2c33
          localRdData( 7 downto  0)  <=  reg_data(11315)( 7 downto  0);                           --Number of failures before we reset the pma
        when 11316 => --0x2c34
          localRdData(31 downto  0)  <=  reg_data(11316)(31 downto  0);                           --Max soft error rate
        when 11317 => --0x2c35
          localRdData(31 downto  0)  <=  reg_data(11317)(31 downto  0);                           --Max hard error rate
        when 12288 => --0x3000
          localRdData( 0)            <=  reg_data(12288)( 0);                                     --Tell CM uC to power-up
          localRdData( 1)            <=  reg_data(12288)( 1);                                     --Tell CM uC to power-up the rest of the CM
          localRdData( 2)            <=  reg_data(12288)( 2);                                     --Ignore power good from CM
          localRdData( 3)            <=  Mon.CM(2).CTRL.PWR_GOOD;                                 --CM power is good
          localRdData( 7 downto  4)  <=  Mon.CM(2).CTRL.STATE;                                    --CM power up state
          localRdData( 8)            <=  reg_data(12288)( 8);                                     --CM power is good
          localRdData( 9)            <=  Mon.CM(2).CTRL.PWR_ENABLED;                              --power is enabled
          localRdData(10)            <=  Mon.CM(2).CTRL.IOS_ENABLED;                              --IOs to CM are enabled
        when 12400 => --0x3070
          localRdData( 7 downto  0)  <=  reg_data(12400)( 7 downto  0);                           --Baud 16x counter.  Set by 50Mhz/(baudrate(hz) * 16). Nominally 27
          localRdData( 8)            <=  Mon.CM(2).MONITOR.ACTIVE;                                --Monitoring active. Is zero when no update in the last second.
          localRdData(16)            <=  reg_data(12400)(16);                                     --Enable readout
        when 12401 => --0x3071
          localRdData( 4 downto  0)  <=  Mon.CM(2).MONITOR.HISTORY.VALID;                         --bytes valid in debug history
        when 12402 => --0x3072
          localRdData( 7 downto  0)  <=  Mon.CM(2).MONITOR.HISTORY.HISTORY_0;                     --byte 0 of uart history
          localRdData(15 downto  8)  <=  Mon.CM(2).MONITOR.HISTORY.HISTORY_1;                     --byte 1 of uart history
          localRdData(23 downto 16)  <=  Mon.CM(2).MONITOR.HISTORY.HISTORY_2;                     --byte 2 of uart history
          localRdData(31 downto 24)  <=  Mon.CM(2).MONITOR.HISTORY.HISTORY_3;                     --byte 3 of uart history
        when 12403 => --0x3073
          localRdData( 7 downto  0)  <=  Mon.CM(2).MONITOR.HISTORY.HISTORY_4;                     --byte 4 of uart history
          localRdData( 9 downto  0)  <=  Mon.CM(2).MONITOR.BAD_TRANS.ADDR;                        --Sensor addr bits
          localRdData(31 downto 16)  <=  Mon.CM(2).MONITOR.BAD_TRANS.DATA;                        --Sensor data bits
        when 12404 => --0x3074
          localRdData( 7 downto  0)  <=  Mon.CM(2).MONITOR.BAD_TRANS.ERROR_MASK;                  --Sensor error bits
          localRdData( 9 downto  0)  <=  Mon.CM(2).MONITOR.LAST_TRANS.ADDR;                       --Sensor addr bits
          localRdData(19 downto 16)  <=  Mon.CM(2).MONITOR.BAD_TRANS.RESERVED;                    --Sensor reserved bits
          localRdData(31 downto 16)  <=  Mon.CM(2).MONITOR.LAST_TRANS.DATA;                       --Sensor data bits
        when 12405 => --0x3075
          localRdData( 7 downto  0)  <=  Mon.CM(2).MONITOR.LAST_TRANS.ERROR_MASK;                 --Sensor error bits
          localRdData(19 downto 16)  <=  Mon.CM(2).MONITOR.LAST_TRANS.RESERVED;                   --Sensor reserved bits
        when 12406 => --0x3076
          localRdData( 0)            <=  reg_data(12406)( 0);                                     --Reset monitoring error counters
        when 12407 => --0x3077
          localRdData(15 downto  0)  <=  Mon.CM(2).MONITOR.ERRORS.CNT_BAD_SOF;                    --Monitoring errors. Count of invalid byte types in parsing.
          localRdData(31 downto 16)  <=  Mon.CM(2).MONITOR.ERRORS.CNT_AXI_BUSY_BYTE2;             --Monitoring errors. Count of invalid byte types in parsing.
        when 12408 => --0x3078
          localRdData(15 downto  0)  <=  Mon.CM(2).MONITOR.ERRORS.CNT_SOF_V1;                     --Monitoring errors. Count of invalid byte types in parsing.
          localRdData(15 downto  0)  <=  Mon.CM(2).MONITOR.ERRORS.CNT_SOF_V2;                     --Monitoring errors. Count of invalid byte types in parsing.
        when 12409 => --0x3079
          localRdData(15 downto  0)  <=  Mon.CM(2).MONITOR.ERRORS.CNT_BYTE2_NOT_DATA;             --Monitoring errors. Count of invalid byte types in parsing.
          localRdData(31 downto 16)  <=  Mon.CM(2).MONITOR.ERRORS.CNT_BYTE3_NOT_DATA;             --Monitoring errors. Count of invalid byte types in parsing.
        when 12410 => --0x307a
          localRdData(15 downto  0)  <=  Mon.CM(2).MONITOR.ERRORS.CNT_BYTE4_NOT_DATA;             --Monitoring errors. Count of invalid byte types in parsing.
          localRdData(31 downto 16)  <=  Mon.CM(2).MONITOR.ERRORS.CNT_BYTE5_NOT_DATA;             --Monitoring errors. Count of invalid byte types in parsing.
        when 12411 => --0x307b
          localRdData(15 downto  0)  <=  Mon.CM(2).MONITOR.ERRORS.CNT_UNKNOWN;                    --Monitoring errors. Count of invalid byte types in parsing.
          localRdData(31 downto 16)  <=  Mon.CM(2).MONITOR.ERRORS.CNT_TIMEOUT;                    --Monitoring errors. Count of invalid byte types in parsing.
        when 12412 => --0x307c
          localRdData(15 downto  0)  <=  Mon.CM(2).MONITOR.ERRORS.CNT_V1;                         --Monitoring errors. Count of invalid byte types in parsing.
          localRdData(31 downto 16)  <=  Mon.CM(2).MONITOR.ERRORS.CNT_V2;                         --Monitoring errors. Count of invalid byte types in parsing.
        when 12415 => --0x307f
          localRdData(31 downto  0)  <=  reg_data(12415)(31 downto  0);                           --Count to wait for in state machine before timing out (50Mhz clk)
        when 12416 => --0x3080
          localRdData(31 downto  0)  <=  Mon.CM(2).MONITOR.UART_BYTES;                            --Count of UART bytes from CM MCU
        when 14080 => --0x3700
          localRdData( 0)            <=  reg_data(14080)( 0);                                     --
        when 14081 => --0x3701
          localRdData(31 downto  0)  <=  reg_data(14081)(31 downto  0);                           --
        when 18449 => --0x4811
          localRdData(31 downto  0)  <=  Mon.C2C_REFCLK_FREQ;                                     --


          when others =>
            regRdAck <= '0';
            localRdData <= x"00000000";
        end case;
      end if;
    end if;
  end process reads;


  -------------------------------------------------------------------------------
  -- Record write decoding
  -------------------------------------------------------------------------------
  -------------------------------------------------------------------------------

  -- Register mapping to ctrl structures
  Ctrl.CM(1).C2C(1).STATUS.INITIALIZE         <=  reg_data(1024)( 5);                
  Ctrl.CM(1).C2C(1).DEBUG.EYESCAN_TRIGGER     <=  reg_data(1028)(23);                
  Ctrl.CM(1).C2C(1).DEBUG.PCS_RSV_DIN         <=  reg_data(1029)(15 downto  0);      
  Ctrl.CM(1).C2C(1).DEBUG.RX.CDR_HOLD         <=  reg_data(1030)(13);                
  Ctrl.CM(1).C2C(1).DEBUG.RX.LPM_EN           <=  reg_data(1030)(18);                
  Ctrl.CM(1).C2C(1).DEBUG.RX.PRBS_CNT_RST     <=  reg_data(1030)(25);                
  Ctrl.CM(1).C2C(1).DEBUG.RX.PRBS_SEL         <=  reg_data(1030)(29 downto 26);      
  Ctrl.CM(1).C2C(1).DEBUG.RX.RATE             <=  reg_data(1031)( 2 downto  0);      
  Ctrl.CM(1).C2C(1).DEBUG.TX.INHIBIT          <=  reg_data(1032)( 7);                
  Ctrl.CM(1).C2C(1).DEBUG.TX.POLARITY         <=  reg_data(1032)(17);                
  Ctrl.CM(1).C2C(1).DEBUG.TX.POST_CURSOR      <=  reg_data(1032)(22 downto 18);      
  Ctrl.CM(1).C2C(1).DEBUG.TX.PRBS_FORCE_ERR   <=  reg_data(1032)(23);                
  Ctrl.CM(1).C2C(1).DEBUG.TX.PRE_CURSOR       <=  reg_data(1032)(31 downto 27);      
  Ctrl.CM(1).C2C(1).DEBUG.TX.PRBS_SEL         <=  reg_data(1033)( 3 downto  0);      
  Ctrl.CM(1).C2C(1).DEBUG.TX.DIFF_CTRL        <=  reg_data(1033)( 8 downto  4);      
  Ctrl.CM(1).C2C(1).PHY_READ_TIME             <=  reg_data(1073)(23 downto  0);      
  Ctrl.CM(1).C2C(1).ENABLE_PHY_CTRL           <=  reg_data(1073)(24);                
  Ctrl.CM(1).C2C(1).PHY_LANE_STABLE           <=  reg_data(1074)(19 downto  0);      
  Ctrl.CM(1).C2C(1).PHY_LANE_ERRORS_TO_RESET  <=  reg_data(1075)( 7 downto  0);      
  Ctrl.CM(1).C2C(1).PHY_MAX_SOFT_ERROR_RATE   <=  reg_data(1076)(31 downto  0);      
  Ctrl.CM(1).C2C(1).PHY_MAX_HARD_ERROR_RATE   <=  reg_data(1077)(31 downto  0);      
  Ctrl.CM(1).C2C(2).STATUS.INITIALIZE         <=  reg_data(3072)( 5);                
  Ctrl.CM(1).C2C(2).DEBUG.EYESCAN_TRIGGER     <=  reg_data(3076)(23);                
  Ctrl.CM(1).C2C(2).DEBUG.PCS_RSV_DIN         <=  reg_data(3077)(15 downto  0);      
  Ctrl.CM(1).C2C(2).DEBUG.RX.CDR_HOLD         <=  reg_data(3078)(13);                
  Ctrl.CM(1).C2C(2).DEBUG.RX.LPM_EN           <=  reg_data(3078)(18);                
  Ctrl.CM(1).C2C(2).DEBUG.RX.PRBS_CNT_RST     <=  reg_data(3078)(25);                
  Ctrl.CM(1).C2C(2).DEBUG.RX.PRBS_SEL         <=  reg_data(3078)(29 downto 26);      
  Ctrl.CM(1).C2C(2).DEBUG.RX.RATE             <=  reg_data(3079)( 2 downto  0);      
  Ctrl.CM(1).C2C(2).DEBUG.TX.INHIBIT          <=  reg_data(3080)( 7);                
  Ctrl.CM(1).C2C(2).DEBUG.TX.POLARITY         <=  reg_data(3080)(17);                
  Ctrl.CM(1).C2C(2).DEBUG.TX.POST_CURSOR      <=  reg_data(3080)(22 downto 18);      
  Ctrl.CM(1).C2C(2).DEBUG.TX.PRBS_FORCE_ERR   <=  reg_data(3080)(23);                
  Ctrl.CM(1).C2C(2).DEBUG.TX.PRE_CURSOR       <=  reg_data(3080)(31 downto 27);      
  Ctrl.CM(1).C2C(2).DEBUG.TX.PRBS_SEL         <=  reg_data(3081)( 3 downto  0);      
  Ctrl.CM(1).C2C(2).DEBUG.TX.DIFF_CTRL        <=  reg_data(3081)( 8 downto  4);      
  Ctrl.CM(1).C2C(2).PHY_READ_TIME             <=  reg_data(3121)(23 downto  0);      
  Ctrl.CM(1).C2C(2).ENABLE_PHY_CTRL           <=  reg_data(3121)(24);                
  Ctrl.CM(1).C2C(2).PHY_LANE_STABLE           <=  reg_data(3122)(19 downto  0);      
  Ctrl.CM(1).C2C(2).PHY_LANE_ERRORS_TO_RESET  <=  reg_data(3123)( 7 downto  0);      
  Ctrl.CM(1).C2C(2).PHY_MAX_SOFT_ERROR_RATE   <=  reg_data(3124)(31 downto  0);      
  Ctrl.CM(1).C2C(2).PHY_MAX_HARD_ERROR_RATE   <=  reg_data(3125)(31 downto  0);      
  Ctrl.CM(1).CTRL.ENABLE_UC                   <=  reg_data(4096)( 0);                
  Ctrl.CM(1).CTRL.ENABLE_PWR                  <=  reg_data(4096)( 1);                
  Ctrl.CM(1).CTRL.OVERRIDE_PWR_GOOD           <=  reg_data(4096)( 2);                
  Ctrl.CM(1).CTRL.ERROR_STATE_RESET           <=  reg_data(4096)( 8);                
  Ctrl.CM(1).MONITOR.COUNT_16X_BAUD           <=  reg_data(4208)( 7 downto  0);      
  Ctrl.CM(1).MONITOR.ENABLE                   <=  reg_data(4208)(16);                
  Ctrl.CM(1).MONITOR.ERRORS.RESET             <=  reg_data(4214)( 0);                
  Ctrl.CM(1).MONITOR.SM_TIMEOUT               <=  reg_data(4223)(31 downto  0);      
  Ctrl.CM(1).PB.RESET                         <=  reg_data(5888)( 0);                
  Ctrl.CM(1).PB.IRQ_COUNT                     <=  reg_data(5889)(31 downto  0);      
  Ctrl.CM(2).C2C(1).STATUS.INITIALIZE         <=  reg_data(9216)( 5);                
  Ctrl.CM(2).C2C(1).DEBUG.EYESCAN_TRIGGER     <=  reg_data(9220)(23);                
  Ctrl.CM(2).C2C(1).DEBUG.PCS_RSV_DIN         <=  reg_data(9221)(15 downto  0);      
  Ctrl.CM(2).C2C(1).DEBUG.RX.CDR_HOLD         <=  reg_data(9222)(13);                
  Ctrl.CM(2).C2C(1).DEBUG.RX.LPM_EN           <=  reg_data(9222)(18);                
  Ctrl.CM(2).C2C(1).DEBUG.RX.PRBS_CNT_RST     <=  reg_data(9222)(25);                
  Ctrl.CM(2).C2C(1).DEBUG.RX.PRBS_SEL         <=  reg_data(9222)(29 downto 26);      
  Ctrl.CM(2).C2C(1).DEBUG.RX.RATE             <=  reg_data(9223)( 2 downto  0);      
  Ctrl.CM(2).C2C(1).DEBUG.TX.INHIBIT          <=  reg_data(9224)( 7);                
  Ctrl.CM(2).C2C(1).DEBUG.TX.POLARITY         <=  reg_data(9224)(17);                
  Ctrl.CM(2).C2C(1).DEBUG.TX.POST_CURSOR      <=  reg_data(9224)(22 downto 18);      
  Ctrl.CM(2).C2C(1).DEBUG.TX.PRBS_FORCE_ERR   <=  reg_data(9224)(23);                
  Ctrl.CM(2).C2C(1).DEBUG.TX.PRE_CURSOR       <=  reg_data(9224)(31 downto 27);      
  Ctrl.CM(2).C2C(1).DEBUG.TX.PRBS_SEL         <=  reg_data(9225)( 3 downto  0);      
  Ctrl.CM(2).C2C(1).DEBUG.TX.DIFF_CTRL        <=  reg_data(9225)( 8 downto  4);      
  Ctrl.CM(2).C2C(1).PHY_READ_TIME             <=  reg_data(9265)(23 downto  0);      
  Ctrl.CM(2).C2C(1).ENABLE_PHY_CTRL           <=  reg_data(9265)(24);                
  Ctrl.CM(2).C2C(1).PHY_LANE_STABLE           <=  reg_data(9266)(19 downto  0);      
  Ctrl.CM(2).C2C(1).PHY_LANE_ERRORS_TO_RESET  <=  reg_data(9267)( 7 downto  0);      
  Ctrl.CM(2).C2C(1).PHY_MAX_SOFT_ERROR_RATE   <=  reg_data(9268)(31 downto  0);      
  Ctrl.CM(2).C2C(1).PHY_MAX_HARD_ERROR_RATE   <=  reg_data(9269)(31 downto  0);      
  Ctrl.CM(2).C2C(2).STATUS.INITIALIZE         <=  reg_data(11264)( 5);               
  Ctrl.CM(2).C2C(2).DEBUG.EYESCAN_TRIGGER     <=  reg_data(11268)(23);               
  Ctrl.CM(2).C2C(2).DEBUG.PCS_RSV_DIN         <=  reg_data(11269)(15 downto  0);     
  Ctrl.CM(2).C2C(2).DEBUG.RX.CDR_HOLD         <=  reg_data(11270)(13);               
  Ctrl.CM(2).C2C(2).DEBUG.RX.LPM_EN           <=  reg_data(11270)(18);               
  Ctrl.CM(2).C2C(2).DEBUG.RX.PRBS_CNT_RST     <=  reg_data(11270)(25);               
  Ctrl.CM(2).C2C(2).DEBUG.RX.PRBS_SEL         <=  reg_data(11270)(29 downto 26);     
  Ctrl.CM(2).C2C(2).DEBUG.RX.RATE             <=  reg_data(11271)( 2 downto  0);     
  Ctrl.CM(2).C2C(2).DEBUG.TX.INHIBIT          <=  reg_data(11272)( 7);               
  Ctrl.CM(2).C2C(2).DEBUG.TX.POLARITY         <=  reg_data(11272)(17);               
  Ctrl.CM(2).C2C(2).DEBUG.TX.POST_CURSOR      <=  reg_data(11272)(22 downto 18);     
  Ctrl.CM(2).C2C(2).DEBUG.TX.PRBS_FORCE_ERR   <=  reg_data(11272)(23);               
  Ctrl.CM(2).C2C(2).DEBUG.TX.PRE_CURSOR       <=  reg_data(11272)(31 downto 27);     
  Ctrl.CM(2).C2C(2).DEBUG.TX.PRBS_SEL         <=  reg_data(11273)( 3 downto  0);     
  Ctrl.CM(2).C2C(2).DEBUG.TX.DIFF_CTRL        <=  reg_data(11273)( 8 downto  4);     
  Ctrl.CM(2).C2C(2).PHY_READ_TIME             <=  reg_data(11313)(23 downto  0);     
  Ctrl.CM(2).C2C(2).ENABLE_PHY_CTRL           <=  reg_data(11313)(24);               
  Ctrl.CM(2).C2C(2).PHY_LANE_STABLE           <=  reg_data(11314)(19 downto  0);     
  Ctrl.CM(2).C2C(2).PHY_LANE_ERRORS_TO_RESET  <=  reg_data(11315)( 7 downto  0);     
  Ctrl.CM(2).C2C(2).PHY_MAX_SOFT_ERROR_RATE   <=  reg_data(11316)(31 downto  0);     
  Ctrl.CM(2).C2C(2).PHY_MAX_HARD_ERROR_RATE   <=  reg_data(11317)(31 downto  0);     
  Ctrl.CM(2).CTRL.ENABLE_UC                   <=  reg_data(12288)( 0);               
  Ctrl.CM(2).CTRL.ENABLE_PWR                  <=  reg_data(12288)( 1);               
  Ctrl.CM(2).CTRL.OVERRIDE_PWR_GOOD           <=  reg_data(12288)( 2);               
  Ctrl.CM(2).CTRL.ERROR_STATE_RESET           <=  reg_data(12288)( 8);               
  Ctrl.CM(2).MONITOR.COUNT_16X_BAUD           <=  reg_data(12400)( 7 downto  0);     
  Ctrl.CM(2).MONITOR.ENABLE                   <=  reg_data(12400)(16);               
  Ctrl.CM(2).MONITOR.ERRORS.RESET             <=  reg_data(12406)( 0);               
  Ctrl.CM(2).MONITOR.SM_TIMEOUT               <=  reg_data(12415)(31 downto  0);     
  Ctrl.CM(2).PB.RESET                         <=  reg_data(14080)( 0);               
  Ctrl.CM(2).PB.IRQ_COUNT                     <=  reg_data(14081)(31 downto  0);     


  reg_writes: process (clk_axi, reset_axi_n) is
  begin  -- process reg_writes
    if reset_axi_n = '0' then                 -- asynchronous reset (active low)
      reg_data(1024)( 5)  <= DEFAULT_CM_CTRL_t.CM(1).C2C(1).STATUS.INITIALIZE;
      reg_data(1028)(22)  <= DEFAULT_CM_CTRL_t.CM(1).C2C(1).DEBUG.EYESCAN_RESET;
      reg_data(1028)(23)  <= DEFAULT_CM_CTRL_t.CM(1).C2C(1).DEBUG.EYESCAN_TRIGGER;
      reg_data(1029)(15 downto  0)  <= DEFAULT_CM_CTRL_t.CM(1).C2C(1).DEBUG.PCS_RSV_DIN;
      reg_data(1030)(12)  <= DEFAULT_CM_CTRL_t.CM(1).C2C(1).DEBUG.RX.BUF_RESET;
      reg_data(1030)(13)  <= DEFAULT_CM_CTRL_t.CM(1).C2C(1).DEBUG.RX.CDR_HOLD;
      reg_data(1030)(17)  <= DEFAULT_CM_CTRL_t.CM(1).C2C(1).DEBUG.RX.DFE_LPM_RESET;
      reg_data(1030)(18)  <= DEFAULT_CM_CTRL_t.CM(1).C2C(1).DEBUG.RX.LPM_EN;
      reg_data(1030)(23)  <= DEFAULT_CM_CTRL_t.CM(1).C2C(1).DEBUG.RX.PCS_RESET;
      reg_data(1030)(24)  <= DEFAULT_CM_CTRL_t.CM(1).C2C(1).DEBUG.RX.PMA_RESET;
      reg_data(1030)(25)  <= DEFAULT_CM_CTRL_t.CM(1).C2C(1).DEBUG.RX.PRBS_CNT_RST;
      reg_data(1030)(29 downto 26)  <= DEFAULT_CM_CTRL_t.CM(1).C2C(1).DEBUG.RX.PRBS_SEL;
      reg_data(1031)( 2 downto  0)  <= DEFAULT_CM_CTRL_t.CM(1).C2C(1).DEBUG.RX.RATE;
      reg_data(1032)( 7)  <= DEFAULT_CM_CTRL_t.CM(1).C2C(1).DEBUG.TX.INHIBIT;
      reg_data(1032)(15)  <= DEFAULT_CM_CTRL_t.CM(1).C2C(1).DEBUG.TX.PCS_RESET;
      reg_data(1032)(16)  <= DEFAULT_CM_CTRL_t.CM(1).C2C(1).DEBUG.TX.PMA_RESET;
      reg_data(1032)(17)  <= DEFAULT_CM_CTRL_t.CM(1).C2C(1).DEBUG.TX.POLARITY;
      reg_data(1032)(22 downto 18)  <= DEFAULT_CM_CTRL_t.CM(1).C2C(1).DEBUG.TX.POST_CURSOR;
      reg_data(1032)(23)  <= DEFAULT_CM_CTRL_t.CM(1).C2C(1).DEBUG.TX.PRBS_FORCE_ERR;
      reg_data(1032)(31 downto 27)  <= DEFAULT_CM_CTRL_t.CM(1).C2C(1).DEBUG.TX.PRE_CURSOR;
      reg_data(1033)( 3 downto  0)  <= DEFAULT_CM_CTRL_t.CM(1).C2C(1).DEBUG.TX.PRBS_SEL;
      reg_data(1033)( 8 downto  4)  <= DEFAULT_CM_CTRL_t.CM(1).C2C(1).DEBUG.TX.DIFF_CTRL;
      reg_data(1048)( 0)  <= DEFAULT_CM_CTRL_t.CM(1).C2C(1).COUNTERS.RESET_COUNTERS;
      reg_data(1073)(23 downto  0)  <= DEFAULT_CM_CTRL_t.CM(1).C2C(1).PHY_READ_TIME;
      reg_data(1073)(24)  <= DEFAULT_CM_CTRL_t.CM(1).C2C(1).ENABLE_PHY_CTRL;
      reg_data(1074)(19 downto  0)  <= DEFAULT_CM_CTRL_t.CM(1).C2C(1).PHY_LANE_STABLE;
      reg_data(1075)( 7 downto  0)  <= DEFAULT_CM_CTRL_t.CM(1).C2C(1).PHY_LANE_ERRORS_TO_RESET;
      reg_data(1076)(31 downto  0)  <= DEFAULT_CM_CTRL_t.CM(1).C2C(1).PHY_MAX_SOFT_ERROR_RATE;
      reg_data(1077)(31 downto  0)  <= DEFAULT_CM_CTRL_t.CM(1).C2C(1).PHY_MAX_HARD_ERROR_RATE;
      reg_data(3072)( 5)  <= DEFAULT_CM_CTRL_t.CM(1).C2C(2).STATUS.INITIALIZE;
      reg_data(3076)(22)  <= DEFAULT_CM_CTRL_t.CM(1).C2C(2).DEBUG.EYESCAN_RESET;
      reg_data(3076)(23)  <= DEFAULT_CM_CTRL_t.CM(1).C2C(2).DEBUG.EYESCAN_TRIGGER;
      reg_data(3077)(15 downto  0)  <= DEFAULT_CM_CTRL_t.CM(1).C2C(2).DEBUG.PCS_RSV_DIN;
      reg_data(3078)(12)  <= DEFAULT_CM_CTRL_t.CM(1).C2C(2).DEBUG.RX.BUF_RESET;
      reg_data(3078)(13)  <= DEFAULT_CM_CTRL_t.CM(1).C2C(2).DEBUG.RX.CDR_HOLD;
      reg_data(3078)(17)  <= DEFAULT_CM_CTRL_t.CM(1).C2C(2).DEBUG.RX.DFE_LPM_RESET;
      reg_data(3078)(18)  <= DEFAULT_CM_CTRL_t.CM(1).C2C(2).DEBUG.RX.LPM_EN;
      reg_data(3078)(23)  <= DEFAULT_CM_CTRL_t.CM(1).C2C(2).DEBUG.RX.PCS_RESET;
      reg_data(3078)(24)  <= DEFAULT_CM_CTRL_t.CM(1).C2C(2).DEBUG.RX.PMA_RESET;
      reg_data(3078)(25)  <= DEFAULT_CM_CTRL_t.CM(1).C2C(2).DEBUG.RX.PRBS_CNT_RST;
      reg_data(3078)(29 downto 26)  <= DEFAULT_CM_CTRL_t.CM(1).C2C(2).DEBUG.RX.PRBS_SEL;
      reg_data(3079)( 2 downto  0)  <= DEFAULT_CM_CTRL_t.CM(1).C2C(2).DEBUG.RX.RATE;
      reg_data(3080)( 7)  <= DEFAULT_CM_CTRL_t.CM(1).C2C(2).DEBUG.TX.INHIBIT;
      reg_data(3080)(15)  <= DEFAULT_CM_CTRL_t.CM(1).C2C(2).DEBUG.TX.PCS_RESET;
      reg_data(3080)(16)  <= DEFAULT_CM_CTRL_t.CM(1).C2C(2).DEBUG.TX.PMA_RESET;
      reg_data(3080)(17)  <= DEFAULT_CM_CTRL_t.CM(1).C2C(2).DEBUG.TX.POLARITY;
      reg_data(3080)(22 downto 18)  <= DEFAULT_CM_CTRL_t.CM(1).C2C(2).DEBUG.TX.POST_CURSOR;
      reg_data(3080)(23)  <= DEFAULT_CM_CTRL_t.CM(1).C2C(2).DEBUG.TX.PRBS_FORCE_ERR;
      reg_data(3080)(31 downto 27)  <= DEFAULT_CM_CTRL_t.CM(1).C2C(2).DEBUG.TX.PRE_CURSOR;
      reg_data(3081)( 3 downto  0)  <= DEFAULT_CM_CTRL_t.CM(1).C2C(2).DEBUG.TX.PRBS_SEL;
      reg_data(3081)( 8 downto  4)  <= DEFAULT_CM_CTRL_t.CM(1).C2C(2).DEBUG.TX.DIFF_CTRL;
      reg_data(3096)( 0)  <= DEFAULT_CM_CTRL_t.CM(1).C2C(2).COUNTERS.RESET_COUNTERS;
      reg_data(3121)(23 downto  0)  <= DEFAULT_CM_CTRL_t.CM(1).C2C(2).PHY_READ_TIME;
      reg_data(3121)(24)  <= DEFAULT_CM_CTRL_t.CM(1).C2C(2).ENABLE_PHY_CTRL;
      reg_data(3122)(19 downto  0)  <= DEFAULT_CM_CTRL_t.CM(1).C2C(2).PHY_LANE_STABLE;
      reg_data(3123)( 7 downto  0)  <= DEFAULT_CM_CTRL_t.CM(1).C2C(2).PHY_LANE_ERRORS_TO_RESET;
      reg_data(3124)(31 downto  0)  <= DEFAULT_CM_CTRL_t.CM(1).C2C(2).PHY_MAX_SOFT_ERROR_RATE;
      reg_data(3125)(31 downto  0)  <= DEFAULT_CM_CTRL_t.CM(1).C2C(2).PHY_MAX_HARD_ERROR_RATE;
      reg_data(4096)( 0)  <= DEFAULT_CM_CTRL_t.CM(1).CTRL.ENABLE_UC;
      reg_data(4096)( 1)  <= DEFAULT_CM_CTRL_t.CM(1).CTRL.ENABLE_PWR;
      reg_data(4096)( 2)  <= DEFAULT_CM_CTRL_t.CM(1).CTRL.OVERRIDE_PWR_GOOD;
      reg_data(4096)( 8)  <= DEFAULT_CM_CTRL_t.CM(1).CTRL.ERROR_STATE_RESET;
      reg_data(4208)( 7 downto  0)  <= DEFAULT_CM_CTRL_t.CM(1).MONITOR.COUNT_16X_BAUD;
      reg_data(4208)(16)  <= DEFAULT_CM_CTRL_t.CM(1).MONITOR.ENABLE;
      reg_data(4214)( 0)  <= DEFAULT_CM_CTRL_t.CM(1).MONITOR.ERRORS.RESET;
      reg_data(4223)(31 downto  0)  <= DEFAULT_CM_CTRL_t.CM(1).MONITOR.SM_TIMEOUT;
      reg_data(5888)( 0)  <= DEFAULT_CM_CTRL_t.CM(1).PB.RESET;
      reg_data(5889)(31 downto  0)  <= DEFAULT_CM_CTRL_t.CM(1).PB.IRQ_COUNT;
      reg_data(9216)( 5)  <= DEFAULT_CM_CTRL_t.CM(2).C2C(1).STATUS.INITIALIZE;
      reg_data(9220)(22)  <= DEFAULT_CM_CTRL_t.CM(2).C2C(1).DEBUG.EYESCAN_RESET;
      reg_data(9220)(23)  <= DEFAULT_CM_CTRL_t.CM(2).C2C(1).DEBUG.EYESCAN_TRIGGER;
      reg_data(9221)(15 downto  0)  <= DEFAULT_CM_CTRL_t.CM(2).C2C(1).DEBUG.PCS_RSV_DIN;
      reg_data(9222)(12)  <= DEFAULT_CM_CTRL_t.CM(2).C2C(1).DEBUG.RX.BUF_RESET;
      reg_data(9222)(13)  <= DEFAULT_CM_CTRL_t.CM(2).C2C(1).DEBUG.RX.CDR_HOLD;
      reg_data(9222)(17)  <= DEFAULT_CM_CTRL_t.CM(2).C2C(1).DEBUG.RX.DFE_LPM_RESET;
      reg_data(9222)(18)  <= DEFAULT_CM_CTRL_t.CM(2).C2C(1).DEBUG.RX.LPM_EN;
      reg_data(9222)(23)  <= DEFAULT_CM_CTRL_t.CM(2).C2C(1).DEBUG.RX.PCS_RESET;
      reg_data(9222)(24)  <= DEFAULT_CM_CTRL_t.CM(2).C2C(1).DEBUG.RX.PMA_RESET;
      reg_data(9222)(25)  <= DEFAULT_CM_CTRL_t.CM(2).C2C(1).DEBUG.RX.PRBS_CNT_RST;
      reg_data(9222)(29 downto 26)  <= DEFAULT_CM_CTRL_t.CM(2).C2C(1).DEBUG.RX.PRBS_SEL;
      reg_data(9223)( 2 downto  0)  <= DEFAULT_CM_CTRL_t.CM(2).C2C(1).DEBUG.RX.RATE;
      reg_data(9224)( 7)  <= DEFAULT_CM_CTRL_t.CM(2).C2C(1).DEBUG.TX.INHIBIT;
      reg_data(9224)(15)  <= DEFAULT_CM_CTRL_t.CM(2).C2C(1).DEBUG.TX.PCS_RESET;
      reg_data(9224)(16)  <= DEFAULT_CM_CTRL_t.CM(2).C2C(1).DEBUG.TX.PMA_RESET;
      reg_data(9224)(17)  <= DEFAULT_CM_CTRL_t.CM(2).C2C(1).DEBUG.TX.POLARITY;
      reg_data(9224)(22 downto 18)  <= DEFAULT_CM_CTRL_t.CM(2).C2C(1).DEBUG.TX.POST_CURSOR;
      reg_data(9224)(23)  <= DEFAULT_CM_CTRL_t.CM(2).C2C(1).DEBUG.TX.PRBS_FORCE_ERR;
      reg_data(9224)(31 downto 27)  <= DEFAULT_CM_CTRL_t.CM(2).C2C(1).DEBUG.TX.PRE_CURSOR;
      reg_data(9225)( 3 downto  0)  <= DEFAULT_CM_CTRL_t.CM(2).C2C(1).DEBUG.TX.PRBS_SEL;
      reg_data(9225)( 8 downto  4)  <= DEFAULT_CM_CTRL_t.CM(2).C2C(1).DEBUG.TX.DIFF_CTRL;
      reg_data(9240)( 0)  <= DEFAULT_CM_CTRL_t.CM(2).C2C(1).COUNTERS.RESET_COUNTERS;
      reg_data(9265)(23 downto  0)  <= DEFAULT_CM_CTRL_t.CM(2).C2C(1).PHY_READ_TIME;
      reg_data(9265)(24)  <= DEFAULT_CM_CTRL_t.CM(2).C2C(1).ENABLE_PHY_CTRL;
      reg_data(9266)(19 downto  0)  <= DEFAULT_CM_CTRL_t.CM(2).C2C(1).PHY_LANE_STABLE;
      reg_data(9267)( 7 downto  0)  <= DEFAULT_CM_CTRL_t.CM(2).C2C(1).PHY_LANE_ERRORS_TO_RESET;
      reg_data(9268)(31 downto  0)  <= DEFAULT_CM_CTRL_t.CM(2).C2C(1).PHY_MAX_SOFT_ERROR_RATE;
      reg_data(9269)(31 downto  0)  <= DEFAULT_CM_CTRL_t.CM(2).C2C(1).PHY_MAX_HARD_ERROR_RATE;
      reg_data(11264)( 5)  <= DEFAULT_CM_CTRL_t.CM(2).C2C(2).STATUS.INITIALIZE;
      reg_data(11268)(22)  <= DEFAULT_CM_CTRL_t.CM(2).C2C(2).DEBUG.EYESCAN_RESET;
      reg_data(11268)(23)  <= DEFAULT_CM_CTRL_t.CM(2).C2C(2).DEBUG.EYESCAN_TRIGGER;
      reg_data(11269)(15 downto  0)  <= DEFAULT_CM_CTRL_t.CM(2).C2C(2).DEBUG.PCS_RSV_DIN;
      reg_data(11270)(12)  <= DEFAULT_CM_CTRL_t.CM(2).C2C(2).DEBUG.RX.BUF_RESET;
      reg_data(11270)(13)  <= DEFAULT_CM_CTRL_t.CM(2).C2C(2).DEBUG.RX.CDR_HOLD;
      reg_data(11270)(17)  <= DEFAULT_CM_CTRL_t.CM(2).C2C(2).DEBUG.RX.DFE_LPM_RESET;
      reg_data(11270)(18)  <= DEFAULT_CM_CTRL_t.CM(2).C2C(2).DEBUG.RX.LPM_EN;
      reg_data(11270)(23)  <= DEFAULT_CM_CTRL_t.CM(2).C2C(2).DEBUG.RX.PCS_RESET;
      reg_data(11270)(24)  <= DEFAULT_CM_CTRL_t.CM(2).C2C(2).DEBUG.RX.PMA_RESET;
      reg_data(11270)(25)  <= DEFAULT_CM_CTRL_t.CM(2).C2C(2).DEBUG.RX.PRBS_CNT_RST;
      reg_data(11270)(29 downto 26)  <= DEFAULT_CM_CTRL_t.CM(2).C2C(2).DEBUG.RX.PRBS_SEL;
      reg_data(11271)( 2 downto  0)  <= DEFAULT_CM_CTRL_t.CM(2).C2C(2).DEBUG.RX.RATE;
      reg_data(11272)( 7)  <= DEFAULT_CM_CTRL_t.CM(2).C2C(2).DEBUG.TX.INHIBIT;
      reg_data(11272)(15)  <= DEFAULT_CM_CTRL_t.CM(2).C2C(2).DEBUG.TX.PCS_RESET;
      reg_data(11272)(16)  <= DEFAULT_CM_CTRL_t.CM(2).C2C(2).DEBUG.TX.PMA_RESET;
      reg_data(11272)(17)  <= DEFAULT_CM_CTRL_t.CM(2).C2C(2).DEBUG.TX.POLARITY;
      reg_data(11272)(22 downto 18)  <= DEFAULT_CM_CTRL_t.CM(2).C2C(2).DEBUG.TX.POST_CURSOR;
      reg_data(11272)(23)  <= DEFAULT_CM_CTRL_t.CM(2).C2C(2).DEBUG.TX.PRBS_FORCE_ERR;
      reg_data(11272)(31 downto 27)  <= DEFAULT_CM_CTRL_t.CM(2).C2C(2).DEBUG.TX.PRE_CURSOR;
      reg_data(11273)( 3 downto  0)  <= DEFAULT_CM_CTRL_t.CM(2).C2C(2).DEBUG.TX.PRBS_SEL;
      reg_data(11273)( 8 downto  4)  <= DEFAULT_CM_CTRL_t.CM(2).C2C(2).DEBUG.TX.DIFF_CTRL;
      reg_data(11288)( 0)  <= DEFAULT_CM_CTRL_t.CM(2).C2C(2).COUNTERS.RESET_COUNTERS;
      reg_data(11313)(23 downto  0)  <= DEFAULT_CM_CTRL_t.CM(2).C2C(2).PHY_READ_TIME;
      reg_data(11313)(24)  <= DEFAULT_CM_CTRL_t.CM(2).C2C(2).ENABLE_PHY_CTRL;
      reg_data(11314)(19 downto  0)  <= DEFAULT_CM_CTRL_t.CM(2).C2C(2).PHY_LANE_STABLE;
      reg_data(11315)( 7 downto  0)  <= DEFAULT_CM_CTRL_t.CM(2).C2C(2).PHY_LANE_ERRORS_TO_RESET;
      reg_data(11316)(31 downto  0)  <= DEFAULT_CM_CTRL_t.CM(2).C2C(2).PHY_MAX_SOFT_ERROR_RATE;
      reg_data(11317)(31 downto  0)  <= DEFAULT_CM_CTRL_t.CM(2).C2C(2).PHY_MAX_HARD_ERROR_RATE;
      reg_data(12288)( 0)  <= DEFAULT_CM_CTRL_t.CM(2).CTRL.ENABLE_UC;
      reg_data(12288)( 1)  <= DEFAULT_CM_CTRL_t.CM(2).CTRL.ENABLE_PWR;
      reg_data(12288)( 2)  <= DEFAULT_CM_CTRL_t.CM(2).CTRL.OVERRIDE_PWR_GOOD;
      reg_data(12288)( 8)  <= DEFAULT_CM_CTRL_t.CM(2).CTRL.ERROR_STATE_RESET;
      reg_data(12400)( 7 downto  0)  <= DEFAULT_CM_CTRL_t.CM(2).MONITOR.COUNT_16X_BAUD;
      reg_data(12400)(16)  <= DEFAULT_CM_CTRL_t.CM(2).MONITOR.ENABLE;
      reg_data(12406)( 0)  <= DEFAULT_CM_CTRL_t.CM(2).MONITOR.ERRORS.RESET;
      reg_data(12415)(31 downto  0)  <= DEFAULT_CM_CTRL_t.CM(2).MONITOR.SM_TIMEOUT;
      reg_data(14080)( 0)  <= DEFAULT_CM_CTRL_t.CM(2).PB.RESET;
      reg_data(14081)(31 downto  0)  <= DEFAULT_CM_CTRL_t.CM(2).PB.IRQ_COUNT;
      reg_data(18448)( 0)  <= DEFAULT_CM_CTRL_t.C2C_RESET;

    elsif clk_axi'event and clk_axi = '1' then  -- rising clock edge
      Ctrl.CM(1).C2C(1).DEBUG.EYESCAN_RESET <= '0';
      Ctrl.CM(1).C2C(1).DEBUG.RX.BUF_RESET <= '0';
      Ctrl.CM(1).C2C(1).DEBUG.RX.DFE_LPM_RESET <= '0';
      Ctrl.CM(1).C2C(1).DEBUG.RX.PCS_RESET <= '0';
      Ctrl.CM(1).C2C(1).DEBUG.RX.PMA_RESET <= '0';
      Ctrl.CM(1).C2C(1).DEBUG.TX.PCS_RESET <= '0';
      Ctrl.CM(1).C2C(1).DEBUG.TX.PMA_RESET <= '0';
      Ctrl.CM(1).C2C(1).COUNTERS.RESET_COUNTERS <= '0';
      Ctrl.CM(1).C2C(2).DEBUG.EYESCAN_RESET <= '0';
      Ctrl.CM(1).C2C(2).DEBUG.RX.BUF_RESET <= '0';
      Ctrl.CM(1).C2C(2).DEBUG.RX.DFE_LPM_RESET <= '0';
      Ctrl.CM(1).C2C(2).DEBUG.RX.PCS_RESET <= '0';
      Ctrl.CM(1).C2C(2).DEBUG.RX.PMA_RESET <= '0';
      Ctrl.CM(1).C2C(2).DEBUG.TX.PCS_RESET <= '0';
      Ctrl.CM(1).C2C(2).DEBUG.TX.PMA_RESET <= '0';
      Ctrl.CM(1).C2C(2).COUNTERS.RESET_COUNTERS <= '0';
      Ctrl.CM(2).C2C(1).DEBUG.EYESCAN_RESET <= '0';
      Ctrl.CM(2).C2C(1).DEBUG.RX.BUF_RESET <= '0';
      Ctrl.CM(2).C2C(1).DEBUG.RX.DFE_LPM_RESET <= '0';
      Ctrl.CM(2).C2C(1).DEBUG.RX.PCS_RESET <= '0';
      Ctrl.CM(2).C2C(1).DEBUG.RX.PMA_RESET <= '0';
      Ctrl.CM(2).C2C(1).DEBUG.TX.PCS_RESET <= '0';
      Ctrl.CM(2).C2C(1).DEBUG.TX.PMA_RESET <= '0';
      Ctrl.CM(2).C2C(1).COUNTERS.RESET_COUNTERS <= '0';
      Ctrl.CM(2).C2C(2).DEBUG.EYESCAN_RESET <= '0';
      Ctrl.CM(2).C2C(2).DEBUG.RX.BUF_RESET <= '0';
      Ctrl.CM(2).C2C(2).DEBUG.RX.DFE_LPM_RESET <= '0';
      Ctrl.CM(2).C2C(2).DEBUG.RX.PCS_RESET <= '0';
      Ctrl.CM(2).C2C(2).DEBUG.RX.PMA_RESET <= '0';
      Ctrl.CM(2).C2C(2).DEBUG.TX.PCS_RESET <= '0';
      Ctrl.CM(2).C2C(2).DEBUG.TX.PMA_RESET <= '0';
      Ctrl.CM(2).C2C(2).COUNTERS.RESET_COUNTERS <= '0';
      Ctrl.C2C_RESET <= '0';
      

      
      if localWrEn = '1' then
        case to_integer(unsigned(localAddress(14 downto 0))) is
        when 1024 => --0x400
          reg_data(1024)( 5)                         <=  localWrData( 5);                --C2C initialize
        when 1028 => --0x404
          Ctrl.CM(1).C2C(1).DEBUG.EYESCAN_RESET      <=  localWrData(22);               
          reg_data(1028)(23)                         <=  localWrData(23);                --DEBUG eyescan trigger
        when 1029 => --0x405
          reg_data(1029)(15 downto  0)               <=  localWrData(15 downto  0);      --bit 2 is DRP uber reset
        when 1030 => --0x406
          Ctrl.CM(1).C2C(1).DEBUG.RX.BUF_RESET       <=  localWrData(12);               
          Ctrl.CM(1).C2C(1).DEBUG.RX.DFE_LPM_RESET   <=  localWrData(17);               
          Ctrl.CM(1).C2C(1).DEBUG.RX.PCS_RESET       <=  localWrData(23);               
          Ctrl.CM(1).C2C(1).DEBUG.RX.PMA_RESET       <=  localWrData(24);               
          reg_data(1030)(13)                         <=  localWrData(13);                --DEBUG rx CDR hold
          reg_data(1030)(18)                         <=  localWrData(18);                --DEBUG rx LPM ENABLE
          reg_data(1030)(25)                         <=  localWrData(25);                --DEBUG rx PRBS counter reset
          reg_data(1030)(29 downto 26)               <=  localWrData(29 downto 26);      --DEBUG rx PRBS select
        when 1031 => --0x407
          reg_data(1031)( 2 downto  0)               <=  localWrData( 2 downto  0);      --DEBUG rx rate
        when 1032 => --0x408
          Ctrl.CM(1).C2C(1).DEBUG.TX.PCS_RESET       <=  localWrData(15);               
          Ctrl.CM(1).C2C(1).DEBUG.TX.PMA_RESET       <=  localWrData(16);               
          reg_data(1032)( 7)                         <=  localWrData( 7);                --DEBUG tx inhibit
          reg_data(1032)(17)                         <=  localWrData(17);                --DEBUG tx polarity
          reg_data(1032)(22 downto 18)               <=  localWrData(22 downto 18);      --DEBUG post cursor
          reg_data(1032)(23)                         <=  localWrData(23);                --DEBUG force PRBS error
          reg_data(1032)(31 downto 27)               <=  localWrData(31 downto 27);      --DEBUG pre cursor
        when 1033 => --0x409
          reg_data(1033)( 3 downto  0)               <=  localWrData( 3 downto  0);      --DEBUG PRBS select
          reg_data(1033)( 8 downto  4)               <=  localWrData( 8 downto  4);      --DEBUG tx diff control
        when 1048 => --0x418
          Ctrl.CM(1).C2C(1).COUNTERS.RESET_COUNTERS  <=  localWrData( 0);               
        when 1073 => --0x431
          reg_data(1073)(23 downto  0)               <=  localWrData(23 downto  0);      --Time spent waiting for phylane to stabilize
          reg_data(1073)(24)                         <=  localWrData(24);                --phy_lane_control is enabled
        when 1074 => --0x432
          reg_data(1074)(19 downto  0)               <=  localWrData(19 downto  0);      --Contious phy_lane_up signals required to lock phylane control
        when 1075 => --0x433
          reg_data(1075)( 7 downto  0)               <=  localWrData( 7 downto  0);      --Number of failures before we reset the pma
        when 1076 => --0x434
          reg_data(1076)(31 downto  0)               <=  localWrData(31 downto  0);      --Max soft error rate
        when 1077 => --0x435
          reg_data(1077)(31 downto  0)               <=  localWrData(31 downto  0);      --Max hard error rate
        when 3072 => --0xc00
          reg_data(3072)( 5)                         <=  localWrData( 5);                --C2C initialize
        when 3076 => --0xc04
          Ctrl.CM(1).C2C(2).DEBUG.EYESCAN_RESET      <=  localWrData(22);               
          reg_data(3076)(23)                         <=  localWrData(23);                --DEBUG eyescan trigger
        when 3077 => --0xc05
          reg_data(3077)(15 downto  0)               <=  localWrData(15 downto  0);      --bit 2 is DRP uber reset
        when 3078 => --0xc06
          Ctrl.CM(1).C2C(2).DEBUG.RX.BUF_RESET       <=  localWrData(12);               
          Ctrl.CM(1).C2C(2).DEBUG.RX.DFE_LPM_RESET   <=  localWrData(17);               
          Ctrl.CM(1).C2C(2).DEBUG.RX.PCS_RESET       <=  localWrData(23);               
          Ctrl.CM(1).C2C(2).DEBUG.RX.PMA_RESET       <=  localWrData(24);               
          reg_data(3078)(13)                         <=  localWrData(13);                --DEBUG rx CDR hold
          reg_data(3078)(18)                         <=  localWrData(18);                --DEBUG rx LPM ENABLE
          reg_data(3078)(25)                         <=  localWrData(25);                --DEBUG rx PRBS counter reset
          reg_data(3078)(29 downto 26)               <=  localWrData(29 downto 26);      --DEBUG rx PRBS select
        when 3079 => --0xc07
          reg_data(3079)( 2 downto  0)               <=  localWrData( 2 downto  0);      --DEBUG rx rate
        when 3080 => --0xc08
          Ctrl.CM(1).C2C(2).DEBUG.TX.PCS_RESET       <=  localWrData(15);               
          Ctrl.CM(1).C2C(2).DEBUG.TX.PMA_RESET       <=  localWrData(16);               
          reg_data(3080)( 7)                         <=  localWrData( 7);                --DEBUG tx inhibit
          reg_data(3080)(17)                         <=  localWrData(17);                --DEBUG tx polarity
          reg_data(3080)(22 downto 18)               <=  localWrData(22 downto 18);      --DEBUG post cursor
          reg_data(3080)(23)                         <=  localWrData(23);                --DEBUG force PRBS error
          reg_data(3080)(31 downto 27)               <=  localWrData(31 downto 27);      --DEBUG pre cursor
        when 3081 => --0xc09
          reg_data(3081)( 3 downto  0)               <=  localWrData( 3 downto  0);      --DEBUG PRBS select
          reg_data(3081)( 8 downto  4)               <=  localWrData( 8 downto  4);      --DEBUG tx diff control
        when 3096 => --0xc18
          Ctrl.CM(1).C2C(2).COUNTERS.RESET_COUNTERS  <=  localWrData( 0);               
        when 3121 => --0xc31
          reg_data(3121)(23 downto  0)               <=  localWrData(23 downto  0);      --Time spent waiting for phylane to stabilize
          reg_data(3121)(24)                         <=  localWrData(24);                --phy_lane_control is enabled
        when 3122 => --0xc32
          reg_data(3122)(19 downto  0)               <=  localWrData(19 downto  0);      --Contious phy_lane_up signals required to lock phylane control
        when 3123 => --0xc33
          reg_data(3123)( 7 downto  0)               <=  localWrData( 7 downto  0);      --Number of failures before we reset the pma
        when 3124 => --0xc34
          reg_data(3124)(31 downto  0)               <=  localWrData(31 downto  0);      --Max soft error rate
        when 3125 => --0xc35
          reg_data(3125)(31 downto  0)               <=  localWrData(31 downto  0);      --Max hard error rate
        when 4096 => --0x1000
          reg_data(4096)( 0)                         <=  localWrData( 0);                --Tell CM uC to power-up
          reg_data(4096)( 1)                         <=  localWrData( 1);                --Tell CM uC to power-up the rest of the CM
          reg_data(4096)( 2)                         <=  localWrData( 2);                --Ignore power good from CM
          reg_data(4096)( 8)                         <=  localWrData( 8);                --CM power is good
        when 4208 => --0x1070
          reg_data(4208)( 7 downto  0)               <=  localWrData( 7 downto  0);      --Baud 16x counter.  Set by 50Mhz/(baudrate(hz) * 16). Nominally 27
          reg_data(4208)(16)                         <=  localWrData(16);                --Enable readout
        when 4214 => --0x1076
          reg_data(4214)( 0)                         <=  localWrData( 0);                --Reset monitoring error counters
        when 4223 => --0x107f
          reg_data(4223)(31 downto  0)               <=  localWrData(31 downto  0);      --Count to wait for in state machine before timing out (50Mhz clk)
        when 5888 => --0x1700
          reg_data(5888)( 0)                         <=  localWrData( 0);                --
        when 5889 => --0x1701
          reg_data(5889)(31 downto  0)               <=  localWrData(31 downto  0);      --
        when 9216 => --0x2400
          reg_data(9216)( 5)                         <=  localWrData( 5);                --C2C initialize
        when 9220 => --0x2404
          Ctrl.CM(2).C2C(1).DEBUG.EYESCAN_RESET      <=  localWrData(22);               
          reg_data(9220)(23)                         <=  localWrData(23);                --DEBUG eyescan trigger
        when 9221 => --0x2405
          reg_data(9221)(15 downto  0)               <=  localWrData(15 downto  0);      --bit 2 is DRP uber reset
        when 9222 => --0x2406
          Ctrl.CM(2).C2C(1).DEBUG.RX.BUF_RESET       <=  localWrData(12);               
          Ctrl.CM(2).C2C(1).DEBUG.RX.DFE_LPM_RESET   <=  localWrData(17);               
          Ctrl.CM(2).C2C(1).DEBUG.RX.PCS_RESET       <=  localWrData(23);               
          Ctrl.CM(2).C2C(1).DEBUG.RX.PMA_RESET       <=  localWrData(24);               
          reg_data(9222)(13)                         <=  localWrData(13);                --DEBUG rx CDR hold
          reg_data(9222)(18)                         <=  localWrData(18);                --DEBUG rx LPM ENABLE
          reg_data(9222)(25)                         <=  localWrData(25);                --DEBUG rx PRBS counter reset
          reg_data(9222)(29 downto 26)               <=  localWrData(29 downto 26);      --DEBUG rx PRBS select
        when 9223 => --0x2407
          reg_data(9223)( 2 downto  0)               <=  localWrData( 2 downto  0);      --DEBUG rx rate
        when 9224 => --0x2408
          Ctrl.CM(2).C2C(1).DEBUG.TX.PCS_RESET       <=  localWrData(15);               
          Ctrl.CM(2).C2C(1).DEBUG.TX.PMA_RESET       <=  localWrData(16);               
          reg_data(9224)( 7)                         <=  localWrData( 7);                --DEBUG tx inhibit
          reg_data(9224)(17)                         <=  localWrData(17);                --DEBUG tx polarity
          reg_data(9224)(22 downto 18)               <=  localWrData(22 downto 18);      --DEBUG post cursor
          reg_data(9224)(23)                         <=  localWrData(23);                --DEBUG force PRBS error
          reg_data(9224)(31 downto 27)               <=  localWrData(31 downto 27);      --DEBUG pre cursor
        when 9225 => --0x2409
          reg_data(9225)( 3 downto  0)               <=  localWrData( 3 downto  0);      --DEBUG PRBS select
          reg_data(9225)( 8 downto  4)               <=  localWrData( 8 downto  4);      --DEBUG tx diff control
        when 9240 => --0x2418
          Ctrl.CM(2).C2C(1).COUNTERS.RESET_COUNTERS  <=  localWrData( 0);               
        when 9265 => --0x2431
          reg_data(9265)(23 downto  0)               <=  localWrData(23 downto  0);      --Time spent waiting for phylane to stabilize
          reg_data(9265)(24)                         <=  localWrData(24);                --phy_lane_control is enabled
        when 9266 => --0x2432
          reg_data(9266)(19 downto  0)               <=  localWrData(19 downto  0);      --Contious phy_lane_up signals required to lock phylane control
        when 9267 => --0x2433
          reg_data(9267)( 7 downto  0)               <=  localWrData( 7 downto  0);      --Number of failures before we reset the pma
        when 9268 => --0x2434
          reg_data(9268)(31 downto  0)               <=  localWrData(31 downto  0);      --Max soft error rate
        when 9269 => --0x2435
          reg_data(9269)(31 downto  0)               <=  localWrData(31 downto  0);      --Max hard error rate
        when 11264 => --0x2c00
          reg_data(11264)( 5)                        <=  localWrData( 5);                --C2C initialize
        when 11268 => --0x2c04
          Ctrl.CM(2).C2C(2).DEBUG.EYESCAN_RESET      <=  localWrData(22);               
          reg_data(11268)(23)                        <=  localWrData(23);                --DEBUG eyescan trigger
        when 11269 => --0x2c05
          reg_data(11269)(15 downto  0)              <=  localWrData(15 downto  0);      --bit 2 is DRP uber reset
        when 11270 => --0x2c06
          Ctrl.CM(2).C2C(2).DEBUG.RX.BUF_RESET       <=  localWrData(12);               
          Ctrl.CM(2).C2C(2).DEBUG.RX.DFE_LPM_RESET   <=  localWrData(17);               
          Ctrl.CM(2).C2C(2).DEBUG.RX.PCS_RESET       <=  localWrData(23);               
          Ctrl.CM(2).C2C(2).DEBUG.RX.PMA_RESET       <=  localWrData(24);               
          reg_data(11270)(13)                        <=  localWrData(13);                --DEBUG rx CDR hold
          reg_data(11270)(18)                        <=  localWrData(18);                --DEBUG rx LPM ENABLE
          reg_data(11270)(25)                        <=  localWrData(25);                --DEBUG rx PRBS counter reset
          reg_data(11270)(29 downto 26)              <=  localWrData(29 downto 26);      --DEBUG rx PRBS select
        when 11271 => --0x2c07
          reg_data(11271)( 2 downto  0)              <=  localWrData( 2 downto  0);      --DEBUG rx rate
        when 11272 => --0x2c08
          Ctrl.CM(2).C2C(2).DEBUG.TX.PCS_RESET       <=  localWrData(15);               
          Ctrl.CM(2).C2C(2).DEBUG.TX.PMA_RESET       <=  localWrData(16);               
          reg_data(11272)( 7)                        <=  localWrData( 7);                --DEBUG tx inhibit
          reg_data(11272)(17)                        <=  localWrData(17);                --DEBUG tx polarity
          reg_data(11272)(22 downto 18)              <=  localWrData(22 downto 18);      --DEBUG post cursor
          reg_data(11272)(23)                        <=  localWrData(23);                --DEBUG force PRBS error
          reg_data(11272)(31 downto 27)              <=  localWrData(31 downto 27);      --DEBUG pre cursor
        when 11273 => --0x2c09
          reg_data(11273)( 3 downto  0)              <=  localWrData( 3 downto  0);      --DEBUG PRBS select
          reg_data(11273)( 8 downto  4)              <=  localWrData( 8 downto  4);      --DEBUG tx diff control
        when 11288 => --0x2c18
          Ctrl.CM(2).C2C(2).COUNTERS.RESET_COUNTERS  <=  localWrData( 0);               
        when 11313 => --0x2c31
          reg_data(11313)(23 downto  0)              <=  localWrData(23 downto  0);      --Time spent waiting for phylane to stabilize
          reg_data(11313)(24)                        <=  localWrData(24);                --phy_lane_control is enabled
        when 11314 => --0x2c32
          reg_data(11314)(19 downto  0)              <=  localWrData(19 downto  0);      --Contious phy_lane_up signals required to lock phylane control
        when 11315 => --0x2c33
          reg_data(11315)( 7 downto  0)              <=  localWrData( 7 downto  0);      --Number of failures before we reset the pma
        when 11316 => --0x2c34
          reg_data(11316)(31 downto  0)              <=  localWrData(31 downto  0);      --Max soft error rate
        when 11317 => --0x2c35
          reg_data(11317)(31 downto  0)              <=  localWrData(31 downto  0);      --Max hard error rate
        when 12288 => --0x3000
          reg_data(12288)( 0)                        <=  localWrData( 0);                --Tell CM uC to power-up
          reg_data(12288)( 1)                        <=  localWrData( 1);                --Tell CM uC to power-up the rest of the CM
          reg_data(12288)( 2)                        <=  localWrData( 2);                --Ignore power good from CM
          reg_data(12288)( 8)                        <=  localWrData( 8);                --CM power is good
        when 12400 => --0x3070
          reg_data(12400)( 7 downto  0)              <=  localWrData( 7 downto  0);      --Baud 16x counter.  Set by 50Mhz/(baudrate(hz) * 16). Nominally 27
          reg_data(12400)(16)                        <=  localWrData(16);                --Enable readout
        when 12406 => --0x3076
          reg_data(12406)( 0)                        <=  localWrData( 0);                --Reset monitoring error counters
        when 12415 => --0x307f
          reg_data(12415)(31 downto  0)              <=  localWrData(31 downto  0);      --Count to wait for in state machine before timing out (50Mhz clk)
        when 14080 => --0x3700
          reg_data(14080)( 0)                        <=  localWrData( 0);                --
        when 14081 => --0x3701
          reg_data(14081)(31 downto  0)              <=  localWrData(31 downto  0);      --
        when 18448 => --0x4810
          Ctrl.C2C_RESET                             <=  localWrData( 0);               

          when others => null;
        end case;
      end if;
    end if;
  end process reg_writes;



  
  -------------------------------------------------------------------------------
  -- BRAM decoding
  -------------------------------------------------------------------------------
  -------------------------------------------------------------------------------

  BRAM_reads: for iBRAM in 0 to BRAM_COUNT-1 generate
    BRAM_read: process (clk_axi,reset_axi_n) is
    begin  -- process BRAM_reads
      if reset_axi_n = '0' then
--        latchBRAM(iBRAM) <= '0';
        BRAM_MOSI(iBRAM).enable  <= '0';
      elsif clk_axi'event and clk_axi = '1' then  -- rising clock edge
        BRAM_MOSI(iBRAM).address <= localAddress;
--        latchBRAM(iBRAM) <= '0';
        BRAM_MOSI(iBRAM).enable  <= '0';
        if localAddress(14 downto BRAM_range(iBRAM)) = BRAM_addr(iBRAM)(14 downto BRAM_range(iBRAM)) then
--          latchBRAM(iBRAM) <= localRdReq;
--          BRAM_MOSI(iBRAM).enable  <= '1';
          BRAM_MOSI(iBRAM).enable  <= localRdReq;
        end if;
      end if;
    end process BRAM_read;
  end generate BRAM_reads;



  BRAM_asyncs: for iBRAM in 0 to BRAM_COUNT-1 generate
    BRAM_MOSI(iBRAM).clk     <= clk_axi;
    BRAM_MOSI(iBRAM).wr_data <= localWrData;
  end generate BRAM_asyncs;
  
  Ctrl.CM(1).C2C(1).DRP.clk       <=  BRAM_MOSI(0).clk;
  Ctrl.CM(1).C2C(1).DRP.reset       <=  BRAM_MOSI(0).reset;
  Ctrl.CM(1).C2C(1).DRP.enable    <=  BRAM_MOSI(0).enable;
  Ctrl.CM(1).C2C(1).DRP.wr_enable <=  BRAM_MOSI(0).wr_enable;
  Ctrl.CM(1).C2C(1).DRP.address   <=  BRAM_MOSI(0).address(10-1 downto 0);
  Ctrl.CM(1).C2C(1).DRP.wr_data   <=  BRAM_MOSI(0).wr_data(16-1 downto 0);

  Ctrl.CM(1).C2C(2).DRP.clk       <=  BRAM_MOSI(1).clk;
  Ctrl.CM(1).C2C(2).DRP.reset       <=  BRAM_MOSI(1).reset;
  Ctrl.CM(1).C2C(2).DRP.enable    <=  BRAM_MOSI(1).enable;
  Ctrl.CM(1).C2C(2).DRP.wr_enable <=  BRAM_MOSI(1).wr_enable;
  Ctrl.CM(1).C2C(2).DRP.address   <=  BRAM_MOSI(1).address(10-1 downto 0);
  Ctrl.CM(1).C2C(2).DRP.wr_data   <=  BRAM_MOSI(1).wr_data(16-1 downto 0);

  Ctrl.CM(2).C2C(1).DRP.clk       <=  BRAM_MOSI(2).clk;
  Ctrl.CM(2).C2C(1).DRP.reset       <=  BRAM_MOSI(2).reset;
  Ctrl.CM(2).C2C(1).DRP.enable    <=  BRAM_MOSI(2).enable;
  Ctrl.CM(2).C2C(1).DRP.wr_enable <=  BRAM_MOSI(2).wr_enable;
  Ctrl.CM(2).C2C(1).DRP.address   <=  BRAM_MOSI(2).address(10-1 downto 0);
  Ctrl.CM(2).C2C(1).DRP.wr_data   <=  BRAM_MOSI(2).wr_data(16-1 downto 0);

  Ctrl.CM(2).C2C(2).DRP.clk       <=  BRAM_MOSI(3).clk;
  Ctrl.CM(2).C2C(2).DRP.reset       <=  BRAM_MOSI(3).reset;
  Ctrl.CM(2).C2C(2).DRP.enable    <=  BRAM_MOSI(3).enable;
  Ctrl.CM(2).C2C(2).DRP.wr_enable <=  BRAM_MOSI(3).wr_enable;
  Ctrl.CM(2).C2C(2).DRP.address   <=  BRAM_MOSI(3).address(10-1 downto 0);
  Ctrl.CM(2).C2C(2).DRP.wr_data   <=  BRAM_MOSI(3).wr_data(16-1 downto 0);

  Ctrl.CM(1).PB.MEM.clk       <=  BRAM_MOSI(4).clk;
  Ctrl.CM(1).PB.MEM.reset       <=  BRAM_MOSI(4).reset;
  Ctrl.CM(1).PB.MEM.enable    <=  BRAM_MOSI(4).enable;
  Ctrl.CM(1).PB.MEM.wr_enable <=  BRAM_MOSI(4).wr_enable;
  Ctrl.CM(1).PB.MEM.address   <=  BRAM_MOSI(4).address(11-1 downto 0);
  Ctrl.CM(1).PB.MEM.wr_data   <=  BRAM_MOSI(4).wr_data(18-1 downto 0);

  Ctrl.CM(2).PB.MEM.clk       <=  BRAM_MOSI(5).clk;
  Ctrl.CM(2).PB.MEM.reset       <=  BRAM_MOSI(5).reset;
  Ctrl.CM(2).PB.MEM.enable    <=  BRAM_MOSI(5).enable;
  Ctrl.CM(2).PB.MEM.wr_enable <=  BRAM_MOSI(5).wr_enable;
  Ctrl.CM(2).PB.MEM.address   <=  BRAM_MOSI(5).address(11-1 downto 0);
  Ctrl.CM(2).PB.MEM.wr_data   <=  BRAM_MOSI(5).wr_data(18-1 downto 0);


  BRAM_MISO(0).rd_data(16-1 downto 0) <= Mon.CM(1).C2C(1).DRP.rd_data;
  BRAM_MISO(0).rd_data(31 downto 16) <= (others => '0');
  BRAM_MISO(0).rd_data_valid <= Mon.CM(1).C2C(1).DRP.rd_data_valid;

  BRAM_MISO(1).rd_data(16-1 downto 0) <= Mon.CM(1).C2C(2).DRP.rd_data;
  BRAM_MISO(1).rd_data(31 downto 16) <= (others => '0');
  BRAM_MISO(1).rd_data_valid <= Mon.CM(1).C2C(2).DRP.rd_data_valid;

  BRAM_MISO(2).rd_data(16-1 downto 0) <= Mon.CM(2).C2C(1).DRP.rd_data;
  BRAM_MISO(2).rd_data(31 downto 16) <= (others => '0');
  BRAM_MISO(2).rd_data_valid <= Mon.CM(2).C2C(1).DRP.rd_data_valid;

  BRAM_MISO(3).rd_data(16-1 downto 0) <= Mon.CM(2).C2C(2).DRP.rd_data;
  BRAM_MISO(3).rd_data(31 downto 16) <= (others => '0');
  BRAM_MISO(3).rd_data_valid <= Mon.CM(2).C2C(2).DRP.rd_data_valid;

  BRAM_MISO(4).rd_data(18-1 downto 0) <= Mon.CM(1).PB.MEM.rd_data;
  BRAM_MISO(4).rd_data(31 downto 18) <= (others => '0');
  BRAM_MISO(4).rd_data_valid <= Mon.CM(1).PB.MEM.rd_data_valid;

  BRAM_MISO(5).rd_data(18-1 downto 0) <= Mon.CM(2).PB.MEM.rd_data;
  BRAM_MISO(5).rd_data(31 downto 18) <= (others => '0');
  BRAM_MISO(5).rd_data_valid <= Mon.CM(2).PB.MEM.rd_data_valid;

    

  BRAM_writes: for iBRAM in 0 to BRAM_COUNT-1 generate
    BRAM_write: process (clk_axi,reset_axi_n) is    
    begin  -- process BRAM_reads
      if reset_axi_n = '0' then
        BRAM_MOSI(iBRAM).wr_enable   <= '0';
      elsif clk_axi'event and clk_axi = '1' then  -- rising clock edge
        BRAM_MOSI(iBRAM).wr_enable   <= '0';
        if localAddress(14 downto BRAM_range(iBRAM)) = BRAM_addr(iBRAM)(14 downto BRAM_range(iBRAM)) then
          BRAM_MOSI(iBRAM).wr_enable   <= localWrEn;
        end if;
      end if;
    end process BRAM_write;
  end generate BRAM_writes;


  
end architecture behavioral;