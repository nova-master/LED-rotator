`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////


module RingCounter(
input digsel,
input clk,
output [23:0]q
    );
wire q0,q1,q2,q3,q4,q5,q6,q7,q8,q9,q10,q11,q12,q13,q14,q15,q16,q17,q18,q19,q20,q21,q22,q23;
FDRE #(.INIT(1'b0)) ringcounter0 (.C(clk), .R(1'b0), .CE(digsel), .D(q23), .Q(q0));
FDRE #(.INIT(1'b0)) ringcounter1 (.C(clk), .R(1'b0), .CE(digsel), .D(q0), .Q(q1));
FDRE #(.INIT(1'b0)) ringcounter2 (.C(clk), .R(1'b0), .CE(digsel), .D(q1), .Q(q2));
FDRE #(.INIT(1'b0)) ringcounter3 (.C(clk), .R(1'b0), .CE(digsel), .D(q2), .Q(q3));
FDRE #(.INIT(1'b0)) ringcounter4 (.C(clk), .R(1'b0), .CE(digsel), .D(q3), .Q(q4));
FDRE #(.INIT(1'b0)) ringcounter5 (.C(clk), .R(1'b0), .CE(digsel), .D(q4), .Q(q5));
FDRE #(.INIT(1'b0)) ringcounter6 (.C(clk), .R(1'b0), .CE(digsel), .D(q5), .Q(q6));
FDRE #(.INIT(1'b0)) ringcounter7 (.C(clk), .R(1'b0), .CE(digsel), .D(q6), .Q(q7));
FDRE #(.INIT(1'b0)) ringcounter8 (.C(clk), .R(1'b0), .CE(digsel), .D(q7), .Q(q8));
FDRE #(.INIT(1'b0)) ringcounter9 (.C(clk), .R(1'b0), .CE(digsel), .D(q8), .Q(q9));
FDRE #(.INIT(1'b0)) ringcounter10 (.C(clk), .R(1'b0), .CE(digsel), .D(q9), .Q(q10));
FDRE #(.INIT(1'b0)) ringcounter11 (.C(clk), .R(1'b0), .CE(digsel), .D(q10), .Q(q11));
FDRE #(.INIT(1'b0)) ringcounter12 (.C(clk), .R(1'b0), .CE(digsel), .D(q11), .Q(q12));
FDRE #(.INIT(1'b0)) ringcounter13 (.C(clk), .R(1'b0), .CE(digsel), .D(q12), .Q(q13));
FDRE #(.INIT(1'b0)) ringcounter14 (.C(clk), .R(1'b0), .CE(digsel), .D(q13), .Q(q14));
FDRE #(.INIT(1'b0)) ringcounter15 (.C(clk), .R(1'b0), .CE(digsel), .D(q14), .Q(q15));
FDRE #(.INIT(1'b0)) ringcounter16 (.C(clk), .R(1'b0), .CE(digsel), .D(q15), .Q(q16));
FDRE #(.INIT(1'b0)) ringcounter17 (.C(clk), .R(1'b0), .CE(digsel), .D(q16), .Q(q17));
FDRE #(.INIT(1'b0)) ringcounter18 (.C(clk), .R(1'b0), .CE(digsel), .D(q17), .Q(q18));
FDRE #(.INIT(1'b0)) ringcounter19 (.C(clk), .R(1'b0), .CE(digsel), .D(q18), .Q(q19));
FDRE #(.INIT(1'b0)) ringcounter20 (.C(clk), .R(1'b0), .CE(digsel), .D(q19), .Q(q20));
FDRE #(.INIT(1'b0)) ringcounter21 (.C(clk), .R(1'b0), .CE(digsel), .D(q20), .Q(q21));
FDRE #(.INIT(1'b1)) ringcounter22 (.C(clk), .R(1'b0), .CE(digsel), .D(q21), .Q(q22));
FDRE #(.INIT(1'b0)) ringcounter23 (.C(clk), .R(1'b0), .CE(digsel), .D(q22), .Q(q23));

assign q={q23,q22,q21,q20,q19,q18,q17,q16,q15,q14,q13,q12,q11,q10,q9,q8,q7,q6,q5,q4,q3,q2,q1,q0};

endmodule