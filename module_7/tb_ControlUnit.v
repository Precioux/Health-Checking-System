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
---  Module Name: Control Unit Test Bench
---  Description: Module7:
-----------------------------------------------------------*/
`timescale 1 ns/1 ns
module tb_ControlUnit();
	reg rst;
	reg clk;
	reg request;
	reg confirm;
	reg [3:0] password;
	reg [7:0] Inputdata;
	wire [6:0] dataQ;
	wire [6:0] dataP;
	ControlUnit cu(rst,clk,request,confirm,password,Inputdata,dataQ,dataP);
	
	initial
	begin
	clk = 1'b1;
	repeat(30)
	#10 clk=~clk;
	end
	
	initial 
		begin
		#5
		request <= 1'b0;
		confirm <= 1'b0;
		#20;
		request <=1'b1;
		#20;
		password <= 4'b0000;
		confirm <= 1'b1;
		#40;
		Inputdata <= 8'b01111101;
		#20;
		Inputdata <= 8'b10101100;
		#40;
		request <= 1'b0;
		#40;
		$finish;
		// write your code here	
	end

endmodule
