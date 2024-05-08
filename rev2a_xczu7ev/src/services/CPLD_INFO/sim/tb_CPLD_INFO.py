import logging
import cocotb
import math

from enum import IntEnum


from cocotb.clock import Clock
from cocotb.triggers import Timer, RisingEdge, FallingEdge, ReadOnly, ClockCycles, First, Edge
from cocotb.regression import TestFactory
from cocotb.result import TestFailure
#for get_sim_time
import cocotb.utils as utils

import sys
sys.path.insert(1, '../../../../sim/')

from cocotb_monitor import sim_monitor



AXI_CLK_MHZ = 50
AXI_CLK_PERIOD_NS = 1000.0/(AXI_CLK_MHZ)



class TB(object):
    def __init__(self, dut, debug=False):
        self.dut = dut
        self.dut.clk_div.value = 0x80
        
    async def reset(self, duration=10000):
        self.dut.log.debug("AXI RESET")
        # set reset
        self.dut.reset.value = 1
        #wait duration ns
        await Timer(duration,units='ns')
        #align to clock clk        
        await RisingEdge(self.dut.clk)
        # release reset
        self.dut.reset.value = 0
        self.dut.log.debug("AXI reset Finished")

    async def wait_for_reset(self):
        #wait for things to be up and running
        await FallingEdge(self.dut.reset)
        await Timer(0.1,units='ms')
        await RisingEdge(self.dut.clk)

    async def get_CPLD_in_bad_state(self):
        self.dut.CPLD_clk_out.value = 0
        await Timer(1000,units='ns')
        self.dut.CPLD_clk_out.value = 1
        await Timer(1000,units='ns')
        self.dut.CPLD_clk_out.value = 0

        

    def MonitorMessage(self):
#        return "State: "+ str(self.dut.cpld_info_1.intf_state.value)+" Frame Pos: "+str(self.dut.cpld_info_1.frame_pos.value)
        return ""
    
async def run_test(dut):
    tb = TB(dut)

    monitor = sim_monitor.sim_monitor(10,tb.MonitorMessage)
    cocotb.fork(monitor.SimMonitor())
    
    #start the clocks
    cocotb.fork(Clock(dut.clk,AXI_CLK_PERIOD_NS ,units='ns').start())  #AXI clock
    
    #for simulation c-routines
#    cocotb.fork(tb.reset(100*AXI_CLK_PERIOD_NS))
    cocotb.fork(tb.reset(1000*AXI_CLK_PERIOD_NS))
    cocotb.fork(tb.get_CPLD_in_bad_state())

    #await cocotb.fork(tb.CPLD(0xdeadbeef))
    await Timer(100,units='ms')
        
    
    
factory = TestFactory(run_test)
factory.generate_tests()
