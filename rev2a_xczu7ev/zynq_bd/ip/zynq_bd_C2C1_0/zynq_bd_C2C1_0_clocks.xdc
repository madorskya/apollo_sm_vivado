set xs_aclk       [get_clocks -of_objects [get_ports s_aclk]]
set xs_axi_lite_aclk       [get_clocks -of_objects [get_ports s_axi_lite_aclk]]



# Ignore paths from the write clock to the read data registers for Asynchronous Distributed RAM based FIFO




set_disable_timing -from CLK -to O [filter [all_fanout -from [get_ports axi_c2c_phy_clk] -flat -endpoints_only -only_cells] {PRIMITIVE_SUBGROUP==dram || PRIMITIVE_SUBGROUP==LUTRAM}]
set_disable_timing -from CLK -to O [filter [all_fanout -from [get_ports s_axi_lite_aclk] -flat -endpoints_only -only_cells] {PRIMITIVE_SUBGROUP==dram || PRIMITIVE_SUBGROUP==LUTRAM}]

#Independent DIST RAM FIFO constraints in AXILITE-MASTER, INDEPENDENT mode 
#read to write

# Ignore paths from the write clock to the read data registers for Asynchronous Distributed RAM based FIFO


set_max_delay -from [get_pins -filter {REF_PIN_NAME =~C} -of [get_cells -hierarchical -filter {NAME =~*axi_lite_master_gen.reset_sync_lite_mst/sync_reset_out_reg}]] -to [get_pins -filter {REF_PIN_NAME =~PRE} -of [get_cells -hierarchical -filter {NAME =~*axi_lite_master_gen.axi_chip2chip_lite_master_inst/fifo_reset_reg}]] -datapath_only [get_property -min PERIOD $xs_axi_lite_aclk]
#set_max_delay -from [get_pins -hierarchical -filter {NAME =~*axi_lite_master_gen.reset_sync_lite_mst/sync_reset_out_reg/C}] -to [get_pins -hierarchical -filter {NAME =~*axi_lite_master_gen.axi_chip2chip_lite_master_inst/fifo_reset_reg/PRE}] -datapath_only [get_property -min PERIOD $xs_axi_lite_aclk]
