import logging
import cocotb
import math

from enum import IntEnum

from pprint import pprint

import inspect

import sys
sys.path.insert(1, '../../../sim/')

from cocotb_monitor import sim_monitor

from cocotb.clock import Clock
from cocotb.triggers import Timer, RisingEdge, FallingEdge, ReadOnly, ClockCycles, First, Edge
from cocotb.regression import TestFactory
from cocotb.result import TestFailure
#for get_sim_time
import cocotb.utils as utils

# cocotb ext
from cocotbext.i2c import I2cMaster
from cocotbext.axi import AxiLiteReadBus, AxiLiteWriteBus, AxiLiteBus, AxiLiteMaster


AXI_CLK_MHZ = 50
AXI_CLK_PERIOD_NS = 1000.0/(AXI_CLK_MHZ)

class TB(object):
    def __init__(self, dut, debug=False):
        self.dut = dut
        self.i2c = I2cMaster(sda=dut.SDA_o,sda_o=dut.SDA_i,
                             scl=dut.SCL,scl_o=dut.SCL,
                             speed=400e3)
        self.axi_master = AxiLiteMaster(AxiLiteBus.from_prefix(dut,"slave_i2c"),
                                        dut.clk_axi,
                                        dut.reset_axi_n,
                                        False)

        print(self.dut.IPMC_i2c_slave_1)
        print(self.dut.IPMC_i2c_slave_1.asym_ram_tdp_1)
        print(self.dut.IPMC_i2c_slave_1.asym_ram_tdp_1.ram)
        
    async def reset(self, duration=10000):
        self.dut.log.debug("AXI RESET")
        # set reset
        self.dut.reset_axi_n.value = 0
        #wait duration ns
        await Timer(duration,units='ns')
        #align to clock clk        
        await RisingEdge(self.dut.clk_axi)
        # release reset
        self.dut.reset_axi_n.value = 1
        self.dut.log.debug("AXI reset Finished")

    async def wait_for_reset(self):
        #wait for things to be up and running
        await RisingEdge(self.dut.reset_axi_n)
        await Timer(0.5,units='ms')
        await RisingEdge(self.dut.clk_axi)

        

    async def i2c_run(self):

        #wait for things to be up and running
        self.wait_for_reset()

        data = b'\xde\xad\xbe\xef'
        await self.i2c.write(0x60,b'\x00'+data)
        

        await Timer(0.5,units='ms')

    async def heartbeat(self):
        
        #wait for things to be up and running
        self.wait_for_reset()
        await Timer(10,units='ms')
        
        while True:            
            await RisingEdge(self.dut.clk_axi)
#            await self.axi_master.read(0x1FFF,4)
#            await self.axi_master.read(0x1FFB,4)
            await self.axi_master.read(0xA8007FFC,4)
            await self.axi_master.read(0xA8008000,4)
            await Timer(10,units='sec')

    def RenderSlave(self,indent="    ",slave=0):
        ret = indent+"Slave:"+str(slave)+"\n"
        for i in range(0,4):
            ret = ret+ indent + "  %d: "%(i)
            for j in range (0,4):
                offset=((slave*16)+(i*4)+j)*4                
                ret = ret + "0x%02X%02X%02X%02X "%(self.dut.IPMC_i2c_slave_1.asym_ram_tdp_1.ram[offset+3].value,
                                                   self.dut.IPMC_i2c_slave_1.asym_ram_tdp_1.ram[offset+2].value,
                                                   self.dut.IPMC_i2c_slave_1.asym_ram_tdp_1.ram[offset+1].value,
                                                   self.dut.IPMC_i2c_slave_1.asym_ram_tdp_1.ram[offset+0].value)
#                offset=((slave*16)+(i*4)+j)                
#                ret = ret + "0x%08X "%(self.dut.IPMC_i2c_slave_1.asym_ram_tdp_1.ram[offset].value)

            ret = ret+"\n"
        return ret
    def MonitorMessage(self):
        ret = "\n    Linux_booted: %d\n" %(self.dut.linux_booted)
        ret = ret + self.RenderSlave("    ",0)
        ret = ret + self.RenderSlave("    ",6)
        ret = ret + self.RenderSlave("    ",7)
        return ret

            
async def run_test(dut):
    tb = TB(dut)

    monitor = sim_monitor.sim_monitor(10,tb.MonitorMessage)
    cocotb.fork(monitor.SimMonitor())

    
    #setup transactions_v1 to test
    transactions = []

        
    #start the clocks
    cocotb.fork(Clock(dut.clk_axi,AXI_CLK_PERIOD_NS ,units='ns').start())  #AXI clock
    
    #for simulation c-routines
    cocotb.fork(tb.reset(10*AXI_CLK_PERIOD_NS))

    cocotb.fork(tb.i2c_run())
    cocotb.fork(tb.heartbeat())

    await Timer(65,units='sec')
        
    
    
factory = TestFactory(run_test)
factory.generate_tests()
