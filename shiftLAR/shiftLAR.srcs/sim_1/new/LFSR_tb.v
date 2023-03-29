`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
module led_shifter_tb;
  reg clkin;
  wire [15:0] led;
  
  TOPLED uut(
    .clkin(clkin),
    
    .led(led)
  );
  
  initial begin
    clkin = 0;
//   x = 0;
//    #10;
    
//    // Shift input 1010 through the shift register
//    x = 1; #1000;
//    x = 0; #100;
//    x = 1; #100;
 
  end
  
  always #5 clkin = ~clkin;
  
endmodule



