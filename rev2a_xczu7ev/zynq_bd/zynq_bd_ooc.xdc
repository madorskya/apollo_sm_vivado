################################################################################

# This XDC is used only for OOC mode of synthesis, implementation
# This constraints file contains default clock frequencies to be used during
# out-of-context flows such as OOC Synthesis and Hierarchical Designs.
# This constraints file is not used in normal top-down synthesis (default flow
# of Vivado)
################################################################################
create_clock -name INIT_CLK -period 20 [get_ports INIT_CLK]
create_clock -name C2C1_PHY_refclk -period 10 [get_ports C2C1_PHY_refclk]
create_clock -name C2C1B_PHY_refclk -period 10 [get_ports C2C1B_PHY_refclk]
create_clock -name C2C2_PHY_refclk -period 10 [get_ports C2C2_PHY_refclk]
create_clock -name C2C2B_PHY_refclk -period 10 [get_ports C2C2B_PHY_refclk]
create_clock -name PL_MEM_RAM_PORTB_clk -period 10 [get_ports PL_MEM_RAM_PORTB_clk]
create_clock -name PL_MEM_CM_RAM_PORTB_clk -period 10 [get_ports PL_MEM_CM_RAM_PORTB_clk]

################################################################################