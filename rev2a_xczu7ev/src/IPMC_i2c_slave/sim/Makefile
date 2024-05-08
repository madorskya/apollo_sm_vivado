# Makefile                                                                                                                                                                                    

# defaults                                                                                                                                                                                    
SIM ?= questa
TOPLEVEL_LANG ?= vhdl
PROJECT_ROOT_PATH=$(PWD)/../../../

WAVES = 1

SIM_ARGS=-gCLK_FREQ=50000000
SIM_ARGS+=-gALLOCATED_MEMORY_RANGE=4096 
#SIM_ARGS=-gCLK_FREQ=50000000

VHDL_SOURCES += \
	$(PROJECT_ROOT_PATH)src/misc/types.vhd \
	$(PROJECT_ROOT_PATH)src/misc/counter.vhd \
	$(PROJECT_ROOT_PATH)src/misc/asym_dualport_ram.vhd \
	$(PROJECT_ROOT_PATH)regmap_helper/axiReg/axiRegWidthPkg_32.vhd \
	$(PROJECT_ROOT_PATH)regmap_helper/axiReg/axiRegPkg.vhd \
	$(PROJECT_ROOT_PATH)regmap_helper/axiReg/axiReg.vhd \
	$(PROJECT_ROOT_PATH)src/IPMC_i2c_slave/i2c_slave.vhd \
	$(PROJECT_ROOT_PATH)src/IPMC_i2c_slave/IPMC_i2c_slave.vhd \
	$(PROJECT_ROOT_PATH)src/IPMC_i2c_slave/sim/testbench.vhd


# TOPLEVEL is the name of the toplevel module in your Verilog or VHDL file
#TOPLEVEL = ipmc_i2c_slave
TOPLEVEL = testbench_wrapper

# MODULE is the basename of the Python test file
MODULE = tb_IPMI_i2c_slave

# include cocotb's make rules to take care of the simulator setup                                                                                                                             
include $(shell cocotb-config --makefiles)/Makefile.sim
