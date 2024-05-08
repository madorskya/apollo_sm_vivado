# MCU to zynq CM monitoring

The sensor structures for the PL UART monitoring stream is as follows:

The CM uC will send four bytes via UART at 115200(or other).
Each byte will consist of two bits of byte type (MSbs) and six bits of data (LSbs).

### V1 (Original)
The two bit sequence of 0b10 indicates a start of frame byte and a 0b00 indicates a data byte.
This leaves each transaction with 24 bits of data which will have 8 bits of sensor ID followed by 16 bits of data.
The sensor number will be mapped into PL RAM at a known offset.
The format of the 16 data bits is open and any linear transform can be performed on it by the address table for the status display.

```
Ex:
Sensor ID: 0x72
Data     :0xCAFE

UART sends
0x9C (0b10 011100)
0x2C (0b00 101100)
0x2B (0b00 101011)
0x3E (0b00 111110)
```


### V2
A new SOF sequence of 0b11 is used to differentiate the V2 version of the message packet.
Now there are 5 bytes sent, which leaves 30 bits to use.
These are 10bits of sensor ID, 4 bits of reserved data, and 16 bits of data.

```
Ex:
Sensor ID: 0x372
Reseved  : 0b1001
Data     : 0xCAFE

UART sends
0xF7 (0b11 110111)
0x0A (0b00 001010)
0x1C (0b00 011100)
0x2B (0b00 101011)
0x3E (0b00 111110)
```


## Other info

At the moment, there is no resetting of these values in the PL, so an initial resetting of the values to zero by the uC is recommended
If there are any failures during the UART capture, the system goes back to looking for a start of frame byte and drops all data until it finds one.
The firmware keeps track of the number of incorrect byte types and has a flag to note that it hasn't gotten any data for over a second.
The extra byte type pattern of 0b01 is reserved for future use.
