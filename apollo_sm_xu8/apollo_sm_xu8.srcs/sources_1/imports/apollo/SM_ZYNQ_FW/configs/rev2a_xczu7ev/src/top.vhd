library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

use work.types.all;
use work.AXIRegPKG.all;
use work.CM_package.all;
use work.SERV_CTRL.all;
use work.Global_PKG.all; 
use work.AXISlaveAddrPkg.all;
use work.register_pkg.all;

library UNISIM;
use UNISIM.vcomponents.all;

entity top is
generic (
    -- Global Generic Variables
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

--    xil_defaultlib_VER  : std_logic_vector(31 downto 0);
--    xil_defaultlib_SHA  : std_logic_vector(31 downto 0);
--    Default_VER         : std_logic_vector(31 downto 0);
--    Default_SHA         : std_logic_vector(31 downto 0)
    );
  port (


    -------------------------------------
    -- Onboard Enclustra

    ONBOARD_CLK_P     : in  std_logic;
    ONBOARD_CLK_N     : in  std_logic;

    -------------------------------------
    -- Misc SM
    EEPROM_WE_N       : out   std_logic;
    FP_LED_RST        : out   std_logic;
    FP_LED_CLK        : out   std_logic;
    FP_LED_SDA        : out   std_logic;
    FP_BUTTON         : in    std_logic;
    FP_1V8_GPIO       : out   std_logic_vector(5 downto 0);
    
    SATA_DETECT_N     : in    std_logic;
--         UART_Rx_ZYNQ  : in    std_logic; -- not used
--         UART_Tx_ZYNQ  : out   std_logic; -- not used

    CPLD_TCK          : out   std_logic;
    CPLD_TDI          : out   std_logic;
    CPLD_TDO          : in    std_logic;
    CPLD_TMS          : out   std_logic;


    -------------------------------------
    -- Clocking/timing
    LHC_CLK_BP_LOS    : in  std_logic;
    LHC_CLK_OSC_LOS   : in  std_logic;
    LHC_SRC_SEL       : out std_logic;

    HQ_CLK_BP_LOS     : in  std_logic;
    HQ_CLK_OSC_LOS    : in  std_logic;
    HQ_SRC_SEL        : out std_logic;

    CLK_LHC_P         : in std_logic;
    CLK_LHC_N         : in std_logic;
    CLK_HQ_P          : in std_logic;
    CLK_HQ_N          : in std_logic;

    CLK_TTC_P         : in  std_logic;
    CLK_TTC_N         : in  std_logic;

--    CLK_REC_OUT_P     : out std_logic;
--    CLK_REC_OUT_N     : out std_logic;
    
--    TTC_P             : in  std_logic;
--    TTC_N             : in  std_logic;
--    TTS_P             : out std_logic;
--    TTS_N             : out std_logic;
    CM_TTC_SEL        : out std_logic_vector(1 downto 0);    

    SI_INT            : in    std_logic;
    SI_LOL            : in    std_logic;
    SI_LOS_XAXB       : in    std_logic;
    SI_OUT_DIS        : out   std_logic;
    SI_ENABLE         : out   std_logic;
    SI_SCL            : inout std_logic;
    SI_SDA            : inout std_logic;

    SI_TCDS_INT       : in    std_logic;
    SI_TCDS_LOL       : in    std_logic;
    SI_TCDS_LOS_XAXB  : in    std_logic;
    SI_TCDS_OUT_DIS   : out   std_logic;
    SI_TCDS_ENABLE    : out   std_logic;

    
    -------------------------------------
    -- ESM
    ESM_UART_RX       : in  std_logic;
    ESM_UART_TX       : out std_logic;
    ESM_LED_CLK       : in std_logic;
    ESM_LED_SDA       : in std_logic;

    -------------------------------------
    -- GPIOs CPLD
    CPLD_INFO_CLK    : out std_logic;
    CPLD_INFO_DATA   : in  std_logic;

--    CPLD_IPMC_BOOT_TX : out std_logic;
--    CPLD_IPMC_BOOT_RX : in  std_logic;

    -------------------------------------
    -- GPIOs Zynq
    GPIO              : out std_logic_vector(7 downto 1); --0 is MIO

    -----------------------------------------------------------------------------
    -- CM interface
    -----------------------------------------------------------------------------

    -------------------------------------
    --Enable
    CM1_EN : out std_logic;         
    CM2_EN : out std_logic;

    -------------------------------------
    --PWR Enable
    CM1_PWR_EN : out std_logic;         
    CM2_PWR_EN : out std_logic;

    -------------------------------------
    --CM power good
    CM1_PWR_GOOD : in std_logic;         
    CM2_PWR_GOOD : in std_logic;

    -------------------------------------
    --CM Mon Rx
    CM1_MON_RX : in std_logic;         
--    CM2_MON_RX : in std_logic;

    -------------------------------------
    --CM UART
    CM1_UART_TX   : out std_logic;
    CM1_UART_RX   : in  std_logic;         
    CM2_UART_TX   : out std_logic;
    CM2_UART_RX   : in  std_logic;         
    
    -------------------------------------
    --CM GPIO
    CM1_GPIO         : in std_logic_vector(2 downto 0);         
    CM2_GPIO         : in std_logic_vector(2 downto 0);


    -------------------------------------
    --CM XVC
    CM1_TCK          : out   std_logic;
    CM1_TDI          : out   std_logic;
    CM1_TDO          : in    std_logic;
    CM1_TMS          : out   std_logic;
    CM1_PS_RST       : out   std_logic;
    CM2_TCK          : out   std_logic;
    CM2_TDI          : out   std_logic;
    CM2_TDO          : in    std_logic;
    CM2_TMS          : out   std_logic;
    CM2_PS_RST       : out   std_logic;

    
    
    
    
-----    -------------------------------------------------------------------------------------------
-----    -- MGBT 1
-----    -------------------------------------------------------------------------------------------
    AXI_C2C_CM1_RX_P      : in    std_logic_vector(0 to 1);
    AXI_C2C_CM1_RX_N      : in    std_logic_vector(0 to 1);
    AXI_C2C_CM1_TX_P      : out   std_logic_vector(0 to 1);
    AXI_C2C_CM1_TX_N      : out   std_logic_vector(0 to 1);

    AXI_C2C_CM2_RX_P      : in    std_logic_vector(0 to 1);
    AXI_C2C_CM2_RX_N      : in    std_logic_vector(0 to 1);
    AXI_C2C_CM2_TX_P      : out   std_logic_vector(0 to 1);
    AXI_C2C_CM2_TX_N      : out   std_logic_vector(0 to 1);

                             
--    SSD_rx_P        : in    std_logic; 
--    SSD_rx_N        : in    std_logic;
--    SSD_tx_P        : out   std_logic; 
--    SSD_tx_N        : out   std_logic; 

--    CM1_TCDS_TTS_P          : in    std_logic; 
--    CM1_TCDS_TTS_N          : in    std_logic;                       
--    TCDS_TTS_P             : out   std_logic; 
--    TCDS_TTS_N             : out   std_logic; 


--    refclk_SSD_P   : in    std_logic; 
--    refclk_SSD_N   : in    std_logic; 
--    
    REFCLK_C2C1_P          : in    std_logic_vector(1 downto 0);
    REFCLK_C2C1_N          : in    std_logic_vector(1 downto 0);

 
    -------------------------------------------------------------------------------------------
    -- MGBT 2
    -----------------------------------------------------------------------------------------


    REFCLK_CMS_P            : in std_logic_vector(1 downto 0);
    REFCLK_CMS_N            : in std_logic_vector(1 downto 0);

    REFCLK_REC_P            : in std_logic;
    REFCLK_REC_N            : in std_logic;
    
--    TCDS_TTC_P              : in  std_logic;
--    TCDS_TTC_N              : in  std_logic;
--    TCDS_TTS_P              : out std_logic;
--    TCDS_TTS_N              : out std_logic;
--
--    
--    CM1_TCDS_TTS_P          : in    std_logic; 
--    CM1_TCDS_TTS_N          : in    std_logic;
--    CM1_TCDS_TTC_P          : out   std_logic; 
--    CM1_TCDS_TTC_N          : out   std_logic;
--    CM2_TCDS_TTS_P          : in    std_logic; 
--    CM2_TCDS_TTS_N          : in    std_logic;
--    CM2_TCDS_TTC_P          : out   std_logic; 
--    CM2_TCDS_TTC_N          : out   std_logic;
    

--
--    refclk_CMS_P      : in    std_logic; 
--    refclk_CMS_N      : in    std_logic; 

    REFCLK_C2C2_P          : in    std_logic;
    REFCLK_C2C2_N          : in    std_logic;


--    LDAQ_RX_P              : in    std_logic;
--    LDAQ_RX_N              : in    std_logic;
--    LDAQ_TX_P              : out   std_logic;
--    LDAQ_TX_N              : out   std_logic;
    -------------------------------------------------------------------------------------------
    -- IPMC Interface
    -------------------------------------------------------------------------------------------
    ZYNQ_BOOT_DONE         : out   std_logic;
    IPMC_SDA               : inout std_logic;
    IPMC_SCL               : in    std_logic;
--    IPMC_IN                : in    std_logic_vector(3 downto 0);
    IPMC_OUT               : out   std_logic_vector(1 downto 0)

    
    );    
end entity top;

architecture structure of top is

  component onboardclk is 
  port (
      clk_200MHz:   out std_logic;
      clk_50MHz:    out std_logic;
      clk_125MHz:   out std_logic;
      reset:        in  std_logic;
      locked:       out std_logic;       
      clk_in1_p:    in  std_logic;
      clk_in1_n:    in  std_logic
  ); end component;

    component jtag_mux is
    port (
        TCK_0 : in std_logic;
        TMS_0 : in std_logic;
        TDI_0 : in std_logic;
        TDO_0 : out std_logic;
       
        TCK_1 : in std_logic;
        TMS_1 : in std_logic;
        TDI_1 : in std_logic;
        TDO_1 : out std_logic;
       
        TCK : out std_logic;
        TMS : out std_logic;
        TDI : out std_logic;
        TDO : in std_logic
    ); end component;
        

  signal status : reg_matrix(0 to N_STATUS_REGS-1):= (others => (others => '0'));
  signal ctrl   : reg_matrix(0 to N_CTRL_REGS-1);
  
  signal pl_clk : std_logic;
  signal axi_reset_n : std_logic;
  signal axi_reset : std_logic;

  signal pl_reset_n : std_logic;
  
------- TCDS
  signal refclk_TCDS : std_logic;
  signal ttc_data : std_logic_vector(35 downto 0); 
  signal tts_data : std_logic_vector(35 downto 0); 
  signal fake_ttc_data : std_logic_vector(35 downto 0);
  signal m1_tts_data : std_logic_vector(35 downto 0);
  signal m2_tts_data : std_logic_vector(35 downto 0);
  signal ttc_dv : std_logic; 
  signal tts_dv : std_logic; 
  signal fake_ttc_dv : std_logic;
  signal m1_tts_dv : std_logic;
  signal m2_tts_dv : std_logic;
  signal TTC_SRC_SEL : std_logic;
  
  -- AXI C2C
  signal AXI_C2CM1_RX_data              : std_logic_vector(63 downto 0 ); -- (127 downto 0 );
  signal AXI_C2CM1_RX_dv                : std_logic;                          
  signal AXI_C2CM1_TX_data              : std_logic_vector(63 downto 0 ); -- (127 downto 0 );
  signal AXI_C2CM1_TX_ready             : std_logic;                       
  signal AXI_C2CM1_TX_dv                : std_logic;                         
  signal AXI_C2C_aurora_init_clk        : std_logic;                  
  signal AXI_C2C_aurora_mmcm_not_locked : std_logic;           
  signal AXI_C2C_aurora_pma_init_out    : std_logic;             
  signal AXI_C2C_reset                  : std_logic;                           
  signal AXI_C2CM1_channel_up           : std_logic;                     
  signal AXI_C2CM1_phy_clk              : std_logic;                        
  signal AXI_C2CM1_phy_clk_raw          : std_logic;
  
  signal refclk_C2C        : std_logic;

  signal AXI_C2C_ReadMOSI  : AXIReadMOSI_array_t (1 downto 0);
  signal AXI_C2C_ReadMISO  : AXIReadMISO_array_t (1 downto 0);
  signal AXI_C2C_WriteMOSI : AXIWriteMOSI_array_t(1 downto 0);
  signal AXI_C2C_WriteMISO : AXIWriteMISO_array_t(1 downto 0);
  
  signal C2C_gt_qpllclk_quad4 : std_logic;
  signal C2C_gt_qpllrefclk_quad4 : std_logic;
  signal clk_C2C_PHY             : std_logic_vector(4 downto 1);
  signal AXI_C2C_powerdown       : std_logic_vector(4 downto 1);


  
-- AXI BUS
  signal AXI_clk : std_logic;
  constant PL_AXI_SLAVE_COUNT : integer := 9;
  signal AXI_BUS_RMOSI :  AXIReadMOSI_array_t(0 to PL_AXI_SLAVE_COUNT-1) := (others => DefaultAXIReadMOSI);
  signal AXI_BUS_RMISO :  AXIReadMISO_array_t(0 to PL_AXI_SLAVE_COUNT-1) := (others => DefaultAXIReadMISO);
  signal AXI_BUS_WMOSI : AXIWriteMOSI_array_t(0 to PL_AXI_SLAVE_COUNT-1) := (others => DefaultAXIWriteMOSI);
  signal AXI_BUS_WMISO : AXIWriteMISO_array_t(0 to PL_AXI_SLAVE_COUNT-1) := (others => DefaultAXIWriteMISO);

  signal AXI_MSTR_RMOSI : AXIReadMOSI;
  signal AXI_MSTR_RMISO : AXIReadMISO;
  signal AXI_MSTR_WMOSI : AXIWriteMOSI;
  signal AXI_MSTR_WMISO : AXIWriteMISO;
  
  --Monitoring
  
  signal clk_200Mhz : std_logic;
  signal reset_200Mhz : std_logic;
  signal clk_200Mhz_locked : std_logic;
  signal clk_125Mhz : std_logic;
  
  signal SDA_i_phy : std_logic;
  signal SDA_o_phy : std_logic;
  signal SDA_t_phy : std_logic;
  signal SCL_i_phy : std_logic;
  signal SCL_o_phy : std_logic;
  signal SCL_t_phy : std_logic;
  signal SDA_i_normal : std_logic;
  signal SDA_o_normal : std_logic;
  signal SDA_t_normal : std_logic;
  signal SCL_i_normal : std_logic;
  signal SCL_o_normal : std_logic;
  signal SCL_t_normal : std_logic;

  signal SI_OE_normal : std_logic;
  signal SI_EN_normal : std_logic;
  signal SI_init_reset : std_logic;
  signal SI_TCDS_OE_normal : std_logic;
  signal SI_TCDS_OE   : std_logic;
 
  
  signal IPMC_SDA_o : std_logic;
  signal IPMC_SDA_t : std_logic;
  signal IPMC_SDA_i : std_logic;


  --For plXVC
  constant XVC_COUNT    : integer := 3;
  signal plXVC_TMS      : std_logic_vector((XVC_COUNT -1) downto 0);
  signal plXVC_TDI      : std_logic_vector((XVC_COUNT -1) downto 0);
  signal plXVC_TDO      : std_logic_vector((XVC_COUNT -1) downto 0);
  signal plXVC_TCK      : std_logic_vector((XVC_COUNT -1) downto 0);
  signal plXVC_PS_RST   : std_logic_vector((XVC_COUNT -1) downto 0);

  signal CM1_UART_Tx_internal : std_logic;
  signal CM2_UART_Tx_internal : std_logic;
  constant CM_COUNT           : integer := 1;
  signal CM_C2C_Mon     : C2C_Monitor_t;

  signal SI5344_Mon     : SERV_SI5344_MON_t;
  signal SI5344_Ctrl    : SERV_SI5344_CTRL_t;

  signal TCDS_Mon       : SERV_TCDS_MON_t;
  signal TCDS_Ctrl      : SERV_TCDS_CTRL_t;
  
  signal CM_enable_IOs   : std_logic_vector(2 downto 1);
  signal CM_C2C_Ctrl : C2C_Control_t;
  signal C2C1_phy_gt_refclk1_out : std_logic;

  signal linux_booted : std_logic;

  signal clk_TCDS : std_logic;
  signal clk_TCDS_reset_n : std_logic;
  signal clk_TCDS_locked : std_logic;

  signal C2C_pB_UART_tx : std_logic_vector(2 downto 1);
  signal C2C_pB_UART_rx : std_logic_vector(2 downto 1);


  --other clocks
  signal CLOCKING_Mon   : SERV_CLOCKING_MON_t;
  signal CLOCKING_Ctrl  : SERV_CLOCKING_CTRL_t;
  signal clk_LHC : std_logic;
  signal local_clk_LHC : std_logic;
  signal clk_LHC_freq : std_logic_vector(31 downto 0);
  signal clk_HQ : std_logic;
  signal local_clk_HQ : std_logic;
  signal clk_HQ_freq : std_logic_vector(31 downto 0);
  signal clk_TTC : std_logic;
  signal local_clk_TTC : std_logic;
  signal clk_TTC_freq : std_logic_vector(31 downto 0);
  
  signal C2C_REFCLK_FREQ : slv_32_t;
  signal c2c_refclk : std_logic;
  signal c2c_refclk_q2 : std_logic;
  signal c2c_refclk_odiv2     : std_logic;
  signal buf_c2c_refclk_odiv2 : std_logic;

  
  signal reset_c2c : std_logic;

  signal CPLD_enable_jtag : std_logic;

  signal  dma_jtag_tck : std_logic;
  signal  dma_jtag_tms : std_logic;
  signal  dma_jtag_tdi : std_logic;
  signal  dma_jtag_tdo : std_logic;

  signal CM1_TCK_int : std_logic;
  signal CM1_TMS_int : std_logic;
  signal CM1_TDI_int : std_logic;
  signal CM1_TDO_int : std_logic;


  
begin  -- architecture structure

  --debugging start

  --Zynq axi signals
  axi_reset <= not axi_reset_n;



  SI_OUT_DIS <= not SI_OE_normal;
  SI_TCDS_OUT_DIS <= not SI_TCDS_OE;
  
  
  SI_i2c_SDA : IOBUF
    port map (
      IO => SI_sda,
      I  => SDA_o_phy,
      T  => SDA_t_phy,
      O  => SDA_i_phy);
  SI_i2c_SCL : IOBUF
    port map (
      IO => SI_scl,
      I  => SCL_o_phy,
      T  => SCL_t_phy,
      O  => SCL_i_phy);

  zynq_bd_wrapper_1: entity work.zynq_bd_sane_wrapper
    port map (
      sys_resetter_primary_rst_n(0)       => axi_reset_n,
      AXI_CLK                             => AXI_clk,
      c2c_interconnect_reset              => reset_c2c,

      --AXI master--                      
      AXIM_PL_RMOSI                       => AXI_MSTR_RMOSI,
      AXIM_PL_RMISO                       => AXI_MSTR_RMISO,
      AXIM_PL_WMOSI                       => AXI_MSTR_WMOSI,
      AXIM_PL_WMISO                       => AXI_MSTR_WMISO,
      --AXI endpoint--
      CM_RMOSI        => AXI_BUS_RMOSI(2),
      CM_RMISO        => AXI_BUS_RMISO(2),
      CM_WMOSI        => AXI_BUS_WMOSI(2),
      CM_WMISO        => AXI_BUS_WMISO(2),
      --AXI endpoint--
      PLXVC_RMOSI     => AXI_BUS_RMOSI(6),
      PLXVC_RMISO     => AXI_BUS_RMISO(6),
      PLXVC_WMOSI     => AXI_BUS_WMOSI(6),
      PLXVC_WMISO     => AXI_BUS_WMISO(6),
      --AXI endpoint--
      SERV_RMOSI      => AXI_BUS_RMOSI(0),
      SERV_RMISO      => AXI_BUS_RMISO(0),
      SERV_WMOSI      => AXI_BUS_WMOSI(0),
      SERV_WMISO      => AXI_BUS_WMISO(0),
      --AXI endpoint--
      SLAVE_I2C_RMOSI => AXI_BUS_RMOSI(1),
      SLAVE_I2C_RMISO => AXI_BUS_RMISO(1),
      SLAVE_I2C_WMOSI => AXI_BUS_WMOSI(1),
      SLAVE_I2C_WMISO => AXI_BUS_WMISO(1),
      --AXI endpoint--
      SM_INFO_RMOSI   => AXI_BUS_RMOSI(3),
      SM_INFO_RMISO   => AXI_BUS_RMISO(3),
      SM_INFO_WMOSI   => AXI_BUS_WMOSI(3),
      SM_INFO_WMISO   => AXI_BUS_WMISO(3),


      CM1_PB_UART_rxd                     => C2C_pB_UART_tx(1),
      CM1_PB_UART_txd                     => C2C_pB_UART_rx(1),
      CM2_PB_UART_rxd                     => C2C_pB_UART_tx(2),
      CM2_PB_UART_txd                     => C2C_pB_UART_rx(2),

      SI_scl_i                            => SCL_i_phy,
      SI_scl_o                            => SCL_o_phy,
      SI_scl_t                            => SCL_t_phy,
      SI_sda_i                            => SDA_i_phy,
      SI_sda_o                            => SDA_o_phy,
      SI_sda_t                            => SDA_t_phy,
                                                
      init_clk                            => AXI_C2C_aurora_init_clk,
      
      C2C1_phy_Rx_rxn                     => AXI_C2C_CM1_Rx_N(0 to 0),
      C2C1_phy_Rx_rxp                     => AXI_C2C_CM1_Rx_P(0 to 0),
      C2C1_phy_Tx_txn                     => AXI_C2C_CM1_Tx_N(0 to 0),
      C2C1_phy_Tx_txp                     => AXI_C2C_CM1_Tx_P(0 to 0),
      C2C1_phy_refclk                     => c2c_refclk,
      C2C1_PHY_CLK                        => clk_C2C_PHY(1),
      C2C1_phy_power_down                 => AXI_C2C_powerdown(1),
      C2C1_aurora_do_cc                   => CM_C2C_Mon.Link(1).status.do_cc,
      C2C1_aurora_pma_init_in             => CM_C2C_Ctrl.Link(1).status.initialize,
      C2C1_axi_c2c_config_error_out       => CM_C2C_Mon.Link(1).status.config_error,
      C2C1_axi_c2c_link_error_out         => CM_C2C_Mon.Link(1).status.link_error,
      C2C1_axi_c2c_link_status_out        => CM_C2C_Mon.Link(1).status.link_good,
      C2C1_axi_c2c_multi_bit_error_out    => CM_C2C_Mon.Link(1).status.mb_error,
      C2C1_aurora_reset_pb                => CM_C2C_Mon.Link(1).status.pb_reset,
      C2C1_phy_gt_pll_lock                => CM_C2C_Mon.Link(1).status.phy_gt_pll_lock,
      C2C1_phy_hard_err                   => CM_C2C_Mon.Link(1).status.phy_hard_err,
      C2C1_phy_lane_up(0)                 => CM_C2C_Mon.Link(1).status.phy_lane_up(0),
      C2C1_phy_link_reset_out             => CM_C2C_Mon.Link(1).status.phy_reset,
      C2C1_phy_mmcm_not_locked_out        => CM_C2C_Mon.Link(1).status.phy_mmcm_lol,
      C2C1_phy_soft_err                   => CM_C2C_Mon.Link(1).status.phy_soft_err,
                                          
      C2C1_PHY_DEBUG_cplllock(0)          => CM_C2C_Mon.Link(1).debug.cpll_lock,
      C2C1_PHY_DEBUG_dmonitorout          => CM_C2C_Mon.Link(1).debug.dmonitor,
      C2C1_PHY_DEBUG_eyescandataerror(0)  => CM_C2C_Mon.Link(1).debug.eyescan_data_error,
      C2C1_PHY_DEBUG_eyescanreset(0)      => CM_C2C_Ctrl.Link(1).debug.eyescan_reset,
      C2C1_PHY_DEBUG_eyescantrigger(0)    => CM_C2C_Ctrl.Link(1).debug.eyescan_trigger,
      C2C1_PHY_DEBUG_pcsrsvdin            => CM_C2C_Ctrl.Link(1).debug.PCS_RSV_DIN,
      C2C1_PHY_DEBUG_qplllock(0)          => CM_C2C_Mon.Link(1).debug.QPLL_LOCK,
      C2C1_PHY_DEBUG_rxbufreset(0)        => CM_C2C_Ctrl.Link(1).debug.rx.buf_reset,
      C2C1_PHY_DEBUG_rxbufstatus          => CM_C2C_Mon.Link(1).debug.rx.buf_status,
      C2C1_PHY_DEBUG_rxcdrhold(0)         => CM_C2C_Ctrl.Link(1).debug.rx.cdr_hold,
      C2C1_PHY_DEBUG_rxpmaresetdone(0)    => CM_C2C_Mon.Link(1).debug.rx.pma_reset_done,
      C2C1_PHY_DEBUG_rxdfelpmreset(0)     => CM_C2C_Ctrl.Link(1).debug.rx.dfe_lpm_reset,
      C2C1_PHY_DEBUG_rxlpmen(0)           => CM_C2C_Ctrl.Link(1).debug.rx.lpm_en,
      C2C1_PHY_DEBUG_rxpcsreset(0)        => CM_C2C_Ctrl.Link(1).debug.rx.pcs_reset,    
      C2C1_PHY_DEBUG_rxpmareset(0)        => CM_C2C_Ctrl.Link(1).debug.rx.pma_reset,    
      C2C1_PHY_DEBUG_rxprbscntreset(0)    => CM_C2C_Ctrl.Link(1).debug.rx.prbs_cnt_rst,
      C2C1_PHY_DEBUG_rxprbserr(0)         => CM_C2C_Mon.Link(1).debug.rx.prbs_err,
      C2C1_PHY_DEBUG_rxprbssel            => CM_C2C_Ctrl.Link(1).debug.rx.prbs_sel,
      C2C1_PHY_DEBUG_rxresetdone(0)       => CM_C2C_Mon.Link(1).debug.rx.reset_done,
      C2C1_PHY_DEBUG_rxrate               => CM_C2C_Ctrl.Link(1).debug.rx.rate,
      C2C1_PHY_DEBUG_txbufstatus          => CM_C2C_Mon.Link(1).debug.tx.buf_status,
      C2C1_PHY_DEBUG_txdiffctrl           => CM_C2C_Ctrl.Link(1).debug.tx.diff_ctrl,      
      C2C1_PHY_DEBUG_txinhibit(0)         => CM_C2C_Ctrl.Link(1).debug.tx.inhibit,
      C2C1_PHY_DEBUG_txpcsreset(0)        => CM_C2C_Ctrl.Link(1).debug.tx.pcs_reset,      
      C2C1_PHY_DEBUG_txpmareset(0)        => CM_C2C_Ctrl.Link(1).debug.tx.pma_reset,      
      C2C1_PHY_DEBUG_txpolarity(0)        => CM_C2C_Ctrl.Link(1).debug.tx.polarity,      
      C2C1_PHY_DEBUG_txpostcursor         => CM_C2C_Ctrl.Link(1).debug.tx.post_cursor,    
      C2C1_PHY_DEBUG_txprbsforceerr(0)    => CM_C2C_Ctrl.Link(1).debug.tx.prbs_force_err,  
      C2C1_PHY_DEBUG_txprbssel            => CM_C2C_Ctrl.Link(1).debug.tx.prbs_sel,       
      C2C1_PHY_DEBUG_txprecursor          => CM_C2C_Ctrl.Link(1).debug.tx.pre_cursor,     
      C2C1_PHY_DEBUG_txresetdone(0)       => CM_C2C_Mon.Link(1).debug.tx.reset_done,
      C2C1_PHY_DRP_daddr                  => CM_C2C_Ctrl.Link(1).drp.address,
      C2C1_PHY_DRP_den                    => CM_C2C_Ctrl.Link(1).drp.enable,
      C2C1_PHY_DRP_di                     => CM_C2C_Ctrl.Link(1).drp.wr_data,
      C2C1_PHY_DRP_do                     => CM_C2C_Mon.Link(1).drp.rd_data,
      C2C1_PHY_DRP_drdy                   => CM_C2C_Mon.Link(1).drp.rd_data_valid,
      C2C1_PHY_DRP_dwe                    => CM_C2C_Ctrl.Link(1).drp.wr_enable,


      
      C2C1b_phy_Rx_rxn                    =>  AXI_C2C_CM1_Rx_N(1 to 1),
      C2C1b_phy_Rx_rxp                    =>  AXI_C2C_CM1_Rx_P(1 to 1),
      C2C1b_phy_Tx_txn                    =>  AXI_C2C_CM1_Tx_N(1 to 1),
      C2C1b_phy_Tx_txp                    =>  AXI_C2C_CM1_Tx_P(1 to 1),
      C2C1B_phy_refclk                    => c2c_refclk,
      C2C1B_PHY_CLK                       => clk_C2C_PHY(2),
      C2C1b_phy_power_down                => AXI_C2C_powerdown(2),
      C2C1b_aurora_do_cc                  => CM_C2C_Mon.Link(2).status.do_cc,
      C2C1b_aurora_pma_init_in            => CM_C2C_Ctrl.Link(2).status.initialize,
      C2C1b_axi_c2c_config_error_out      => CM_C2C_Mon.Link(2).status.config_error,
      C2C1b_axi_c2c_link_error_out        => CM_C2C_Mon.Link(2).status.link_error,
      C2C1b_axi_c2c_link_status_out       => CM_C2C_Mon.Link(2).status.link_good,
      C2C1b_axi_c2c_multi_bit_error_out   => CM_C2C_Mon.Link(2).status.mb_error,
      C2C1b_aurora_reset_pb               => CM_C2C_Mon.Link(2).status.pb_reset,
      C2C1b_phy_gt_pll_lock               => CM_C2C_Mon.Link(2).status.phy_gt_pll_lock,
      C2C1b_phy_hard_err                  => CM_C2C_Mon.Link(2).status.phy_hard_err,
      C2C1b_phy_lane_up(0)                => CM_C2C_Mon.Link(2).status.phy_lane_up(0),
      C2C1b_phy_link_reset_out            => CM_C2C_Mon.Link(2).status.phy_reset,
      C2C1b_phy_soft_err                  => CM_C2C_Mon.Link(2).status.phy_soft_err,
                                          
      C2C1b_PHY_DEBUG_cplllock(0)         => CM_C2C_Mon.Link(2).debug.cpll_lock,
      C2C1b_PHY_DEBUG_dmonitorout         => CM_C2C_Mon.Link(2).debug.dmonitor,
      C2C1b_PHY_DEBUG_eyescandataerror(0) => CM_C2C_Mon.Link(2).debug.eyescan_data_error,
      C2C1b_PHY_DEBUG_eyescanreset(0)     => CM_C2C_Ctrl.Link(2).debug.eyescan_reset,
      C2C1b_PHY_DEBUG_eyescantrigger(0)   => CM_C2C_Ctrl.Link(2).debug.eyescan_trigger,
      C2C1b_PHY_DEBUG_pcsrsvdin           => CM_C2C_Ctrl.Link(2).debug.PCS_RSV_DIN,
      C2C1b_PHY_DEBUG_qplllock(0)         => CM_C2C_Mon.Link(2).debug.QPLL_LOCK,
      C2C1b_PHY_DEBUG_rxbufreset(0)       => CM_C2C_Ctrl.Link(2).debug.rx.buf_reset,
      C2C1b_PHY_DEBUG_rxbufstatus         => CM_C2C_Mon.Link(2).debug.rx.buf_status,
      C2C1b_PHY_DEBUG_rxcdrhold(0)        => CM_C2C_Ctrl.Link(2).debug.rx.cdr_hold,
      C2C1b_PHY_DEBUG_rxpmaresetdone(0)   => CM_C2C_Mon.Link(2).debug.rx.pma_reset_done,
      C2C1b_PHY_DEBUG_rxdfelpmreset(0)    => CM_C2C_Ctrl.Link(2).debug.rx.dfe_lpm_reset,
      C2C1b_PHY_DEBUG_rxlpmen(0)          => CM_C2C_Ctrl.Link(2).debug.rx.lpm_en,
      C2C1b_PHY_DEBUG_rxpcsreset(0)       => CM_C2C_Ctrl.Link(2).debug.rx.pcs_reset,    
      C2C1b_PHY_DEBUG_rxpmareset(0)       => CM_C2C_Ctrl.Link(2).debug.rx.pma_reset,    
      C2C1b_PHY_DEBUG_rxprbscntreset(0)   => CM_C2C_Ctrl.Link(2).debug.rx.prbs_cnt_rst,
      C2C1b_PHY_DEBUG_rxprbserr(0)        => CM_C2C_Mon.Link(2).debug.rx.prbs_err,
      C2C1b_PHY_DEBUG_rxprbssel           => CM_C2C_Ctrl.Link(2).debug.rx.prbs_sel,
      C2C1b_PHY_DEBUG_rxresetdone(0)      => CM_C2C_Mon.Link(2).debug.rx.reset_done,
      C2C1b_PHY_DEBUG_rxrate              => CM_C2C_Ctrl.Link(2).debug.rx.rate,
      C2C1b_PHY_DEBUG_txbufstatus         => CM_C2C_Mon.Link(2).debug.tx.buf_status,
      C2C1b_PHY_DEBUG_txdiffctrl          => CM_C2C_Ctrl.Link(2).debug.tx.diff_ctrl,      
      C2C1b_PHY_DEBUG_txinhibit(0)        => CM_C2C_Ctrl.Link(2).debug.tx.inhibit,
      C2C1b_PHY_DEBUG_txpcsreset(0)       => CM_C2C_Ctrl.Link(2).debug.tx.pcs_reset,      
      C2C1b_PHY_DEBUG_txpmareset(0)       => CM_C2C_Ctrl.Link(2).debug.tx.pma_reset,      
      C2C1b_PHY_DEBUG_txpolarity(0)       => CM_C2C_Ctrl.Link(2).debug.tx.polarity,      
      C2C1b_PHY_DEBUG_txpostcursor        => CM_C2C_Ctrl.Link(2).debug.tx.post_cursor,    
      C2C1b_PHY_DEBUG_txprbsforceerr(0)   => CM_C2C_Ctrl.Link(2).debug.tx.prbs_force_err,  
      C2C1b_PHY_DEBUG_txprbssel           => CM_C2C_Ctrl.Link(2).debug.tx.prbs_sel,       
      C2C1b_PHY_DEBUG_txprecursor         => CM_C2C_Ctrl.Link(2).debug.tx.pre_cursor,     
      C2C1b_PHY_DEBUG_txresetdone(0)      => CM_C2C_Mon.Link(2).debug.tx.reset_done,
      C2C1b_PHY_DRP_daddr                 => CM_C2C_Ctrl.Link(2).drp.address,
      C2C1b_PHY_DRP_den                   => CM_C2C_Ctrl.Link(2).drp.enable,
      C2C1b_PHY_DRP_di                    => CM_C2C_Ctrl.Link(2).drp.wr_data,
      C2C1b_PHY_DRP_do                    => CM_C2C_Mon.Link(2).drp.rd_data,
      C2C1b_PHY_DRP_drdy                  => CM_C2C_Mon.Link(2).drp.rd_data_valid,
      C2C1b_PHY_DRP_dwe                   => CM_C2C_Ctrl.Link(2).drp.wr_enable,




      
      C2C2_phy_Rx_rxn                     =>  AXI_C2C_CM2_Rx_N(0 to 0),
      C2C2_phy_Rx_rxp                     =>  AXI_C2C_CM2_Rx_P(0 to 0),
      C2C2_phy_Tx_txn                     =>  AXI_C2C_CM2_Tx_N(0 to 0),
      C2C2_phy_Tx_txp                     =>  AXI_C2C_CM2_Tx_P(0 to 0),
      C2C2_phy_refclk                     => c2c_refclk,
      C2C2_PHY_CLK                        => clk_C2C_PHY(3),
      C2C2_phy_power_down                 => AXI_C2C_powerdown(3),
      C2C2_aurora_do_cc                   => CM_C2C_Mon.Link(3).status.do_cc,
      C2C2_aurora_pma_init_in             => CM_C2C_Ctrl.Link(3).status.initialize,
      C2C2_axi_c2c_config_error_out       => CM_C2C_Mon.Link(3).status.config_error,
      C2C2_axi_c2c_link_error_out         => CM_C2C_Mon.Link(3).status.link_error,
      C2C2_axi_c2c_link_status_out        => CM_C2C_Mon.Link(3).status.link_good,
      C2C2_axi_c2c_multi_bit_error_out    => CM_C2C_Mon.Link(3).status.mb_error,
      C2C2_aurora_reset_pb                => CM_C2C_Mon.Link(3).status.pb_reset,
      C2C2_phy_gt_pll_lock                => CM_C2C_Mon.Link(3).status.phy_gt_pll_lock,
      C2C2_phy_hard_err                   => CM_C2C_Mon.Link(3).status.phy_hard_err,
      C2C2_phy_lane_up(0)                 => CM_C2C_Mon.Link(3).status.phy_lane_up(0),
      C2C2_phy_link_reset_out             => CM_C2C_Mon.Link(3).status.phy_reset,
      C2C2_phy_soft_err                   => CM_C2C_Mon.Link(3).status.phy_soft_err,
      
      C2C2_PHY_DEBUG_cplllock(0)          => CM_C2C_Mon.Link(3).debug.cpll_lock,
      C2C2_PHY_DEBUG_dmonitorout          => CM_C2C_Mon.Link(3).debug.dmonitor,
      C2C2_PHY_DEBUG_eyescandataerror(0)  => CM_C2C_Mon.Link(3).debug.eyescan_data_error,
      C2C2_PHY_DEBUG_eyescanreset(0)      => CM_C2C_Ctrl.Link(3).debug.eyescan_reset,
      C2C2_PHY_DEBUG_eyescantrigger(0)    => CM_C2C_Ctrl.Link(3).debug.eyescan_trigger,
      C2C2_PHY_DEBUG_pcsrsvdin            => CM_C2C_Ctrl.Link(3).debug.PCS_RSV_DIN,
      C2C2_PHY_DEBUG_qplllock(0)          => CM_C2C_Mon.Link(3).debug.QPLL_LOCK,
      C2C2_PHY_DEBUG_rxbufreset(0)        => CM_C2C_Ctrl.Link(3).debug.rx.buf_reset,
      C2C2_PHY_DEBUG_rxbufstatus          => CM_C2C_Mon.Link(3).debug.rx.buf_status,
      C2C2_PHY_DEBUG_rxcdrhold(0)         => CM_C2C_Ctrl.Link(3).debug.rx.cdr_hold,
      C2C2_PHY_DEBUG_rxpmaresetdone(0)    => CM_C2C_Mon.Link(3).debug.rx.pma_reset_done,
      C2C2_PHY_DEBUG_rxdfelpmreset(0)     => CM_C2C_Ctrl.Link(3).debug.rx.dfe_lpm_reset,
      C2C2_PHY_DEBUG_rxlpmen(0)           => CM_C2C_Ctrl.Link(3).debug.rx.lpm_en,
      C2C2_PHY_DEBUG_rxpcsreset(0)        => CM_C2C_Ctrl.Link(3).debug.rx.pcs_reset,    
      C2C2_PHY_DEBUG_rxpmareset(0)        => CM_C2C_Ctrl.Link(3).debug.rx.pma_reset,    
      C2C2_PHY_DEBUG_rxprbscntreset(0)    => CM_C2C_Ctrl.Link(3).debug.rx.prbs_cnt_rst,
      C2C2_PHY_DEBUG_rxprbserr(0)         => CM_C2C_Mon.Link(3).debug.rx.prbs_err,
      C2C2_PHY_DEBUG_rxprbssel            => CM_C2C_Ctrl.Link(3).debug.rx.prbs_sel,
      C2C2_PHY_DEBUG_rxresetdone(0)       => CM_C2C_Mon.Link(3).debug.rx.reset_done,
      C2C2_PHY_DEBUG_rxrate               => CM_C2C_Ctrl.Link(3).debug.rx.rate,
      C2C2_PHY_DEBUG_txbufstatus          => CM_C2C_Mon.Link(3).debug.tx.buf_status,
      C2C2_PHY_DEBUG_txdiffctrl           => CM_C2C_Ctrl.Link(3).debug.tx.diff_ctrl,      
      C2C2_PHY_DEBUG_txinhibit(0)         => CM_C2C_Ctrl.Link(3).debug.tx.inhibit,
      C2C2_PHY_DEBUG_txpcsreset(0)        => CM_C2C_Ctrl.Link(3).debug.tx.pcs_reset,      
      C2C2_PHY_DEBUG_txpmareset(0)        => CM_C2C_Ctrl.Link(3).debug.tx.pma_reset,      
      C2C2_PHY_DEBUG_txpolarity(0)        => CM_C2C_Ctrl.Link(3).debug.tx.polarity,      
      C2C2_PHY_DEBUG_txpostcursor         => CM_C2C_Ctrl.Link(3).debug.tx.post_cursor,    
      C2C2_PHY_DEBUG_txprbsforceerr(0)    => CM_C2C_Ctrl.Link(3).debug.tx.prbs_force_err,  
      C2C2_PHY_DEBUG_txprbssel            => CM_C2C_Ctrl.Link(3).debug.tx.prbs_sel,       
      C2C2_PHY_DEBUG_txprecursor          => CM_C2C_Ctrl.Link(3).debug.tx.pre_cursor,     
      C2C2_PHY_DEBUG_txresetdone(0)       => CM_C2C_Mon.Link(3).debug.tx.reset_done,
      C2C2_PHY_DRP_daddr                  => CM_C2C_Ctrl.link(3).drp.address,
      C2C2_PHY_DRP_den                    => CM_C2C_Ctrl.link(3).drp.enable,
      C2C2_PHY_DRP_di                     => CM_C2C_Ctrl.link(3).drp.wr_data,
      C2C2_PHY_DRP_do                     => CM_C2C_Mon.link(3).drp.rd_data,
      C2C2_PHY_DRP_drdy                   => CM_C2C_Mon.link(3).drp.rd_data_valid,
      C2C2_PHY_DRP_dwe                    => CM_C2C_Ctrl.link(3).drp.wr_enable,





      C2C2b_phy_Rx_rxn                    =>  AXI_C2C_CM2_Rx_N(1 to 1),
      C2C2b_phy_Rx_rxp                    =>  AXI_C2C_CM2_Rx_P(1 to 1),
      C2C2b_phy_Tx_txn                    =>  AXI_C2C_CM2_Tx_N(1 to 1),
      C2C2b_phy_Tx_txp                    =>  AXI_C2C_CM2_Tx_P(1 to 1),
      C2C2B_phy_refclk                    => c2c_refclk_q2,
      C2C2B_PHY_CLK                        => clk_C2C_PHY(4),
      C2C2b_phy_power_down                => AXI_C2C_powerdown(4),
      C2C2b_aurora_do_cc                  => CM_C2C_Mon.Link(4).status.do_cc,
      C2C2b_aurora_pma_init_in            => CM_C2C_Ctrl.Link(4).status.initialize,
      C2C2b_axi_c2c_config_error_out      => CM_C2C_Mon.Link(4).status.config_error,
      C2C2b_axi_c2c_link_error_out        => CM_C2C_Mon.Link(4).status.link_error,
      C2C2b_axi_c2c_link_status_out       => CM_C2C_Mon.Link(4).status.link_good,
      C2C2b_axi_c2c_multi_bit_error_out   => CM_C2C_Mon.Link(4).status.mb_error,
      C2C2b_aurora_reset_pb               => CM_C2C_Mon.Link(4).status.pb_reset,
      C2C2b_phy_gt_pll_lock               => CM_C2C_Mon.Link(4).status.phy_gt_pll_lock,
      C2C2b_phy_hard_err                  => CM_C2C_Mon.Link(4).status.phy_hard_err,
      C2C2b_phy_lane_up(0)                => CM_C2C_Mon.Link(4).status.phy_lane_up(0),
      C2C2b_phy_link_reset_out            => CM_C2C_Mon.Link(4).status.phy_reset,
      C2C2b_phy_soft_err                  => CM_C2C_Mon.Link(4).status.phy_soft_err,
      
      C2C2b_PHY_DEBUG_cplllock(0)         => CM_C2C_Mon.Link(4).debug.cpll_lock,
      C2C2b_PHY_DEBUG_dmonitorout         => CM_C2C_Mon.Link(4).debug.dmonitor,
      C2C2b_PHY_DEBUG_eyescandataerror(0) => CM_C2C_Mon.Link(4).debug.eyescan_data_error,
      C2C2b_PHY_DEBUG_eyescanreset(0)     => CM_C2C_Ctrl.Link(4).debug.eyescan_reset,
      C2C2b_PHY_DEBUG_eyescantrigger(0)   => CM_C2C_Ctrl.Link(4).debug.eyescan_trigger,
      C2C2b_PHY_DEBUG_pcsrsvdin           => CM_C2C_Ctrl.Link(4).debug.PCS_RSV_DIN,
      C2C2b_PHY_DEBUG_qplllock(0)         => CM_C2C_Mon.Link(4).debug.QPLL_LOCK,
      C2C2b_PHY_DEBUG_rxbufreset(0)       => CM_C2C_Ctrl.Link(4).debug.rx.buf_reset,
      C2C2b_PHY_DEBUG_rxbufstatus         => CM_C2C_Mon.Link(4).debug.rx.buf_status,
      C2C2b_PHY_DEBUG_rxcdrhold(0)        => CM_C2C_Ctrl.Link(4).debug.rx.cdr_hold,
      C2C2b_PHY_DEBUG_rxpmaresetdone(0)   => CM_C2C_Mon.Link(4).debug.rx.pma_reset_done,
      C2C2b_PHY_DEBUG_rxdfelpmreset(0)    => CM_C2C_Ctrl.Link(4).debug.rx.dfe_lpm_reset,
      C2C2b_PHY_DEBUG_rxlpmen(0)          => CM_C2C_Ctrl.Link(4).debug.rx.lpm_en,
      C2C2b_PHY_DEBUG_rxpcsreset(0)       => CM_C2C_Ctrl.Link(4).debug.rx.pcs_reset,    
      C2C2b_PHY_DEBUG_rxpmareset(0)       => CM_C2C_Ctrl.Link(4).debug.rx.pma_reset,    
      C2C2b_PHY_DEBUG_rxprbscntreset(0)   => CM_C2C_Ctrl.Link(4).debug.rx.prbs_cnt_rst,
      C2C2b_PHY_DEBUG_rxprbserr(0)        => CM_C2C_Mon.Link(4).debug.rx.prbs_err,
      C2C2b_PHY_DEBUG_rxprbssel           => CM_C2C_Ctrl.Link(4).debug.rx.prbs_sel,
      C2C2b_PHY_DEBUG_rxresetdone(0)      => CM_C2C_Mon.Link(4).debug.rx.reset_done,
      C2C2b_PHY_DEBUG_rxrate              => CM_C2C_Ctrl.Link(4).debug.rx.rate,
      C2C2b_PHY_DEBUG_txbufstatus         => CM_C2C_Mon.Link(4).debug.tx.buf_status,
      C2C2b_PHY_DEBUG_txdiffctrl          => CM_C2C_Ctrl.Link(4).debug.tx.diff_ctrl,      
      C2C2b_PHY_DEBUG_txinhibit(0)        => CM_C2C_Ctrl.Link(4).debug.tx.inhibit,
      C2C2b_PHY_DEBUG_txpcsreset(0)       => CM_C2C_Ctrl.Link(4).debug.tx.pcs_reset,      
      C2C2b_PHY_DEBUG_txpmareset(0)       => CM_C2C_Ctrl.Link(4).debug.tx.pma_reset,      
      C2C2b_PHY_DEBUG_txpolarity(0)       => CM_C2C_Ctrl.Link(4).debug.tx.polarity,      
      C2C2b_PHY_DEBUG_txpostcursor        => CM_C2C_Ctrl.Link(4).debug.tx.post_cursor,    
      C2C2b_PHY_DEBUG_txprbsforceerr(0)   => CM_C2C_Ctrl.Link(4).debug.tx.prbs_force_err,  
      C2C2b_PHY_DEBUG_txprbssel           => CM_C2C_Ctrl.Link(4).debug.tx.prbs_sel,       
      C2C2b_PHY_DEBUG_txprecursor         => CM_C2C_Ctrl.Link(4).debug.tx.pre_cursor,     
      C2C2b_PHY_DEBUG_txresetdone(0)      => CM_C2C_Mon.Link(4).debug.tx.reset_done,
      C2C2b_PHY_DRP_daddr                 => CM_C2C_Ctrl.Link(4).drp.address,
      C2C2b_PHY_DRP_den                   => CM_C2C_Ctrl.Link(4).drp.enable,
      C2C2b_PHY_DRP_di                    => CM_C2C_Ctrl.Link(4).drp.wr_data,
      C2C2b_PHY_DRP_do                    => CM_C2C_Mon.Link(4).drp.rd_data,
      C2C2b_PHY_DRP_drdy                  => CM_C2C_Mon.Link(4).drp.rd_data_valid,
      C2C2b_PHY_DRP_dwe                   => CM_C2C_Ctrl.Link(4).drp.wr_enable,



      CM1_UART_rxd => CM1_UART_rx,
      CM1_UART_txd => CM1_UART_Tx_internal,
      CM2_UART_rxd => CM2_UART_rx,
      CM2_UART_txd => CM2_UART_Tx_internal,
      ESM_UART_rxd => ESM_UART_rx,
      ESM_UART_txd => ESM_UART_tx,
      PL_MEM_RAM_PORTB_addr => (others => '0'),
      PL_MEM_RAM_PORTB_clk  => AXI_clk,
      PL_MEM_RAM_PORTB_din  => (others => '0'),
      PL_MEM_RAM_PORTB_dout => open,
      PL_MEM_RAM_PORTB_en   => '0',
      PL_MEM_RAM_PORTB_rst  => '0',
      PL_MEM_RAM_PORTB_we   => x"0",
      PL_MEM_CM_RAM_PORTB_addr => (others => '0'),
      PL_MEM_CM_RAM_PORTB_clk  => AXI_clk,
      PL_MEM_CM_RAM_PORTB_din  => (others => '0'),
      PL_MEM_CM_RAM_PORTB_dout => open,
      PL_MEM_CM_RAM_PORTB_en   => '0',
      PL_MEM_CM_RAM_PORTB_rst  => '0',
      PL_MEM_CM_RAM_PORTB_we   => x"0",

        dma_jtag_tck => dma_jtag_tck,
        dma_jtag_tms => dma_jtag_tms,
        dma_jtag_tdi => dma_jtag_tdi,
        dma_jtag_tdo => dma_jtag_tdo
        
      
      );

    jtag_mux_i: entity work.jtag_mux
    port map
    (
        TCK_0 => dma_jtag_tck,
        TMS_0 => dma_jtag_tms,
        TDI_0 => dma_jtag_tdi,
        TDO_0 => dma_jtag_tdo,
      
        TCK_1 => plXVC_TCK(0),
        TMS_1 => plXVC_TMS(0),
        TDI_1 => plXVC_TDI(0),
        TDO_1 => CM1_TDO_int,
      
        TCK   => CM1_TCK_int,
        TMS   => CM1_TMS_int,
        TDI   => CM1_TDI_int,
        TDO   => CM1_TDO
    );
  -------------------------------------------------------------------------------
  -- Service module
  -------------------------------------------------------------------------------

  --Clock control
  CM_TTC_SEL(1 downto 0)   <= (others => TTC_SRC_SEL);
  Clocking_Mon.LHC_LOS_BP  <= LHC_CLK_BP_LOS;
  Clocking_Mon.LHC_LOS_OSC <= LHC_CLK_OSC_LOS;
  Clocking_Mon.HQ_LOS_BP   <= HQ_CLK_BP_LOS;
  Clocking_Mon.HQ_LOS_OSC  <= HQ_CLK_OSC_LOS;
  LHC_SRC_SEL              <= Clocking_Ctrl.LHC_SEL;
  HQ_SRC_SEL               <= Clocking_Ctrl.HQ_SEL;      

  
  FP_1V8_GPIO <= "000000";
  EEPROM_WE_N <= '1';

  GPIO  <= "0000000";
  ZYNQ_BOOT_DONE <= linux_booted;
  IPMC_OUT <= "00";


  ibufds_c2c : ibufds_gte4
    generic map (
      REFCLK_EN_TX_PATH  => '0',
      REFCLK_HROW_CK_SEL => "00",
      REFCLK_ICNTL_RX    => "00")
    port map (
      O     => c2c_refclk,
      ODIV2 => c2c_refclk_odiv2,
      CEB   => '0',
      I     => refclk_C2C1_P(1),
      IB    => refclk_C2C1_N(1)
      );
--  ibufds_c2c_q2 : ibufds_gte4
--    generic map (
--      REFCLK_EN_TX_PATH  => '0',
--      REFCLK_HROW_CK_SEL => "00",
--      REFCLK_ICNTL_RX    => "00")
--    port map (
--      O     => c2c_refclk_q2,
--      ODIV2 => open,
--      CEB   => '0',
--      I     => refclk_C2C2_P,
--      IB    => refclk_C2C2_N
--      );
  c2c_refclk_q2 <= c2c_refclk;
  
  BUFG_GT_inst_c2c_odiv2 : BUFG_GT
    port map (
      O => buf_c2c_refclk_odiv2,
      CE => '1',
      CEMASK => '1',
      CLR => '0',
      CLRMASK => '1', 
      DIV => "000",
      I => c2c_refclk_odiv2
      );
  rate_counter_c2c: entity work.rate_counter
    generic map (
      CLK_A_1_SECOND => AXI_MASTER_CLK_FREQ)
    port map (
      clk_A         => axi_clk,
      clk_B         => buf_c2c_refclk_odiv2,
      reset_A_async => AXI_RESET,
      event_b       => '1',
      rate          => c2c_refclk_freq);                




  
  services_1: entity work.services
    generic map(
      CLK_FREQ => AXI_MASTER_CLK_FREQ,
      ALLOCATED_MEMORY_RANGE => to_integer(AXI_RANGE_SERV)
      )
    port map (
      clk_axi         => axi_clk,
      reset_axi_n     => axi_reset_n,
      readMOSI        => AXI_BUS_RMOSI(0),
      readMISO        => AXI_BUS_RMISO(0),
      writeMOSI       => AXI_BUS_WMOSI(0),
      writeMISO       => AXI_BUS_WMISO(0),
      FP_LED_RST      => FP_LED_RST,
      FP_LED_CLK      => FP_LED_CLK,
      FP_LED_SDA      => FP_LED_SDA,
      FP_switch       => FP_Button,
      linux_booted    => linux_booted,
      ESM_LED_CLK     => ESM_LED_CLK,
      ESM_LED_SDA     => ESM_LED_SDA,
      SI5344_Mon.INT  => not SI_INT,
      SI5344_Mon.LOL  => not SI_LOL,
      SI5344_Mon.LOS  => not SI_LOS_XAXB,
      SI5344_Ctrl.OE  => SI_OE_normal,
      SI5344_Ctrl.EN  => SI_ENABLE,
      SI5344_Ctrl.FPGA_PLL_RESET => SI_init_reset,
      TCDS_Mon.REFCLK_LOCKED     => clk_TCDS_locked,
      TCDS_Mon.SI5344.LOL        => not SI_TCDS_LOL,
      TCDS_Mon.SI5344.LOS        => not SI_TCDS_LOS_XAXB,
      TCDS_Mon.SI5344.INT        => not SI_TCDS_INT ,
      TCDS_Ctrl.TTC_SOURCE       => TTC_SRC_SEL,
      TCDS_Ctrl.SI5344.OE        => SI_TCDS_OE,--SI_TCDS_OUT_DIS,
      TCDS_Ctrl.SI5344.EN        => SI_TCDS_ENABLE,--SI_TCDS_OE_normal,
      Clocking_Mon    => Clocking_Mon,
      Clocking_Ctrl   => Clocking_Ctrl,
      CM1_C2C_Mon     => CM_C2C_Mon.Link(1),
      CM2_C2C_Mon     => CM_C2C_Mon.Link(2),
      MISC_Mon.ETH1_CLK_FREQ => (others => '0'),--ETH1_CLK_FREQ,
      MISC_Mon.ZYNQ_BOOTED => linux_booted,
      MISC_Ctrl.ETH1_RESET_N => open,--ETH1_RESET_N,
      CPLD_enable_jtag => CPLD_enable_jtag,
      CPLD_clk_out    => CPLD_INFO_CLK,
      CPLD_info_in    => CPLD_INFO_DATA);

  SM_info_1: entity work.SM_info
    generic map (
      ALLOCATED_MEMORY_RANGE => to_integer(AXI_RANGE_SM_INFO),
      GLOBAL_DATE          => GLOBAL_DATE,
      GLOBAL_TIME          => GLOBAL_TIME,
      GLOBAL_VER           => GLOBAL_VER,
      GLOBAL_SHA           => GLOBAL_SHA,
      TOP_VER              => TOP_VER,
      TOP_SHA              => TOP_SHA,
      CON_VER              => CON_VER,
      CON_SHA              => CON_SHA,
      HOG_VER              => HOG_VER,
      HOG_SHA              => HOG_SHA
      )
    port map (
      clk_axi     => axi_clk,
      reset_axi_n => axi_reset_n,
      readMOSI    => AXI_BUS_RMOSI(3),
      readMISO    => AXI_BUS_RMISO(3),
      writeMOSI   => AXI_BUS_WMOSI(3),
      writeMISO   => AXI_BUS_WMISO(3));
  
  IPMC_i2c_slave_1: entity work.IPMC_i2c_slave
    generic map(
      CLK_FREQ => AXI_MASTER_CLK_FREQ,
      ALLOCATED_MEMORY_RANGE => to_integer(AXI_RANGE_SLAVE_I2C)
      )
    port map (
      clk_axi      => axi_clk,
      reset_axi_n  => axi_reset_n,
      readMOSI     => AXI_BUS_RMOSI(1),
      readMISO     => AXI_BUS_RMISO(1),
      writeMOSI    => AXI_BUS_WMOSI(1),
      writeMISO    => AXI_BUS_WMISO(1),
      linux_booted => linux_booted,
      SDA_o        => IPMC_SDA_o,
      SDA_t        => IPMC_SDA_t,
      SDA_i        => IPMC_SDA_i,
      SCL          => IPMC_SCL);
  IPMC_i2c_SDA : IOBUF
    port map (
      IO => IPMC_SDA,
      I  => IPMC_SDA_o,
      T  => IPMC_SDA_t,
      O  => IPMC_SDA_i);

  
  -------------------------------------------------------------------------------
  -- Command modules and C2C links
  -------------------------------------------------------------------------------
--  AXI_C2C_powerdown <= (others => '0');
  AXI_C2C_powerdown(1) <= not CM_enable_IOs(1);
  AXI_C2C_powerdown(2) <= not CM_enable_IOs(1);

  CM_COUNT_IS_1_ASSIGNMENTS: if CM_COUNT = 1 generate
    AXI_C2C_powerdown(3) <= not CM_enable_IOs(1);
    AXI_C2C_powerdown(4) <= not CM_enable_IOs(1);
--    CM_C2C_Mon.Link(3).status.phy_mmcm_lol  <= '0';
--    CM_C2C_Mon.Link(3).debug.cpll_lock      <= '0';
--    CM_C2C_Mon.Link(4).status.phy_mmcm_lol  <= '0';
--    CM_C2C_Mon.Link(4).debug.cpll_lock      <= '0';
  end generate CM_COUNT_IS_1_ASSIGNMENTS;


  
  CM_COUNT_IS_2_ASSIGNMENTS: if CM_COUNT = 2 generate
    AXI_C2C_powerdown(3) <= not CM_enable_IOs(2);
    AXI_C2C_powerdown(4) <= not CM_enable_IOs(2);
  end generate CM_COUNT_IS_2_ASSIGNMENTS;

  CM_interface_1: entity work.CM_intf
    generic map (
      CM_COUNT             => 2,
      COUNTER_COUNT        => 2,
      CLKFREQ              => AXI_MASTER_CLK_FREQ,
      ERROR_WAIT_TIME      => AXI_MASTER_CLK_FREQ,
      ALLOCATED_MEMORY_RANGE => to_integer(AXI_RANGE_CM)
      )
    port map (
      clk_axi              => axi_clk,
      reset_axi_n          => axi_reset_n,
      slave_readMOSI       => AXI_BUS_RMOSI(2),
      slave_readMISO       => AXI_BUS_RMISO(2),
      slave_writeMOSI      => AXI_BUS_WMOSI(2),
      slave_writeMISO      => AXI_BUS_WMISO(2),
      master_readMOSI      => AXI_MSTR_RMOSI,
      master_readMISO      => AXI_MSTR_RMISO,
      master_writeMOSI     => AXI_MSTR_WMOSI,
      master_writeMISO     => AXI_MSTR_WMISO,
      CM_mon_uart          => CM1_MON_RX,
      enableCM(1)            => CM1_EN,
      enableCM(2)            => CM2_EN,
      enableCM_PWR(1)        => CM1_PWR_EN,
      enableCM_PWR(2)        => CM2_PWR_EN,
      enableCM_IOs           => CM_enable_IOs,
      from_CM.CM(1).PWR_good    => CM1_PWR_good,
      from_CM.CM(1).TDO         => '0',
      from_CM.CM(1).GPIO        => CM1_GPIO (1 downto 0), -- Maq
      from_CM.CM(1).UART_Rx     => '0',--CM1_UART_rx,     
      from_CM.CM(2).PWR_good    => CM2_PWR_good,
      from_CM.CM(2).TDO         => '0',
      from_CM.CM(2).GPIO        => CM2_GPIO (1 downto 0), -- Maq
      from_CM.CM(2).UART_Rx     => CM2_UART_rx,
      to_CM_in.CM(1).UART_Tx    => CM1_UART_Tx_internal,
      to_CM_in.CM(1).TMS        => CM1_TMS_int, --plXVC_TMS(0),
      to_CM_in.CM(1).TDI        => CM1_TDI_int, --plXVC_TDI(0),
      to_CM_in.CM(1).TCK        => CM1_TCK_int, --plXVC_TCK(0),
      to_CM_in.CM(2).UART_Tx    => '0',--CM2_UART_Tx_internal,
      to_CM_in.CM(2).TMS        => plXVC_TMS(1),
      to_CM_in.CM(2).TDI        => plXVC_TDI(1),
      to_CM_in.CM(2).TCK        => plXVC_TCK(1),
      to_CM_out.CM(1).UART_Tx   => CM1_UART_Tx,
      to_CM_out.CM(1).TMS       => CM1_TMS,
      to_CM_out.CM(1).TDI       => CM1_TDI,
      to_CM_out.CM(1).TCK       => CM1_TCK,
      to_CM_out.CM(2).UART_Tx   => CM2_UART_Tx,
      to_CM_out.CM(2).TMS       => CM2_TMS,
      to_CM_out.CM(2).TDI       => CM2_TDI,
      to_CM_out.CM(2).TCK       => CM2_TCK,
      clk_C2C                   => clk_C2C_PHY,
      DRP_clk(1)                => AXI_C2C_aurora_init_clk,
      DRP_clk(2)                => AXI_C2C_aurora_init_clk,
      DRP_clk(3)                => AXI_C2C_aurora_init_clk,
      DRP_clk(4)                => AXI_C2C_aurora_init_clk,
      reset_c2c                 => reset_c2c,
      C2C_REFCLK_FREQ           => c2c_refclk_freq,
      CM_C2C_Mon                => CM_C2C_Mon,
      CM_C2C_Ctrl               => CM_C2C_Ctrl,
      UART_Rx                   => C2C_pB_UART_rx,
      UART_Tx                   => C2C_pB_UART_tx
      );
  CM1_PS_RST   <= plXVC_PS_RST(0);
  CM2_PS_RST   <= plXVC_PS_RST(1);

  

  -------------------------------------------------------------------------------
  -- JTAG
  -------------------------------------------------------------------------------
  CPLD_JTAG_BUF_TMS : OBUFT
    port map (
      T => not CPLD_enable_jtag,
      I => plXVC_TMS(2),
      O => CPLD_TMS);
  CPLD_JTAG_BUF_TDI : OBUFT
    port map (
      T => not CPLD_enable_jtag ,
      I => plXVC_TDI(2),
      O => CPLD_TDI);
  CPLD_JTAG_BUF_TCK : OBUFT
    port map (
      T => not CPLD_enable_jtag ,
      I => plXVC_TCK(2),
      O => CPLD_TCK);
  plXVC_TDO(0) <= CM1_TDO_int;
  plXVC_TDO(1) <= CM2_TDO;
  plXVC_TDO(2) <= CPLD_TDO;

  plXVC_1: entity work.plXVC_intf
    generic map (
      --TCK_RATIO         => 1,
      COUNT           => XVC_COUNT,
      IRQ_LENGTH      => 1,
      ALLOCATED_MEMORY_RANGE => to_integer(AXI_RANGE_PLXVC)
      )           
    port map (
      clk_axi         => axi_clk,
      reset_axi_n     => axi_reset_n,
      readMOSI        => AXI_BUS_RMOSI(6),
      readMISO        => AXI_BUS_RMISO(6),
      writeMOSI       => AXI_BUS_WMOSI(6),
      writeMISO       => AXI_BUS_WMISO(6),
      TMS             => plXVC_TMS,
      TDI             => plXVC_TDI,
      TDO             => plXVC_TDO,
      TCK             => plXVC_TCK,
      PS_RST          => plXVC_PS_RST);

  -------------------------------------------------------------------------------
  -- Clocking
  -------------------------------------------------------------------------------
  onboardCLK_1: onboardCLK
    port map (
      clk_200Mhz => clk_200Mhz,
      clk_50Mhz  => AXI_C2C_aurora_init_clk,
      clk_125Mhz => clk_125Mhz,
      reset      =>  SI_init_reset,--'0',
      locked     => clk_200Mhz_locked,
      clk_in1_n  => onboard_clk_n,
      clk_in1_p  => onboard_clk_p);
  reset_200Mhz <= not clk_200Mhz_locked ;

  -------------------------------------------------------------------------------
  -- extra clock monitoring
  -------------------------------------------------------------------------------
  ibufds_CLK_LHC : IBUFDS
    port map (
      I  => CLK_LHC_P,
      IB => CLK_LHC_N,      
      O  => local_CLK_LHC);
  BUFG_CLK_LHC : BUFGCE
    port map (
      I  => local_CLK_LHC,
      O  => clk_LHC,
      CE => Clocking_Ctrl.LHC_CLK_IBUF_EN);
  rate_counter_LHC: entity work.rate_counter
    generic map (
      CLK_A_1_SECOND => AXI_MASTER_CLK_FREQ)
    port map (
      clk_A         => axi_clk,
      clk_B         => clk_LHC,
      reset_A_async => axi_reset or (not Clocking_Ctrl.LHC_CLK_IBUF_EN),
      event_b       => '1',
      rate          => Clocking_Mon.LHC_CLK_FREQ);
  ibufds_CLK_HQ : IBUFDS
    port map (
      I  => CLK_HQ_P,
      IB => CLK_HQ_N,
      O  => local_CLK_HQ);
  BUFG_CLK_HQ : BUFGCE
    port map (
      I  => local_CLK_HQ,
      O  => clk_HQ,
      CE => Clocking_Ctrl.HQ_CLK_IBUF_EN);
  rate_counter_HQ: entity work.rate_counter
    generic map (
      CLK_A_1_SECOND => AXI_MASTER_CLK_FREQ)
    port map (
      clk_A         => axi_clk,
      clk_B         => clk_HQ,
      reset_A_async => axi_reset or (not Clocking_Ctrl.HQ_CLK_IBUF_EN),
      event_b       => '1',
      rate          => Clocking_Mon.HQ_CLK_FREQ);
  ibufds_CLK_TTC : IBUFDS
    port map (
      I  => CLK_TTC_P,
      IB => CLK_TTC_N,
      O  => local_CLK_TTC);
  BUFG_CLK_TTC : BUFGCE
    port map (
      I  => local_CLK_TTC,
      O  => clk_TTC,
      CE => Clocking_Ctrl.TTC_CLK_IBUF_EN);
  rate_counter_TTC: entity work.rate_counter
    generic map (
      CLK_A_1_SECOND => AXI_MASTER_CLK_FREQ)
    port map (
      clk_A         => axi_clk,
      clk_B         => clk_TTC,
      reset_A_async => axi_reset or (not Clocking_Ctrl.TTC_CLK_IBUF_EN),
      event_b       => '1',
      rate          => Clocking_Mon.TTC_CLK_FREQ);

  c2c_user_clk: for iLane in 1 to 4 generate   
    rate_counter_C2C_USER: entity work.rate_counter
      generic map (
        CLK_A_1_SECOND => AXI_MASTER_CLK_FREQ)
      port map (
        clk_A         => axi_clk,
        clk_B         => clk_C2C_PHY(iLane),
        reset_A_async => axi_reset or (CM_C2C_Mon.Link(iLane).status.phy_mmcm_lol),
        event_b       => '1',
        rate          => CM_C2C_Mon.Link(iLane).USER_CLK_FREQ);
  end generate c2c_user_clk;
  
  rate_counter_AXI: entity work.rate_counter
    generic map (
      CLK_A_1_SECOND => AXI_MASTER_CLK_FREQ)
    port map (
      clk_A         => axi_clk,
      clk_B         => axi_clk,
      reset_A_async => axi_reset,
      event_b       => '1',
      rate          => Clocking_Mon.AXI_CLK_FREQ);

  TCDS_clk_buf : IBUFDS_GTE4
    generic map (
      REFCLK_EN_TX_PATH   => '0',
      REFCLK_HROW_CK_SEL => "00")
    port map (
      CEB   => '0',
      I     => REFCLK_REC_P,
      IB    => REFCLK_REC_N,
      O     => open,
      ODIV2 => refclk_TCDS);

  TCDS_gtbuf : BUFG_GT
    port map (
      CE       => '1',
      CEMASK   => '1',
      CLR      => '0',
      CLRMASK  => '0',
      DIV      => "000",
      I        => refclk_TCDS,
      O        => clk_TCDS);
  
  rate_counter_TCDS: entity work.rate_counter
    generic map (
      CLK_A_1_SECOND => AXI_MASTER_CLK_FREQ)
    port map (
      clk_A         => axi_clk,
      clk_B         => clk_TCDS,
      reset_A_async => axi_reset,
      event_b       => '1',
      rate          => Clocking_Mon.TCDS_CLK_FREQ
      );
  
	  	-- register connection
	--ctrl registers
--	reset_from_software							<= ctrl(reset_from_software_REG)(reset_from_software_RANGE);
	
--    -- status registers
--    status(GLOBAL_DATE_REG)(GLOBAL_DATE_RANGE)                     <= GLOBAL_DATE;
--    status(GLOBAL_TIME_REG)(GLOBAL_TIME_RANGE)                     <= GLOBAL_TIME;
--    status(TOP_VER_REG)(TOP_VER_RANGE)                             <= TOP_VER;
--    status(TOP_SHA_REG)(TOP_SHA_RANGE)                             <= TOP_SHA;
--    status(CON_VER_REG)(CON_VER_RANGE)                             <= CON_VER;
--    status(CON_SHA_REG)(CON_SHA_RANGE)                             <= CON_SHA;
--    status(HOG_VER_REG)(HOG_VER_RANGE)                             <= HOG_VER;
--    status(HOG_SHA_REG)(HOG_SHA_RANGE)                             <= HOG_SHA;
--    status(xil_defaultlib_VER_REG)(xil_defaultlib_VER_RANGE)       <= xil_defaultlib_VER;
--    status(xil_defaultlib_SHA_REG)(xil_defaultlib_SHA_RANGE)       <= xil_defaultlib_SHA;
--    status(Default_VER_REG)(Default_VER_RANGE)                     <= Default_VER;
--    status(Default_SHA_REG)(Default_SHA_RANGE)                     <= Default_SHA;  

end architecture structure;
