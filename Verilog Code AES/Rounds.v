`timescale 1ns / 1ps

module Rounds(clk,rc,data,keyin,keyout,rndout);
input clk;
input [3:0]rc;
input [127:0]data;
input [127:0]keyin;
output [127:0]keyout;
output [127:0]rndout;

wire [127:0] sb,sr,mcl;

KeyGeneration t0(rc,keyin,keyout);
SubBytes t1(data,sb);
ShiftRow t2(sb,sr);
MixColumn t3(sr,mcl);
assign rndout= keyout^mcl;

endmodule
