`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

module ledFSM(
input clk,
input x,
output Q
    );

wire t;
assign t= x;
FDRE #(.INIT(1'b0)) Q0_FF (.C(clk), .R(1'b0), .CE(1'b1), .D(t), .Q(Q));

endmodule
