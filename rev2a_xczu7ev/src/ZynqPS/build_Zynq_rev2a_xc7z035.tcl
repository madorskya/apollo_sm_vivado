source ${apollo_root_path}/bd/Xilinx_Helpers.tcl

#create a block design called "zynq_bd"
#create_bd_design -dir ./ $bd_name
create_bd_design -dir ${apollo_root_path}/Projects/$build_name $bd_name

set AXI_ADDR_WIDTH 32

#helpers for building AXI things
source ${apollo_root_path}/bd/axi_helpers.tcl
source ${apollo_root_path}/bd/Xilinx_AXI_slaves.tcl
source ${apollo_root_path}/bd/Xilinx_Cores.tcl

#================================================================================
#  Create and configure the basic zynq processing system.
#  build_CPU contains CPU parameters includeing the MIO and peripheral configs
#================================================================================
puts "Building CPU"
source ${apollo_root_path}/src/ZynqPS/xc7z/build_CPU_rev2.tcl

#================================================================================
#  Create an AXI interconnect
#================================================================================
set AXI_INTERCONNECT_NAME AXI_INTERCONNECT
set AXI_C2C_INTERCONNECT_NAME AXI_C2C_INTERCONNECT

set PL_MASTER PL
set PL_M      AXIM_${PL_MASTER}
set PL_M_CLK  ${AXI_MASTER_CLK}
set PL_M_RSTN ${AXI_PRIMARY_MASTER_RSTN}
set PL_M_FREQ [get_property CONFIG.FREQ_HZ [get_bd_pin ${AXI_MASTER_CLK}]]
AXI_PL_MASTER_PORT "name ${PL_M} axi_clk ${PL_M_CLK} axi_rstn ${PL_M_RSTN} axi_freq ${PL_M_FREQ}"

set AXI_MASTER_CLK_FREQ [get_property CONFIG.FREQ_HZ [get_bd_pin ${AXI_MASTER_CLK}]]
Add_Global_Constant AXI_MASTER_CLK_FREQ integer ${AXI_MASTER_CLK_FREQ}

puts "  Primary interconnect"
[BUILD_AXI_INTERCONNECT ${AXI_INTERCONNECT_NAME} ${AXI_MASTER_CLK} ${AXI_PRIMARY_MASTER_RSTN} [list ${ZYNQ_NAME}/M_AXI_GP0 ${PL_M}] [list ${AXI_MASTER_CLK} ${PL_M_CLK}] [list ${AXI_PRIMARY_MASTER_RSTN} ${PL_M_RSTN}]]


#build the C2C interconnect
puts "  C2C interconnect"
[BUILD_AXI_INTERCONNECT ${AXI_C2C_INTERCONNECT_NAME} ${AXI_MASTER_CLK} ${AXI_C2C_MASTER_RSTN} [list ${ZYNQ_NAME}/M_AXI_GP1] [list ${AXI_MASTER_CLK}] [list ${AXI_C2C_MASTER_RSTN}]]
set_property CONFIG.STRATEGY {1} [get_bd_cells ${AXI_C2C_INTERCONNECT_NAME}]


puts "Building interrupt controller"
#add interrupt controller
set IRQ0_INTR_CTRL IRQ0_INTR_CTRL
AXI_IP_IRQ_CTRL [dict create \
		 device_name ${IRQ0_INTR_CTRL} \
		 irq_dest ${ZYNQ_NAME}/IRQ_F2P \
		 axi_control [dict create \
		    axi_interconnect ${::AXI_INTERCONNECT_NAME} \
		    axi_clk ${::AXI_MASTER_CLK} \
		    axi_rstn ${::AXI_PRIMARY_SLAVE_RSTN} \
		    axi_freq ${::AXI_MASTER_CLK_FREQ} \
		    ] \
		 dt_data {    compatible = "xlnx,axi-intc-4.1", "xlnx,xps-intc-1.00.a", "generic-uio"; \
                              interrupt-parent = <&intc>; \
                              interrupts = <0 89 0>; \
                              xlnx,kind-of-intr = <0x0>; \
                              label = "$device_name"; \
                              linux,uio-name = "$device_name";\
                         }\
		]
puts "Adding init clk"
set INIT_CLK init_clk
create_bd_port -dir I -type clk ${INIT_CLK}
set_property CONFIG.FREQ_HZ ${AXI_MASTER_CLK_FREQ} [get_bd_ports ${INIT_CLK}]


#================================================================================
#  Configure and add AXI slaves
#================================================================================
puts "Adding IP from yaml"
source -quiet ${apollo_root_path}/bd/add_slaves_from_yaml.tcl
yaml_to_bd "${apollo_root_path}/configs/${build_name}/config.yaml"

GENERATE_AXI_ADDR_MAP_C "${apollo_root_path}/configs/${build_name}/autogen/AXI_slave_addrs.h"
GENERATE_AXI_ADDR_MAP_VHDL "${apollo_root_path}/configs/${build_name}/autogen/AXI_slave_pkg.vhd"
read_vhdl "${apollo_root_path}/configs/${build_name}/autogen/AXI_slave_pkg.vhd"

#========================================
#  Finish up
#========================================

regenerate_bd_layout

set_property CONFIG.STRATEGY {1} [get_bd_cells ${AXI_C2C_INTERCONNECT_NAME}]
validate_bd_design

write_bd_layout -force -format pdf -orientation portrait ${apollo_root_path}/doc/zynq_bd.pdf

make_wrapper -files [get_files zynq_bd.bd] -top -import -force
save_bd_design

close_bd_design "zynq_bd"


Generate_Global_package