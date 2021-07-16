`timescale 1ns / 1ps

module AESmain(clk,finalout);
    input clk;
    output [7:0] finalout;

wire [127:0] tempout;

AEScipher u1(.clk(clk),.datain(128’hdda97ca4864cdfe06eaf70a0ec0d7191),.key(128’h2b7e151628aed2a7abf7158809cf4f3c),.dataout(tempout));

assign finalout = tempout[127:120];

endmodule
