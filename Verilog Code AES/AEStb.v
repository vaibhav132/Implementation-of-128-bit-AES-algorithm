`timescale 1ns / 1ps

module AEStb;

	
	reg clk;

	
	wire [7:0] finalout;

	
	AESmain uut (
		.clk(clk), 
		.finalout(finalout)
	);

	initial begin
		
		clk = 0;
		
		#100;
        
		

	end
      
endmodule

