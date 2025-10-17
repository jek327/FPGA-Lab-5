`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/30/2025 01:42:36 PM
// Design Name: 
// Module Name: Multiseg_Driver
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module Multiseg_Driver(clk, bcd_in, seg_anode, seg_cathode);
input clk;
input[15:0] bcd_in;

output[3:0] seg_anode;
output[6:0] seg_cathode;

wire[3:0] bcd_val;

anode_generator ag1(.clk(clk), .bcd_in(bcd_in), .seg_anode(seg_anode), .bcd_out(bcd_val));
segment_7_binary seg7b(.data_in(bcd_val), .seg(seg_cathode));


endmodule
