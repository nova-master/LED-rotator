`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

module led_shifter (
input clk,CE, 
input x,
output [17:0]Q
    );
    
wire [17:0] t;
assign t[0]=(Q[1]&x) | (~x&Q[17]) ;
assign t[1]=(Q[2]&x) | (~x&Q[0]) ;
assign t[2]=(Q[3]&x) | (~x&Q[1]) ;
assign t[3]=(Q[4]&x) | (~x&Q[2]) ;
assign t[4]=(Q[5]&x) | (~x&Q[3]) ;
assign t[5]=(Q[6]&x) | (~x&Q[4]) ;
assign t[6]=(Q[7]&x) | (~x&Q[5]) ;
assign t[7]=(Q[8]&x) | (~x&Q[6]) ;
assign t[8]=(Q[9]&x) | (~x&Q[7]) ;
assign t[9]=(Q[10]&x) | (~x&Q[8]) ;
assign t[10]=(Q[11]&x) | (~x&Q[9]) ;
assign t[11]=(Q[12]&x) | (~x&Q[10]) ;
assign t[12]=(Q[13]&x) | (~x&Q[11]) ;
assign t[13]=(Q[14]&x) | (~x&Q[12]) ;
assign t[14]=(Q[15]&x) | (~x&Q[13]) ;
assign t[15]=(Q[16]&x) | (~x&Q[14]) ;
assign t[16]=(Q[17]&x) | (~x&Q[15]) ;
assign t[17]=(Q[0]&x) | (~x&Q[16]) ;


FDRE #(.INIT(1'b0)) Q0_FF (.C(clk), .R(1'b0), .CE(CE), .D(t[0]), .Q(Q[0]));
FDRE #(.INIT(1'b0)) Q1_FF (.C(clk), .R(1'b0), .CE(CE), .D(t[1]), .Q(Q[1]));
FDRE #(.INIT(1'b0)) Q2_FF (.C(clk), .R(1'b0), .CE(CE), .D(t[2]), .Q(Q[2]));
FDRE #(.INIT(1'b0)) Q3_FF (.C(clk), .R(1'b0), .CE(CE), .D(t[3]), .Q(Q[3]));
FDRE #(.INIT(1'b0)) Q4_FF (.C(clk), .R(1'b0), .CE(CE), .D(t[4]), .Q(Q[4]));
FDRE #(.INIT(1'b1)) Q5_FF (.C(clk), .R(1'b0), .CE(CE), .D(t[5]), .Q(Q[5]));
FDRE #(.INIT(1'b1)) Q6_FF (.C(clk), .R(1'b0), .CE(CE), .D(t[6]), .Q(Q[6]));
FDRE #(.INIT(1'b1)) Q7_FF (.C(clk), .R(1'b0), .CE(CE), .D(t[7]), .Q(Q[7]));
FDRE #(.INIT(1'b0)) Q8_FF (.C(clk), .R(1'b0), .CE(CE), .D(t[8]), .Q(Q[8]));
FDRE #(.INIT(1'b0)) Q9_FF (.C(clk), .R(1'b0), .CE(CE), .D(t[9]), .Q(Q[9]));
FDRE #(.INIT(1'b0)) Q10_FF (.C(clk), .R(1'b0), .CE(CE), .D(t[10]), .Q(Q[10]));
FDRE #(.INIT(1'b0)) Q11_FF (.C(clk), .R(1'b0), .CE(CE), .D(t[11]), .Q(Q[11]));
FDRE #(.INIT(1'b0)) Q12_FF (.C(clk), .R(1'b0), .CE(CE), .D(t[12]), .Q(Q[12]));
FDRE #(.INIT(1'b0)) Q13_FF (.C(clk), .R(1'b0), .CE(CE), .D(t[13]), .Q(Q[13]));
FDRE #(.INIT(1'b0)) Q14_FF (.C(clk), .R(1'b0), .CE(CE), .D(t[14]), .Q(Q[14]));
FDRE #(.INIT(1'b0)) Q15_FF (.C(clk), .R(1'b0), .CE(CE), .D(t[15]), .Q(Q[15]));
FDRE #(.INIT(1'b0)) Q16_FF (.C(clk), .R(1'b0), .CE(CE), .D(t[16]), .Q(Q[16]));
FDRE #(.INIT(1'b0)) Q17_FF (.C(clk), .R(1'b0), .CE(CE), .D(t[17]), .Q(Q[17]));

endmodule