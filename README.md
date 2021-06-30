# 6bit-mips
Simple 6-bit processor that can add, subtract, load and jump not zero.

# Setup:
To run this project you can use a simulator like Xilinx.

# Technologies:
- VHDL

# Description:
## Instructions:
| Memory | RTL | Assembly code |
| :-: | :-: | :-: |
|00Rx00 <br> Value <br> Next instruction | Rx <- M[PC] | LOAD Rx, Value |
| 01RxRy <br> Next instruction | Rx <- Rx + Ry | ADD Rx, Ry |
| 10RxRy <br> Next instruction | Rx <- Rx - Ry | SUB Rx, Ry |
| 11Rx00 <br> Memory address <br> Next instrution | if (Rx != 0) PC <- M[PC] <br> else PC <- PC + 1 | JNZ Rx, Address |
