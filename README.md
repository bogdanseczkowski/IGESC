IGESC - FPGA based sinusoidal 3phase BLDC motor driver [WIP]
Platform: Xilinx SPARTAN 3E xc3s500e-4fg320
Dev Board: Digilent Spartan-3E Starter Board
IDE: Xilinx ISE 14.7
License: MIT

DONE:
- lookup table based SPWM generator
- H bridge low/high side switching
- 3 phase extension
- ability to stop PWM counter
- Reverse

To DO:
- microblaze based control
- CAN + RS232 / ETHERNET? MODBUS?
- IPD - initial position detection
- HW based encoder support
- Eletronics (VESC fork)
- Regenerative Braking
Known problems:
- Lookup table is not optimally implemented
- Currently in if it works don't touch it state
