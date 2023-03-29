`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/11/2023 02:03:58 AM
// Design Name: 
// Module Name: Clock_divider
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
module Clock_divider(
input clkold,
output reg clk
    );

reg[27:0] counter=28'd0;
parameter DIVISOR = 28'd1000;
always @(posedge clkold)
begin
 counter <= counter + 28'd1;
 if(counter>=(DIVISOR-1))
  counter <= 28'd0;
 clk <= (counter<DIVISOR/2)?1'b1:1'b0;
end
endmodule

