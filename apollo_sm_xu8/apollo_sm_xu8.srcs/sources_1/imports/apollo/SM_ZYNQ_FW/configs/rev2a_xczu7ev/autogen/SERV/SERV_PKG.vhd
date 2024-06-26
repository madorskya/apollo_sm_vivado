--This file was auto-generated.
--Modifications might be lost.
library IEEE;
use IEEE.std_logic_1164.all;


package SERV_CTRL is
  type SERV_SI5344_MON_t is record
    INT                        :std_logic;     -- Si5344 i2c interrupt
    LOL                        :std_logic;     -- Si5344 Loss of lock
    LOS                        :std_logic;     -- Si5344 Loss of signal
  end record SERV_SI5344_MON_t;


  type SERV_SI5344_CTRL_t is record
    OE                         :std_logic;     -- Enable Si5344 outputs
    EN                         :std_logic;     -- Power on Si5344
    FPGA_PLL_RESET             :std_logic;   
  end record SERV_SI5344_CTRL_t;


  constant DEFAULT_SERV_SI5344_CTRL_t : SERV_SI5344_CTRL_t := (
                                                               OE => '1',
                                                               EN => '1',
                                                               FPGA_PLL_RESET => '0'
                                                              );
  type SERV_TCDS_SI5344_MON_t is record
    INT                        :std_logic;     -- Si5344 i2c interrupt
    LOL                        :std_logic;     -- Si5344 Loss of lock
    LOS                        :std_logic;     -- Si5344 Loss of signal
  end record SERV_TCDS_SI5344_MON_t;


  type SERV_TCDS_SI5344_CTRL_t is record
    OE                         :std_logic;     -- Enable Si5344 outputs
    EN                         :std_logic;     -- Power on Si5344
  end record SERV_TCDS_SI5344_CTRL_t;


  constant DEFAULT_SERV_TCDS_SI5344_CTRL_t : SERV_TCDS_SI5344_CTRL_t := (
                                                                         OE => '1',
                                                                         EN => '1'
                                                                        );
  type SERV_TCDS_MON_t is record
    REFCLK_LOCKED              :std_logic;     -- TCDS refclk locked
    SI5344                     :SERV_TCDS_SI5344_MON_t;
  end record SERV_TCDS_MON_t;


  type SERV_TCDS_CTRL_t is record
    TTC_SOURCE                 :std_logic;     -- TTC source select (0:TCDS,1:TTC_FAKE
    SI5344                     :SERV_TCDS_SI5344_CTRL_t;
  end record SERV_TCDS_CTRL_t;


  constant DEFAULT_SERV_TCDS_CTRL_t : SERV_TCDS_CTRL_t := (
                                                           TTC_SOURCE => '1',
                                                           SI5344 => DEFAULT_SERV_TCDS_SI5344_CTRL_t
                                                          );
  type SERV_CLOCKING_MON_t is record
    LHC_LOS_BP                 :std_logic;     -- Backplane LHC clk LOS
    LHC_LOS_OSC                :std_logic;     -- Local Si LHC clk LOS
    HQ_LOS_BP                  :std_logic;     -- Backplane HQ clk LOS
    HQ_LOS_OSC                 :std_logic;     -- Local Si HQ clk LOS
    LHC_CLK_FREQ               :std_logic_vector(31 downto 0);  -- Measured Freq of clock
    HQ_CLK_FREQ                :std_logic_vector(31 downto 0);  -- Measured Freq of clock
    TTC_CLK_FREQ               :std_logic_vector(31 downto 0);  -- Measured Freq of clock
    AXI_CLK_FREQ               :std_logic_vector(31 downto 0);  -- Measured Freq of clock
    TCDS_CLK_FREQ              :std_logic_vector(31 downto 0);  -- Measured Freq of clock
  end record SERV_CLOCKING_MON_t;


  type SERV_CLOCKING_CTRL_t is record
    LHC_SEL                    :std_logic;     -- LHC clk source select
    LHC_CLK_IBUF_EN            :std_logic;     -- Enable FPGA IBUFDS
    HQ_SEL                     :std_logic;     -- HQ clk source select
    HQ_CLK_IBUF_EN             :std_logic;     -- Enable FPGA IBUFDS
    TTC_CLK_IBUF_EN            :std_logic;     -- Enable FPGA IBUFDS
  end record SERV_CLOCKING_CTRL_t;


  constant DEFAULT_SERV_CLOCKING_CTRL_t : SERV_CLOCKING_CTRL_t := (
                                                                   LHC_SEL => '1',
                                                                   LHC_CLK_IBUF_EN => '1',
                                                                   HQ_SEL => '1',
                                                                   HQ_CLK_IBUF_EN => '1',
                                                                   TTC_CLK_IBUF_EN => '0'
                                                                  );
  type SERV_FP_LEDS_MON_t is record
    BUTTON                     :std_logic;     -- FP button (not debounced)
    FP_SHDWN_REQ               :std_logic;     -- FP button shutdown request
  end record SERV_FP_LEDS_MON_t;


  type SERV_FP_LEDS_CTRL_t is record
    RESET                      :std_logic;     -- reset FP LEDs
    PAGE0_FORCE                :std_logic;     -- override FP LED page 0
    PAGE0_MODE                 :std_logic_vector( 2 downto 0);  -- override FP LED page 0 pattern
    PAGE0_SPEED                :std_logic_vector( 3 downto 0);  -- page 0 speed
    FORCED_PAGE                :std_logic_vector( 5 downto 0);  -- Page to display
    FORCE_PAGE                 :std_logic;                      -- Force the display of a page (override button UI)
    PAGE                       :std_logic_vector( 5 downto 0);  -- Page to display
  end record SERV_FP_LEDS_CTRL_t;


  constant DEFAULT_SERV_FP_LEDS_CTRL_t : SERV_FP_LEDS_CTRL_t := (
                                                                 RESET => '0',
                                                                 PAGE0_FORCE => '0',
                                                                 PAGE0_MODE => (others => '0'),
                                                                 PAGE0_SPEED => x"8",
                                                                 FORCED_PAGE => (others => '0'),
                                                                 FORCE_PAGE => '0',
                                                                 PAGE => (others => '0')
                                                                );
  type SERV_SWITCH_MON_t is record
    STATUS                     :std_logic_vector(15 downto 0);  -- Ethernet switch LEDs
  end record SERV_SWITCH_MON_t;


  type SERV_CPLD_FIRMWARE_MON_t is record
    DATA_VALID                 :std_logic;     -- Data from CPLD is valid
    DATA                       :std_logic_vector(31 downto 0);  -- Data from CPLD
    RAW_DATA_0                 :std_logic_vector(31 downto 0);  -- Raw from CPLD
    RAW_DATA_1                 :std_logic_vector(31 downto 0);  -- Raw from CPLD
    RAW_DATA_2                 :std_logic_vector(31 downto 0);  -- Raw from CPLD
    RAW_DATA_3                 :std_logic_vector(31 downto 0);  -- Raw from CPLD
    LIVE_DATA_0                :std_logic_vector(31 downto 0);  -- LIVE from CPLD
    LIVE_DATA_1                :std_logic_vector(31 downto 0);  -- LIVE from CPLD
    LIVE_DATA_2                :std_logic_vector(31 downto 0);  -- LIVE from CPLD
    LIVE_DATA_3                :std_logic_vector(31 downto 0);  -- LIVE from CPLD
  end record SERV_CPLD_FIRMWARE_MON_t;


  type SERV_CPLD_FIRMWARE_CTRL_t is record
    CLK_DIV                    :std_logic_vector( 7 downto 0);  -- Divide axi_clk by this for CPLD interface
  end record SERV_CPLD_FIRMWARE_CTRL_t;


  constant DEFAULT_SERV_CPLD_FIRMWARE_CTRL_t : SERV_CPLD_FIRMWARE_CTRL_t := (
                                                                             CLK_DIV => x"80"
                                                                            );
  type SERV_CPLD_MON_t is record
    FIRMWARE                   :SERV_CPLD_FIRMWARE_MON_t;
  end record SERV_CPLD_MON_t;


  type SERV_CPLD_CTRL_t is record
    ENABLE_JTAG                :std_logic;     -- Enable the JTAG lines to the CPLD
    FIRMWARE                   :SERV_CPLD_FIRMWARE_CTRL_t;
  end record SERV_CPLD_CTRL_t;


  constant DEFAULT_SERV_CPLD_CTRL_t : SERV_CPLD_CTRL_t := (
                                                           ENABLE_JTAG => '0',
                                                           FIRMWARE => DEFAULT_SERV_CPLD_FIRMWARE_CTRL_t
                                                          );
  type SERV_MISC_MON_t is record
    ETH1_CLK_FREQ              :std_logic_vector(31 downto 0);  -- Measured Freq of clock
    ZYNQ_BOOTED                :std_logic;                    
  end record SERV_MISC_MON_t;


  type SERV_MISC_CTRL_t is record
    ETH1_RESET_N               :std_logic;   
  end record SERV_MISC_CTRL_t;


  constant DEFAULT_SERV_MISC_CTRL_t : SERV_MISC_CTRL_t := (
                                                           ETH1_RESET_N => '1'
                                                          );
  type SERV_MON_t is record
    SI5344                     :SERV_SI5344_MON_t;
    TCDS                       :SERV_TCDS_MON_t;  
    CLOCKING                   :SERV_CLOCKING_MON_t;
    FP_LEDS                    :SERV_FP_LEDS_MON_t; 
    SWITCH                     :SERV_SWITCH_MON_t;  
    CPLD                       :SERV_CPLD_MON_t;    
    MISC                       :SERV_MISC_MON_t;    
  end record SERV_MON_t;


  type SERV_CTRL_t is record
    SI5344                     :SERV_SI5344_CTRL_t;
    TCDS                       :SERV_TCDS_CTRL_t;  
    CLOCKING                   :SERV_CLOCKING_CTRL_t;
    FP_LEDS                    :SERV_FP_LEDS_CTRL_t; 
    CPLD                       :SERV_CPLD_CTRL_t;    
    MISC                       :SERV_MISC_CTRL_t;    
  end record SERV_CTRL_t;


  constant DEFAULT_SERV_CTRL_t : SERV_CTRL_t := (
                                                 SI5344 => DEFAULT_SERV_SI5344_CTRL_t,
                                                 TCDS => DEFAULT_SERV_TCDS_CTRL_t,
                                                 CLOCKING => DEFAULT_SERV_CLOCKING_CTRL_t,
                                                 FP_LEDS => DEFAULT_SERV_FP_LEDS_CTRL_t,
                                                 CPLD => DEFAULT_SERV_CPLD_CTRL_t,
                                                 MISC => DEFAULT_SERV_MISC_CTRL_t
                                                );


end package SERV_CTRL;