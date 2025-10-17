`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/30/2025 01:55:32 PM
// Design Name: 
// Module Name: anode_generator
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


module anode_generator(clk, bcd_in, seg_anode, bcd_out);
input clk;
input[15:0] bcd_in;

output reg[3:0] seg_anode = 4'b1110;
output reg[3:0] bcd_out;

reg[9:0] g_count = 0; // 10 bits long so that we can go from 0 to 1023
reg [3:0] next_anode;
always@(posedge clk)
    begin 
    g_count <= g_count + 1;
    
    if (g_count == 1023) begin

    next_anode = {seg_anode[2:0], seg_anode[3]}; // goes in a left rotation (ones --> thousandths --> hundreds --> tenths ...)
    
    case (next_anode)
    4'b1110: bcd_out <= bcd_in[3:0]; // bcd_out is the first 4 bits for 1st digit
    4'b1101: bcd_out <= bcd_in[7:4]; // bcd_out is the next 4 bits for 2nd digit
    4'b1011: bcd_out <= bcd_in[11:8]; // bcd_out is the next 4 bits for 3rd digit
    4'b0111: bcd_out <= bcd_in[15:12]; // bcd_out is the next 4 bits for last digit
    endcase
    
    seg_anode <= next_anode;
    end
    end
endmodule
