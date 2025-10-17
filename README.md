# FPGA-Lab-5
Project Description:
In this project, we will design a multi-digit seven-segment display driver capable of showing numbers with up to four digits on the FPGA board. The design includes two main submodules: (1) a BCD to 7-segment decoder that converts each 4-bit BCD input into a 7-bit segment pattern, and (2) an anode generator that rapidly cycles through the four anodes to display all digits simultaneously through multiplexing. By integrating these modules, the FPGA will display multi-digit numbers such as 67 or 1234 in real time.

Instructions:
1) First add bcd to 7 segment display submodule to project.
2) Then create anode generator module
3) Next create multisegdriver module which connects both anode generator and bcd to 7 seg display
4) Then nmake sure to simulate, synthesize and implement
5) Generate bitsream and finally test inputs on FPGA board
