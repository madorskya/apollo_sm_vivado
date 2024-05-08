# Makefile                                                                                                                                                                                    

# defaults                                                                                                                                                                                   o 
SIM ?= questa
TOPLEVEL_LANG ?= vhdl
PROJECT_ROOT_PATH=$(PWD)/../../../

WAVES = 1

VHDL_SOURCES += \
	$(PROJECT_ROOT_PATH)services/CPLD_INFO/CPLD_INFO.vhd \
	$(PROJECT_ROOT_PATH)services/CPLD_INFO/sim/CPLD.vhd \
	$(PROJECT_ROOT_PATH)services/CPLD_INFO/sim/CPLD_tb.vhd \

# TOPLEVEL is the name of the toplevel module in your Verilog or VHDL file                                                                                                                    
#TOPLEVEL = CM_Monitoring
TOPLEVEL = cpld_tb

# MODULE is the basename of the Python test file                                                                                                                                              
MODULE = tb_CPLD_INFO

# include cocotb's make rules to take care of the simulator setup                                                                                                                             
include $(shell cocotb-config --makefiles)/Makefile.sim
