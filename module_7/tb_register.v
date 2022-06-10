/*--  *******************************************************
--  Computer Architecture Course, Laboratory Sources 
--  Amirkabir University of Technology (Tehran Polytechnic)
--  Department of Computer Engineering (CE-AUT)
--  https://ce[dot]aut[dot]ac[dot]ir
--  *******************************************************
--  All Rights reserved (C) 2020-2021
--  *******************************************************
--  Student ID  : 9833016              9839039
--  Student Name: Amirhossein Poolad & Samin Mahdipour
--  Student Mail: 
--  *******************************************************
--  Additional Comments:
--
--*/

/*-----------------------------------------------------------
---  Module Name: Register - Test Bench
-----------------------------------------------------------*/
`timescale 1ns / 1ps
module tb_register(
    );
	reg rst;
	reg clk;
	reg en;
	reg [7:0] din;
	wire [6:0] qout;
	
	register regi(rst,clk,en,din,qout);
	
	initial
	begin
	clk = 1'b0;
	repeat(30)
	#10 clk=~clk;
	end
	
	initial 
		begin
		rst <= 1'b0;
		#40;
		rst<= 1'b1;
		din <= 4'b01001111;
		en <= 1'b0;
		#20;
		en<= 1'b1;
		#20;
		din <= 4'b01001011;
		#5;
		rst <= 1'b0;
		#20;
		$finish;
		end
endmodule
