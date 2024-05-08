

`timescale 1ps/1ps
module gtye3_master_timing_10g_gtye3_common_wrapper (
  input                                   [0:0] GTYE3_COMMON_BGBYPASSB,
  input                                   [0:0] GTYE3_COMMON_BGMONITORENB,
  input                                   [0:0] GTYE3_COMMON_BGPDB,
  input                                   [4:0] GTYE3_COMMON_BGRCALOVRD,
  input                                   [0:0] GTYE3_COMMON_BGRCALOVRDENB,
  input                                   [9:0] GTYE3_COMMON_DRPADDR,
  input                                   [0:0] GTYE3_COMMON_DRPCLK,
  input                                  [15:0] GTYE3_COMMON_DRPDI,
  input                                   [0:0] GTYE3_COMMON_DRPEN,
  input                                   [0:0] GTYE3_COMMON_DRPWE,
  input                                   [0:0] GTYE3_COMMON_GTGREFCLK0,
  input                                   [0:0] GTYE3_COMMON_GTGREFCLK1,
  input                                   [0:0] GTYE3_COMMON_GTNORTHREFCLK00,
  input                                   [0:0] GTYE3_COMMON_GTNORTHREFCLK01,
  input                                   [0:0] GTYE3_COMMON_GTNORTHREFCLK10,
  input                                   [0:0] GTYE3_COMMON_GTNORTHREFCLK11,
  input                                   [0:0] GTYE3_COMMON_GTREFCLK00,
  input                                   [0:0] GTYE3_COMMON_GTREFCLK01,
  input                                   [0:0] GTYE3_COMMON_GTREFCLK10,
  input                                   [0:0] GTYE3_COMMON_GTREFCLK11,
  input                                   [0:0] GTYE3_COMMON_GTSOUTHREFCLK00,
  input                                   [0:0] GTYE3_COMMON_GTSOUTHREFCLK01,
  input                                   [0:0] GTYE3_COMMON_GTSOUTHREFCLK10,
  input                                   [0:0] GTYE3_COMMON_GTSOUTHREFCLK11,
  input                                   [7:0] GTYE3_COMMON_PMARSVD0,
  input                                   [7:0] GTYE3_COMMON_PMARSVD1,
  input                                   [0:0] GTYE3_COMMON_QPLL0CLKRSVD0,
  input                                   [0:0] GTYE3_COMMON_QPLL0LOCKDETCLK,
  input                                   [0:0] GTYE3_COMMON_QPLL0LOCKEN,
  input                                   [0:0] GTYE3_COMMON_QPLL0PD,
  input                                   [2:0] GTYE3_COMMON_QPLL0REFCLKSEL,
  input                                   [0:0] GTYE3_COMMON_QPLL0RESET,
  input                                   [0:0] GTYE3_COMMON_QPLL1CLKRSVD0,
  input                                   [0:0] GTYE3_COMMON_QPLL1LOCKDETCLK,
  input                                   [0:0] GTYE3_COMMON_QPLL1LOCKEN,
  input                                   [0:0] GTYE3_COMMON_QPLL1PD,
  input                                   [2:0] GTYE3_COMMON_QPLL1REFCLKSEL,
  input                                   [0:0] GTYE3_COMMON_QPLL1RESET,
  input                                   [7:0] GTYE3_COMMON_QPLLRSVD1,
  input                                   [4:0] GTYE3_COMMON_QPLLRSVD2,
  input                                   [4:0] GTYE3_COMMON_QPLLRSVD3,
  input                                   [7:0] GTYE3_COMMON_QPLLRSVD4,
  input                                   [0:0] GTYE3_COMMON_RCALENB,
  input                                  [24:0] GTYE3_COMMON_SDM0DATA,
  input                                   [0:0] GTYE3_COMMON_SDM0RESET,
  input                                   [1:0] GTYE3_COMMON_SDM0WIDTH,
  input                                  [24:0] GTYE3_COMMON_SDM1DATA,
  input                                   [0:0] GTYE3_COMMON_SDM1RESET,
  input                                   [1:0] GTYE3_COMMON_SDM1WIDTH,

  output                                 [15:0] GTYE3_COMMON_DRPDO,
  output                                  [0:0] GTYE3_COMMON_DRPRDY,
  output                                  [7:0] GTYE3_COMMON_PMARSVDOUT0,
  output                                  [7:0] GTYE3_COMMON_PMARSVDOUT1,
  output                                  [0:0] GTYE3_COMMON_QPLL0FBCLKLOST,
  output                                  [0:0] GTYE3_COMMON_QPLL0LOCK,
  output                                  [0:0] GTYE3_COMMON_QPLL0OUTCLK,
  output                                  [0:0] GTYE3_COMMON_QPLL0OUTREFCLK,
  output                                  [0:0] GTYE3_COMMON_QPLL0REFCLKLOST,
  output                                  [0:0] GTYE3_COMMON_QPLL1FBCLKLOST,
  output                                  [0:0] GTYE3_COMMON_QPLL1LOCK,
  output                                  [0:0] GTYE3_COMMON_QPLL1OUTCLK,
  output                                  [0:0] GTYE3_COMMON_QPLL1OUTREFCLK,
  output                                  [0:0] GTYE3_COMMON_QPLL1REFCLKLOST,
  output                                  [7:0] GTYE3_COMMON_QPLLDMONITOR0,
  output                                  [7:0] GTYE3_COMMON_QPLLDMONITOR1,
  output                                  [0:0] GTYE3_COMMON_REFCLKOUTMONITOR0,
  output                                  [0:0] GTYE3_COMMON_REFCLKOUTMONITOR1,
  output                                  [1:0] GTYE3_COMMON_RXRECCLK0_SEL,
  output                                  [1:0] GTYE3_COMMON_RXRECCLK1_SEL,
  output                                  [3:0] GTYE3_COMMON_SDM0FINALOUT,
  output                                 [14:0] GTYE3_COMMON_SDM0TESTDATA,
  output                                  [3:0] GTYE3_COMMON_SDM1FINALOUT,
  output                                 [14:0] GTYE3_COMMON_SDM1TESTDATA
);



gtwizard_ultrascale_v1_7_6_gtye3_common #(
  .GTYE3_COMMON_A_SDM1DATA1_0                   (16'b0000000000000000),
  .GTYE3_COMMON_A_SDM1DATA1_1                   (9'b000000000),
  .GTYE3_COMMON_BGBYPASSB_TIE_EN                (1'b0),
  .GTYE3_COMMON_BGBYPASSB_VAL                   (1'b1),
  .GTYE3_COMMON_BGMONITORENB_TIE_EN             (1'b0),
  .GTYE3_COMMON_BGMONITORENB_VAL                (1'b1),
  .GTYE3_COMMON_BGPDB_TIE_EN                    (1'b0),
  .GTYE3_COMMON_BGPDB_VAL                       (1'b1),
  .GTYE3_COMMON_BGRCALOVRDENB_TIE_EN            (1'b0),
  .GTYE3_COMMON_BGRCALOVRDENB_VAL               (1'b1),
  .GTYE3_COMMON_BGRCALOVRD_TIE_EN               (1'b0),
  .GTYE3_COMMON_BGRCALOVRD_VAL                  (5'b10000),
  .GTYE3_COMMON_BIAS_CFG0                       (16'b0000000000000000),
  .GTYE3_COMMON_BIAS_CFG1                       (16'b0000000000000000),
  .GTYE3_COMMON_BIAS_CFG2                       (16'b0000000000000000),
  .GTYE3_COMMON_BIAS_CFG3                       (16'b0000000001000000),
  .GTYE3_COMMON_BIAS_CFG4                       (16'b0000000000000000),
  .GTYE3_COMMON_BIAS_CFG_RSVD                   (10'b0000000000),
  .GTYE3_COMMON_COMMON_CFG0                     (16'b0000000000000000),
  .GTYE3_COMMON_COMMON_CFG1                     (16'b0000000000000000),
  .GTYE3_COMMON_DRPADDR_TIE_EN                  (1'b0),
  .GTYE3_COMMON_DRPADDR_VAL                     (10'b0000000000),
  .GTYE3_COMMON_DRPCLK_TIE_EN                   (1'b0),
  .GTYE3_COMMON_DRPCLK_VAL                      (1'b0),
  .GTYE3_COMMON_DRPDI_TIE_EN                    (1'b0),
  .GTYE3_COMMON_DRPDI_VAL                       (16'b0000000000000000),
  .GTYE3_COMMON_DRPEN_TIE_EN                    (1'b0),
  .GTYE3_COMMON_DRPEN_VAL                       (1'b0),
  .GTYE3_COMMON_DRPWE_TIE_EN                    (1'b0),
  .GTYE3_COMMON_DRPWE_VAL                       (1'b0),
  .GTYE3_COMMON_GTGREFCLK0_TIE_EN               (1'b0),
  .GTYE3_COMMON_GTGREFCLK0_VAL                  (1'b0),
  .GTYE3_COMMON_GTGREFCLK1_TIE_EN               (1'b0),
  .GTYE3_COMMON_GTGREFCLK1_VAL                  (1'b0),
  .GTYE3_COMMON_GTNORTHREFCLK00_TIE_EN          (1'b0),
  .GTYE3_COMMON_GTNORTHREFCLK00_VAL             (1'b0),
  .GTYE3_COMMON_GTNORTHREFCLK01_TIE_EN          (1'b0),
  .GTYE3_COMMON_GTNORTHREFCLK01_VAL             (1'b0),
  .GTYE3_COMMON_GTNORTHREFCLK10_TIE_EN          (1'b0),
  .GTYE3_COMMON_GTNORTHREFCLK10_VAL             (1'b0),
  .GTYE3_COMMON_GTNORTHREFCLK11_TIE_EN          (1'b0),
  .GTYE3_COMMON_GTNORTHREFCLK11_VAL             (1'b0),
  .GTYE3_COMMON_GTREFCLK00_TIE_EN               (1'b0),
  .GTYE3_COMMON_GTREFCLK00_VAL                  (1'b0),
  .GTYE3_COMMON_GTREFCLK01_TIE_EN               (1'b0),
  .GTYE3_COMMON_GTREFCLK01_VAL                  (1'b0),
  .GTYE3_COMMON_GTREFCLK10_TIE_EN               (1'b0),
  .GTYE3_COMMON_GTREFCLK10_VAL                  (1'b0),
  .GTYE3_COMMON_GTREFCLK11_TIE_EN               (1'b0),
  .GTYE3_COMMON_GTREFCLK11_VAL                  (1'b0),
  .GTYE3_COMMON_GTSOUTHREFCLK00_TIE_EN          (1'b0),
  .GTYE3_COMMON_GTSOUTHREFCLK00_VAL             (1'b0),
  .GTYE3_COMMON_GTSOUTHREFCLK01_TIE_EN          (1'b0),
  .GTYE3_COMMON_GTSOUTHREFCLK01_VAL             (1'b0),
  .GTYE3_COMMON_GTSOUTHREFCLK10_TIE_EN          (1'b0),
  .GTYE3_COMMON_GTSOUTHREFCLK10_VAL             (1'b0),
  .GTYE3_COMMON_GTSOUTHREFCLK11_TIE_EN          (1'b0),
  .GTYE3_COMMON_GTSOUTHREFCLK11_VAL             (1'b0),
  .GTYE3_COMMON_PMARSVD0_TIE_EN                 (1'b0),
  .GTYE3_COMMON_PMARSVD0_VAL                    (8'b00000000),
  .GTYE3_COMMON_PMARSVD1_TIE_EN                 (1'b0),
  .GTYE3_COMMON_PMARSVD1_VAL                    (8'b00000000),
  .GTYE3_COMMON_POR_CFG                         (16'b0000000000000100),
  .GTYE3_COMMON_PPF0_CFG                        (16'b0000101101111111),
  .GTYE3_COMMON_PPF1_CFG                        (16'b0000101101111111),
  .GTYE3_COMMON_QPLL0CLKOUT_RATE                ("HALF"),
  .GTYE3_COMMON_QPLL0CLKRSVD0_TIE_EN            (1'b0),
  .GTYE3_COMMON_QPLL0CLKRSVD0_VAL               (1'b0),
  .GTYE3_COMMON_QPLL0LOCKDETCLK_TIE_EN          (1'b0),
  .GTYE3_COMMON_QPLL0LOCKDETCLK_VAL             (1'b0),
  .GTYE3_COMMON_QPLL0LOCKEN_TIE_EN              (1'b0),
  .GTYE3_COMMON_QPLL0LOCKEN_VAL                 (1'b1),
  .GTYE3_COMMON_QPLL0PD_TIE_EN                  (1'b0),
  .GTYE3_COMMON_QPLL0PD_VAL                     (1'b0),
  .GTYE3_COMMON_QPLL0REFCLKSEL_TIE_EN           (1'b0),
  .GTYE3_COMMON_QPLL0REFCLKSEL_VAL              (3'b001),
  .GTYE3_COMMON_QPLL0RESET_TIE_EN               (1'b0),
  .GTYE3_COMMON_QPLL0RESET_VAL                  (1'b0),
  .GTYE3_COMMON_QPLL0_CFG0                      (16'b0011001000011100),
  .GTYE3_COMMON_QPLL0_CFG1                      (16'b0001000000011000),
  .GTYE3_COMMON_QPLL0_CFG1_G3                   (16'b0001000000011000),
  .GTYE3_COMMON_QPLL0_CFG2                      (16'b0000011111001000),
  .GTYE3_COMMON_QPLL0_CFG2_G3                   (16'b0000011111001000),
  .GTYE3_COMMON_QPLL0_CFG3                      (16'b0000000100100000),
  .GTYE3_COMMON_QPLL0_CFG4                      (16'b0000000010100101),
  .GTYE3_COMMON_QPLL0_CP                        (10'b0001111111),
  .GTYE3_COMMON_QPLL0_CP_G3                     (10'b0000011111),
  .GTYE3_COMMON_QPLL0_FBDIV                     (32),
  .GTYE3_COMMON_QPLL0_FBDIV_G3                  (80),
  .GTYE3_COMMON_QPLL0_INIT_CFG0                 (16'b0000001010110010),
  .GTYE3_COMMON_QPLL0_INIT_CFG1                 (8'b00000000),
  .GTYE3_COMMON_QPLL0_LOCK_CFG                  (16'b0010010111101000),
  .GTYE3_COMMON_QPLL0_LOCK_CFG_G3               (16'b0010010111101000),
  .GTYE3_COMMON_QPLL0_LPF                       (10'b1011111110),
  .GTYE3_COMMON_QPLL0_LPF_G3                    (10'b1111111111),
  .GTYE3_COMMON_QPLL0_REFCLK_DIV                (1),
  .GTYE3_COMMON_QPLL0_SDM_CFG0                  (16'b0000000010000000),
  .GTYE3_COMMON_QPLL0_SDM_CFG1                  (16'b0000000000000000),
  .GTYE3_COMMON_QPLL0_SDM_CFG2                  (16'b0000000000000000),
  .GTYE3_COMMON_QPLL1CLKOUT_RATE                ("HALF"),
  .GTYE3_COMMON_QPLL1CLKRSVD0_TIE_EN            (1'b0),
  .GTYE3_COMMON_QPLL1CLKRSVD0_VAL               (1'b0),
  .GTYE3_COMMON_QPLL1LOCKDETCLK_TIE_EN          (1'b0),
  .GTYE3_COMMON_QPLL1LOCKDETCLK_VAL             (1'b0),
  .GTYE3_COMMON_QPLL1LOCKEN_TIE_EN              (1'b0),
  .GTYE3_COMMON_QPLL1LOCKEN_VAL                 (1'b0),
  .GTYE3_COMMON_QPLL1PD_TIE_EN                  (1'b0),
  .GTYE3_COMMON_QPLL1PD_VAL                     (1'b1),
  .GTYE3_COMMON_QPLL1REFCLKSEL_TIE_EN           (1'b0),
  .GTYE3_COMMON_QPLL1REFCLKSEL_VAL              (3'b001),
  .GTYE3_COMMON_QPLL1RESET_TIE_EN               (1'b0),
  .GTYE3_COMMON_QPLL1RESET_VAL                  (1'b1),
  .GTYE3_COMMON_QPLL1_CFG0                      (16'b0011001000011100),
  .GTYE3_COMMON_QPLL1_CFG1                      (16'b0001000000011000),
  .GTYE3_COMMON_QPLL1_CFG1_G3                   (16'b0001000000011000),
  .GTYE3_COMMON_QPLL1_CFG2                      (16'b0000011110000000),
  .GTYE3_COMMON_QPLL1_CFG2_G3                   (16'b0000011110000000),
  .GTYE3_COMMON_QPLL1_CFG3                      (16'b0000000100100000),
  .GTYE3_COMMON_QPLL1_CFG4                      (16'b0000000010100101),
  .GTYE3_COMMON_QPLL1_CP                        (10'b0001111111),
  .GTYE3_COMMON_QPLL1_CP_G3                     (10'b0000011111),
  .GTYE3_COMMON_QPLL1_FBDIV                     (66),
  .GTYE3_COMMON_QPLL1_FBDIV_G3                  (80),
  .GTYE3_COMMON_QPLL1_INIT_CFG0                 (16'b0000001010110010),
  .GTYE3_COMMON_QPLL1_INIT_CFG1                 (8'b00000000),
  .GTYE3_COMMON_QPLL1_LOCK_CFG                  (16'b0010000111101000),
  .GTYE3_COMMON_QPLL1_LOCK_CFG_G3               (16'b0010000111101000),
  .GTYE3_COMMON_QPLL1_LPF                       (10'b1011111100),
  .GTYE3_COMMON_QPLL1_LPF_G3                    (10'b1111111111),
  .GTYE3_COMMON_QPLL1_REFCLK_DIV                (1),
  .GTYE3_COMMON_QPLL1_SDM_CFG0                  (16'b0000000010000000),
  .GTYE3_COMMON_QPLL1_SDM_CFG1                  (16'b0000000000000000),
  .GTYE3_COMMON_QPLL1_SDM_CFG2                  (16'b0000000000000000),
  .GTYE3_COMMON_QPLLRSVD1_TIE_EN                (1'b0),
  .GTYE3_COMMON_QPLLRSVD1_VAL                   (8'b00000000),
  .GTYE3_COMMON_QPLLRSVD2_TIE_EN                (1'b0),
  .GTYE3_COMMON_QPLLRSVD2_VAL                   (5'b00000),
  .GTYE3_COMMON_QPLLRSVD3_TIE_EN                (1'b0),
  .GTYE3_COMMON_QPLLRSVD3_VAL                   (5'b00000),
  .GTYE3_COMMON_QPLLRSVD4_TIE_EN                (1'b0),
  .GTYE3_COMMON_QPLLRSVD4_VAL                   (8'b00000000),
  .GTYE3_COMMON_RCALENB_TIE_EN                  (1'b0),
  .GTYE3_COMMON_RCALENB_VAL                     (1'b1),
  .GTYE3_COMMON_RSVD_ATTR0                      (16'b0000000000000000),
  .GTYE3_COMMON_RSVD_ATTR1                      (16'b0000000000000000),
  .GTYE3_COMMON_RSVD_ATTR2                      (16'b0000000000000000),
  .GTYE3_COMMON_RSVD_ATTR3                      (16'b0000000000000000),
  .GTYE3_COMMON_RXRECCLKOUT0_SEL                (2'b00),
  .GTYE3_COMMON_RXRECCLKOUT1_SEL                (2'b00),
  .GTYE3_COMMON_SARC_EN                         (1'b1),
  .GTYE3_COMMON_SARC_SEL                        (1'b0),
  .GTYE3_COMMON_SDM0DATA_TIE_EN                 (1'b0),
  .GTYE3_COMMON_SDM0DATA_VAL                    (25'b0000000000000000000000000),
  .GTYE3_COMMON_SDM0INITSEED0_0                 (16'b0000000100010001),
  .GTYE3_COMMON_SDM0INITSEED0_1                 (9'b000010001),
  .GTYE3_COMMON_SDM0RESET_TIE_EN                (1'b0),
  .GTYE3_COMMON_SDM0RESET_VAL                   (1'b0),
  .GTYE3_COMMON_SDM0WIDTH_TIE_EN                (1'b0),
  .GTYE3_COMMON_SDM0WIDTH_VAL                   (2'b00),
  .GTYE3_COMMON_SDM1DATA_TIE_EN                 (1'b0),
  .GTYE3_COMMON_SDM1DATA_VAL                    (25'b0000000000000000000000000),
  .GTYE3_COMMON_SDM1INITSEED0_0                 (16'b0000000100010001),
  .GTYE3_COMMON_SDM1INITSEED0_1                 (9'b000010001),
  .GTYE3_COMMON_SDM1RESET_TIE_EN                (1'b0),
  .GTYE3_COMMON_SDM1RESET_VAL                   (1'b0),
  .GTYE3_COMMON_SDM1WIDTH_TIE_EN                (1'b0),
  .GTYE3_COMMON_SDM1WIDTH_VAL                   (2'b00),
  .GTYE3_COMMON_SIM_MODE                        ("FAST"),
  .GTYE3_COMMON_SIM_RESET_SPEEDUP               ("TRUE"),
  .GTYE3_COMMON_SIM_VERSION                     (1.0)
) common_inst (

  // inputs
  .GTYE3_COMMON_BGBYPASSB                       (GTYE3_COMMON_BGBYPASSB),
  .GTYE3_COMMON_BGMONITORENB                    (GTYE3_COMMON_BGMONITORENB),
  .GTYE3_COMMON_BGPDB                           (GTYE3_COMMON_BGPDB),
  .GTYE3_COMMON_BGRCALOVRD                      (GTYE3_COMMON_BGRCALOVRD),
  .GTYE3_COMMON_BGRCALOVRDENB                   (GTYE3_COMMON_BGRCALOVRDENB),
  .GTYE3_COMMON_DRPADDR                         (GTYE3_COMMON_DRPADDR),
  .GTYE3_COMMON_DRPCLK                          (GTYE3_COMMON_DRPCLK),
  .GTYE3_COMMON_DRPDI                           (GTYE3_COMMON_DRPDI),
  .GTYE3_COMMON_DRPEN                           (GTYE3_COMMON_DRPEN),
  .GTYE3_COMMON_DRPWE                           (GTYE3_COMMON_DRPWE),
  .GTYE3_COMMON_GTGREFCLK0                      (GTYE3_COMMON_GTGREFCLK0),
  .GTYE3_COMMON_GTGREFCLK1                      (GTYE3_COMMON_GTGREFCLK1),
  .GTYE3_COMMON_GTNORTHREFCLK00                 (GTYE3_COMMON_GTNORTHREFCLK00),
  .GTYE3_COMMON_GTNORTHREFCLK01                 (GTYE3_COMMON_GTNORTHREFCLK01),
  .GTYE3_COMMON_GTNORTHREFCLK10                 (GTYE3_COMMON_GTNORTHREFCLK10),
  .GTYE3_COMMON_GTNORTHREFCLK11                 (GTYE3_COMMON_GTNORTHREFCLK11),
  .GTYE3_COMMON_GTREFCLK00                      (GTYE3_COMMON_GTREFCLK00),
  .GTYE3_COMMON_GTREFCLK01                      (GTYE3_COMMON_GTREFCLK01),
  .GTYE3_COMMON_GTREFCLK10                      (GTYE3_COMMON_GTREFCLK10),
  .GTYE3_COMMON_GTREFCLK11                      (GTYE3_COMMON_GTREFCLK11),
  .GTYE3_COMMON_GTSOUTHREFCLK00                 (GTYE3_COMMON_GTSOUTHREFCLK00),
  .GTYE3_COMMON_GTSOUTHREFCLK01                 (GTYE3_COMMON_GTSOUTHREFCLK01),
  .GTYE3_COMMON_GTSOUTHREFCLK10                 (GTYE3_COMMON_GTSOUTHREFCLK10),
  .GTYE3_COMMON_GTSOUTHREFCLK11                 (GTYE3_COMMON_GTSOUTHREFCLK11),
  .GTYE3_COMMON_PMARSVD0                        (GTYE3_COMMON_PMARSVD0),
  .GTYE3_COMMON_PMARSVD1                        (GTYE3_COMMON_PMARSVD1),
  .GTYE3_COMMON_QPLL0CLKRSVD0                   (GTYE3_COMMON_QPLL0CLKRSVD0),
  .GTYE3_COMMON_QPLL0LOCKDETCLK                 (GTYE3_COMMON_QPLL0LOCKDETCLK),
  .GTYE3_COMMON_QPLL0LOCKEN                     (GTYE3_COMMON_QPLL0LOCKEN),
  .GTYE3_COMMON_QPLL0PD                         (GTYE3_COMMON_QPLL0PD),
  .GTYE3_COMMON_QPLL0REFCLKSEL                  (GTYE3_COMMON_QPLL0REFCLKSEL),
  .GTYE3_COMMON_QPLL0RESET                      (GTYE3_COMMON_QPLL0RESET),
  .GTYE3_COMMON_QPLL1CLKRSVD0                   (GTYE3_COMMON_QPLL1CLKRSVD0),
  .GTYE3_COMMON_QPLL1LOCKDETCLK                 (GTYE3_COMMON_QPLL1LOCKDETCLK),
  .GTYE3_COMMON_QPLL1LOCKEN                     (GTYE3_COMMON_QPLL1LOCKEN),
  .GTYE3_COMMON_QPLL1PD                         (GTYE3_COMMON_QPLL1PD),
  .GTYE3_COMMON_QPLL1REFCLKSEL                  (GTYE3_COMMON_QPLL1REFCLKSEL),
  .GTYE3_COMMON_QPLL1RESET                      (GTYE3_COMMON_QPLL1RESET),
  .GTYE3_COMMON_QPLLRSVD1                       (GTYE3_COMMON_QPLLRSVD1),
  .GTYE3_COMMON_QPLLRSVD2                       (GTYE3_COMMON_QPLLRSVD2),
  .GTYE3_COMMON_QPLLRSVD3                       (GTYE3_COMMON_QPLLRSVD3),
  .GTYE3_COMMON_QPLLRSVD4                       (GTYE3_COMMON_QPLLRSVD4),
  .GTYE3_COMMON_RCALENB                         (GTYE3_COMMON_RCALENB),
  .GTYE3_COMMON_SDM0DATA                        (GTYE3_COMMON_SDM0DATA),
  .GTYE3_COMMON_SDM0RESET                       (GTYE3_COMMON_SDM0RESET),
  .GTYE3_COMMON_SDM0WIDTH                       (GTYE3_COMMON_SDM0WIDTH),
  .GTYE3_COMMON_SDM1DATA                        (GTYE3_COMMON_SDM1DATA),
  .GTYE3_COMMON_SDM1RESET                       (GTYE3_COMMON_SDM1RESET),
  .GTYE3_COMMON_SDM1WIDTH                       (GTYE3_COMMON_SDM1WIDTH),

  // outputs
  .GTYE3_COMMON_DRPDO                           (GTYE3_COMMON_DRPDO),
  .GTYE3_COMMON_DRPRDY                          (GTYE3_COMMON_DRPRDY),
  .GTYE3_COMMON_PMARSVDOUT0                     (GTYE3_COMMON_PMARSVDOUT0),
  .GTYE3_COMMON_PMARSVDOUT1                     (GTYE3_COMMON_PMARSVDOUT1),
  .GTYE3_COMMON_QPLL0FBCLKLOST                  (GTYE3_COMMON_QPLL0FBCLKLOST),
  .GTYE3_COMMON_QPLL0LOCK                       (GTYE3_COMMON_QPLL0LOCK),
  .GTYE3_COMMON_QPLL0OUTCLK                     (GTYE3_COMMON_QPLL0OUTCLK),
  .GTYE3_COMMON_QPLL0OUTREFCLK                  (GTYE3_COMMON_QPLL0OUTREFCLK),
  .GTYE3_COMMON_QPLL0REFCLKLOST                 (GTYE3_COMMON_QPLL0REFCLKLOST),
  .GTYE3_COMMON_QPLL1FBCLKLOST                  (GTYE3_COMMON_QPLL1FBCLKLOST),
  .GTYE3_COMMON_QPLL1LOCK                       (GTYE3_COMMON_QPLL1LOCK),
  .GTYE3_COMMON_QPLL1OUTCLK                     (GTYE3_COMMON_QPLL1OUTCLK),
  .GTYE3_COMMON_QPLL1OUTREFCLK                  (GTYE3_COMMON_QPLL1OUTREFCLK),
  .GTYE3_COMMON_QPLL1REFCLKLOST                 (GTYE3_COMMON_QPLL1REFCLKLOST),
  .GTYE3_COMMON_QPLLDMONITOR0                   (GTYE3_COMMON_QPLLDMONITOR0),
  .GTYE3_COMMON_QPLLDMONITOR1                   (GTYE3_COMMON_QPLLDMONITOR1),
  .GTYE3_COMMON_REFCLKOUTMONITOR0               (GTYE3_COMMON_REFCLKOUTMONITOR0),
  .GTYE3_COMMON_REFCLKOUTMONITOR1               (GTYE3_COMMON_REFCLKOUTMONITOR1),
  .GTYE3_COMMON_RXRECCLK0_SEL                   (GTYE3_COMMON_RXRECCLK0_SEL),
  .GTYE3_COMMON_RXRECCLK1_SEL                   (GTYE3_COMMON_RXRECCLK1_SEL),
  .GTYE3_COMMON_SDM0FINALOUT                    (GTYE3_COMMON_SDM0FINALOUT),
  .GTYE3_COMMON_SDM0TESTDATA                    (GTYE3_COMMON_SDM0TESTDATA),
  .GTYE3_COMMON_SDM1FINALOUT                    (GTYE3_COMMON_SDM1FINALOUT),
  .GTYE3_COMMON_SDM1TESTDATA                    (GTYE3_COMMON_SDM1TESTDATA)
);

endmodule

