`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/30/2025 02:35:23 PM
// Design Name: 
// Module Name: Multiseg_Driver_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module Multiseg_Driver_tb();
reg clk;
reg[15:0] bcd_in;

wire[3:0] seg_anode;
wire[6:0] seg_cathode;

Multiseg_Driver uut(.clk(clk), .bcd_in(bcd_in), .seg_anode(seg_anode), .seg_cathode(seg_cathode));

initial begin 
clk = 0;
forever #5 clk = ~clk; // 10 ns
end

initial begin
    bcd_in = 16'h2345; // 1111
    #11500;// 1100 clock cycles
    bcd_in = 16'h4856; // 111
    #110500;// 1100 clock cycles
    bcd_in = 16'h2019; // 76
    #11500;// 1100 clock cycles
    bcd_in = 16'h1732; // 6
    #11500;// 1100 clock cycles
    $stop;
end


endmodule
