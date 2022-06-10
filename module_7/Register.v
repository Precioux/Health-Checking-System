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
---  Module Name: Register 

-----------------------------------------------------------*/
`timescale 1 ns/1 ns

module register (

	input        rst ,
	input        clk ,
	input        en ,
	input  [7:0] din ,
	output reg [6:0] qout
);
//reg [6:0] qout;
	/* write your code here */
	always @(posedge clk or negedge rst)
		if (~rst)
			qout = 7'b0000000;
		else if (en)
			qout = din[6:0];
	/* write your code here */
endmodule
