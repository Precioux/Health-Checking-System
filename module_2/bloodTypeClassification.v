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
---  Module Name: Blood Type Classification
---  Description: Module 2
-----------------------------------------------------------*/
`timescale 1 ns/1 ns


module tb_BloodTypeclassification ();

reg [2:0] w;
wire  y;
	
	bloodTypeClassification test_multiplexer4x1 (w,y);


	initial 
		begin
		w <= 3'b000;
		# 10 ;
		w <= 3'b001;
		# 10 ;
		w <= 3'b010;
		# 10 ;
		w <= 3'b011;
		# 10 ;
		w <= 3'b100;
		# 10 ;
		w <= 3'b101;
		# 10 ;
		w <= 3'b110;
		# 10 ;
		w <= 3'b111;
		# 10 ;
		$finish;
	end

endmodule

module bloodTypeClassification(
 bloodType,
 bloodClass);
input [2:0] bloodType;
output bloodClass;

mux4x1 m({bloodType[2],bloodType[2],bloodType[2],bloodType[2]},{bloodType[1],bloodType[0]},bloodClass);

endmodule

module mux4x1 (
	input [3:0] w,
	input [1:0]	sel,
	output y
);
	wire [1:0] notSel;
    wire [3:0] andOut;
    not gN0(notSel[0],sel[0]);
    not gN1(notSel[1],sel[1]);
    and gA0(andOut[0],notSel[1],notSel[0],w[0]);
    and gA1(andOut[1],notSel[1],sel[0],w[1]);
    and gA2(andOut[2],sel[1],notSel[0],w[2]);
    and gA3(andOut[3],sel[1],sel[0],w[3]);
    or gO0(y,andOut[0],andOut[1],andOut[2],andOut[3]);

endmodule