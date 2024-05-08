# Makefile                                                                                                                                                                                    

# defaults                                                                                                                                                                                    
SIM ?= questa
TOPLEVEL_LANG ?= vhdl
PROJECT_ROOT_PATH=$(PWD)/../../../../

WAVES = 1

VHDL_SOURCES += \
	$(PROJECT_ROOT_PATH)src/misc/types.vhd \
	$(PROJECT_ROOT_PATH)src/misc/counter.vhd \
	$(PROJECT_ROOT_PATH)regmap_helper/axiReg/axiRegWidthPkg_32.vhd \
	$(PROJECT_ROOT_PATH)regmap_helper/axiReg/axiRegPkg.vhd \
	$(PROJECT_ROOT_PATH)regmap_helper/axiReg/axiRegMaster.vhd \
	$(PROJECT_ROOT_PATH)src/CM_interface/picoblaze/uart_rx6.vhd \
	$(PROJECT_ROOT_PATH)src/CM_interface/CM_Monitoring/CM_Monitoring.vhd \

# TOPLEVEL is the name of the toplevel module in your Verilog or VHDL file                                                                                                                    
#TOPLEVEL = CM_Monitoring
TOPLEVEL = cm_monitoring

# MODULE is the basename of the Python test file                                                                                                                                              
MODULE = tb_CM_Monitoring

# include cocotb's make rules to take care of the simulator setup                                                                                                                             
include $(shell cocotb-config --makefiles)/Makefile.sim
