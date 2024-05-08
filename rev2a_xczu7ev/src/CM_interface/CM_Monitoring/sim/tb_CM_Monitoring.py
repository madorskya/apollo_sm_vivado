import logging
import cocotb
import math

from enum import IntEnum

#import sys, os
##Add the path sim/ (in the root of the project) to python so we can us common sim python libs
#path2add = os.path.normpath(
#    os.path.abspath(
#        os.path.join(
#            os.path.dirname(__file__),
#            os.path.pardir,
#            '../../../../sim/')
#    )
#)
#if (not (path2add in sys.path)) :
#    sys.path.append(path2add)
#from cocotb_monitor import sim_monitor


from cocotb.clock import Clock
from cocotb.triggers import Timer, RisingEdge, FallingEdge, ReadOnly, ClockCycles, First, Edge
from cocotb.regression import TestFactory
from cocotb.result import TestFailure
#for get_sim_time
import cocotb.utils as utils


# cocotb ext
from cocotbext.uart import UartSource


AXI_CLK_MHZ = 50
AXI_CLK_PERIOD_NS = 1000.0/(AXI_CLK_MHZ)

def CreateSensorMessage(address,data,reserved=0,v2=False):
    print(address,data,reserved,v2)
    #validate address
    if not isinstance(address,int):
        address = int(address,0)
    if ( (v2 and (address > 0x3FF)) or
         (not v2 and (address > 0xFF)) or
         address < 0):
        raise ValueError("Address 0x%08X out of range" % (address))                         
    #validate reseved
    if not isinstance(reserved,int):
        reserved = int(reserved,0)
    if (v2 and (reserved > 0xF)):
        raise ValueError("Reserved out of range")                         
    #validate data
    if not isinstance(data,int):
        data = int(data,0)
        
    ret=[]
    if v2:
        #sof header with first 6bits of sensor number
        ret.append(0xC0 | ((address  >> 4)&0x3F) )
        #data byte 0 with 4 lsb of sensor number and 2 reserved bits
        ret.append(0x00 | ((address  << 2)&0x3C) | (reserved >> 2 )&0x03 ) 
        #data byte 1 with 2 lsb of the reseved bits and 4 sensor MSB bits
        ret.append(0x00 | ((reserved << 4)&0x30) | (data     >> 12)&0x0F ) 
        #data byte 2 with data bits 11 downto 6
        ret.append(0x00 | ((data     >> 6)&0x3F) ) 
        #data byte 3 with data bits  5 downto 0
        ret.append(0x00 | ((data         )&0x3F) )
        print("v2")
    else:
        #sof header with first 6bits of sensor number
        ret.append(0x80 | ((address  >> 2)&0x3F) )
        #data byte 0 with 2 lsb of sensor number and 6 reserved bits
        ret.append(0x00 | ((address  << 4)&0x30) | (data >> 12)&0x0F )
        #data byte 2 with data bits 11 downto 6
        ret.append(0x00 | ((data     >> 6)&0x3F) )             
        #data byte 3 with data bits  5 downto  0
        ret.append(0x00 | ((data     >> 0)&0x3F) )             
        print("v1")
    print(ret)

        
    return ret



class TB(object):
    def __init__(self, dut, debug=False):
        self.dut = dut
        self.uart = UartSource(dut.uart_rx, baud=115200, bits=8)
        self.dut.enable_axi_writes <= 1
        self.dut.baud_16x_count <= 0x1B
        self.dut.sm_timeout_value <= 0xFFFFFFFF
        self.dut.error_reset <= 0
        self.done = 0
        self.mem = [0]*(2**9)
        
    async def reset(self, duration=10000):
        self.dut.log.debug("AXI RESET")
        # set reset
        self.dut.reset <= 1
        #wait duration ns
        await Timer(duration,units='ns')
        #align to clock clk        
        await RisingEdge(self.dut.clk)
        # release reset
        self.dut.reset.value = 0
        self.dut.log.debug("AXI reset Finished")


        
    async def UART_rx(self,transactions):
 
        #wait for things to be up and running
        await FallingEdge(self.dut.uart_reset)
        await Timer(0.5,units='ms')
        await RisingEdge(self.dut.clk)
        


        print(transactions)

        for transaction in transactions:
            print(transaction)
            for byte in transaction:
                await self.uart.write([byte])
                await self.uart.wait()

        await Timer(0.5,units='ms')
        
    async def AXI_RAM(self):
        class AXI_STATE(IntEnum):
            INIT = 0
            WAIT = 1
            READ = 2
            WRITE = 3
            WRESPONSE = 4
        state = AXI_STATE.INIT
        data=0xdeadbeef
        addr=0

        #wait for things to be up and running
        await FallingEdge(self.dut.reset)

        while True:            
            if self.dut.reset.value == 1:
                #reset
                state = AXI_STATE.INIT                
                #wait for reset to be de-asserted
                await FallingEdge(self.dut.reset)
            else:
                #wait for next clock tick
                await RisingEdge(self.dut.clk)

                #this is the only pulse we send out that needs to be zeroed
                self.dut.writeMISO.response_valid.value = 0
                self.dut.readMISO.data_valid.value = 0

                
                if state == AXI_STATE.INIT:
                    self.dut.readMISO.ready_for_address.value = 0
                    self.dut.writeMISO.ready_for_address.value = 0
                    self.dut.writeMISO.ready_for_data.value = 0                        
                    state = AXI_STATE.WAIT
                elif state == AXI_STATE.WAIT:
                    
                    if ( self.dut.readMISO.ready_for_address.value == 1 and
                         self.dut.readMOSI.address_valid.value == 1):
                        #do a read
                        addr = int(self.dut.readMOSI.address.value)
                        state = AXI_STATE.READ

                        self.dut.readMISO.ready_for_address.value  = 0
                        self.dut.writeMISO.ready_for_address.value = 0
                        self.dut.writeMISO.ready_for_data.value = 0

                        
                    elif ( self.dut.writeMISO.ready_for_address.value == 1 and
                           self.dut.writeMOSI.address_valid.value == 1):
                        #process a write
                        addr = int(self.dut.writeMOSI.address.value)
                        if (self.dut.writeMISO.ready_for_data.value == 1 and
                            self.dut.writeMOSI.data_valid.value == 1):
                            #we are already ready for the data, so grab it. 
                            print("Write 0x%08X to 0x%08X" % (self.dut.writeMOSI.data.value,addr))
                            self.mem[int(math.floor(addr/4))] = self.dut.writeMOSI.data.value
                            state = AXI_STATE.WRESPONSE
                            self.dut.writeMISO.ready_for_data.value = 0                        
                        else:
                            self.dut.writeMISO.ready_for_data.value = 1                      
                            state = AXI_STATE.WRITE
                            
                        self.dut.readMISO.ready_for_address.value  = 0
                        self.dut.writeMISO.ready_for_address.value = 0

                    else:
                        self.dut.readMISO.ready_for_address.value  = 1
                        self.dut.writeMISO.ready_for_address.value = 1
                        self.dut.writeMISO.ready_for_data.value = 1

                    await First(Edge(self.dut.readMOSI.address_valid),
                                Edge(self.dut.writeMOSI.address_valid))

                elif state == AXI_STATE.READ:
                    if self.dut.readMOSI.ready_for_data.value == 1:
                        #master is read, send the data
                        print("Read 0x%08X from 0x%08X" % (self.mem[int(math.floor(addr/4))],addr))
                        self.dut.readMISO.data.value = self.mem[int(math.floor(addr/4))]
                        self.dut.readMISO.data_valid.value = 1
                        state = AXI_STATE.WAIT                    
                elif state == AXI_STATE.WRITE:
                    if (self.dut.writeMISO.ready_for_data.value == 1 and
                        self.dut.writeMOSI.data_valid.value == 1):
                              print("Write 0x%08X to 0x%08X" % (self.dut.writeMOSI.data.value,addr))
                              self.mem[int(math.floor(addr/4))] = self.dut.writeMOSI.data.value
                              state = AXI_STATE.WRESPONSE
                elif state == AXI_STATE.WRESPONSE:
                    if self.dut.writeMOSI.ready_for_response.value == 1:
                        self.dut.writeMISO.response_valid.value = 1
                        self.dut.writeMISO.response.value = 0
                        
                        state = AXI_STATE.WAIT
            
                        
async def run_test(dut):
    tb = TB(dut)

    #setup transactions_v1 to test
    transactions = []

    #fill the first 4 sensors with v1 packets
    for i in range(0,4):
        try:
            transactions.append(CreateSensorMessage(i  ,i))
        except:
            print("Invalid transaction at "+str(i))
            pass

    #overlap register 3 with a v2 packet.  Write v2 packets to 4-7
    for i in range(3,8):
        try:
            transactions.append(CreateSensorMessage( i      ,0xF000 + (i),0,True))
        except:
            print("Invalid transaction at "+str(i))
            pass

    #write to the last v1 sensor
    transactions.append(CreateSensorMessage((2**8) -1, 0x1234))

    #write to the last v2 sensor
    transactions.append(CreateSensorMessage((2**10) -1, 0xAAAA,0,True))
        
    #start the clocks
    cocotb.fork(Clock(dut.clk,AXI_CLK_PERIOD_NS ,units='ns').start())  #AXI clock
    
    #for simulation c-routines
    cocotb.fork(tb.reset(10*AXI_CLK_PERIOD_NS))
    cocotb.fork(tb.AXI_RAM())


    #Send the V1 transactions
    await cocotb.fork(tb.UART_rx(transactions))
    await Timer(10,units='us')
    with open("mem_dump.txt",'w') as outFile:        
        for i in range(0,len(tb.mem),8):
            outFile.write("0x%04X:" % (i*4))
            start = i
            end = i + 8
            if end > len(tb.mem):
                end = len(tb.mem)   
            for j in range(start,end):
                outFile.write(" %08X" % (tb.mem[j]))
            outFile.write("\n")
        
    
    
factory = TestFactory(run_test)
factory.generate_tests()
