`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////



module TOPLED(
input clkin,btnD,
output [15:0]led
    );
    wire clk,digsel,qsec;
    wire direction;
    wire msb;
    wire lsb;
    wire dir;
    reg x;
    wire [17:0]register1;
    qsec_clks slowit (.clkin(clkin), .greset(btnD), .clk(clk), .digsel(digsel), .qsec(qsec));
    
//assign msb=register1[17];
//assign lsb=register1[0];
//assign x = (msb) ? x : (lsb) ? !x : 0;
//assign x = ((msb) ~^ (lsb)) ? x : 0;
//assign x = ((msb) ^ (lsb)) ? ~x : 0;
//assign x=0; 
//assign x = ((msb) ^ (lsb)) ? ~x : 0;
wire y;
wire z;
wire w;
wire T2;
 wire [5:0] timeout; 
//assign x= (btnD == 1'b0) ? 0:1;
initial begin
x=0;
end

//assign y = (register1 == 18'h38000) ? 1'b1 : (register1 == 18'h00007) ? 1'b0 : x ;
always @* begin
   
  if (register1 == 18'h38000) begin
    x <= 1'b1;
  end else if (register1 == 18'h00007) begin
    x <= 1'b0;
  end
end
 Time_Counter sec (.Inc(qsec), .R(1'b0), .clk(clk), .CE(1'b1), .Q(timeout));
 //assign T2 = timeout[2];
wire [23:0] RingOut;
RingCounter ring (.digsel(digsel), .clk(clk), .q(RingOut));
assign T2 = RingOut[0];
led_shifter ledLR (.clk(T2),.CE(1'b1),.x(x), .Q(register1));
//ledFSM fsm (.clk(clk), .x(w), .Q(dir)) ; 
 
 
 assign  led=register1[17:1];
    
    
    
    
    
endmodule
