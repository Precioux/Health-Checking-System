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
---  Module Name: Control Unit
---  Description: Module7:
-----------------------------------------------------------*/
`timescale 1 ns/1 ns

`define AAA 3'b001 // IDLE
`define BBB 3'b010 // ACTIVE
`define CCC 3'b011 // REQUEST
`define DDD 3'b100 // STORE
`define EEE 3'b101 // TRAP
`define FFF 3'b111 // FFF

`define STATE_IDLE    3'b001
`define STATE_ACTIVE  3'b010
`define STATE_REQUEST 3'b011
`define STATE_STORE   3'b100
`define STATE_TRAP    3'b101
`define STATE_OTHERS  3'b111


module ControlUnit (
	input        rst       ,  // async  reset
	input        clk       , // clock  posedge
	input        request   , // request input (asynch) 
	input        confirm   , // confirm input 
	input  [3:0] password   , // password from user
	input  [7:0] Inputdata  , // Input data from user
	//output     write_en, // conf mem write enable
	output [6:0] dataQ      ,
	output [6:0] dataP
	);

	/* write your code here */
	wire enQ,enP;
	fsm sMachine(clk,request,confirm,password,Inputdata,enQ,enP);
	register regQ(rst,clk,enQ,Inputdata,dataQ);
	register regP(rst,clk,enP,Inputdata,dataP);
	/* write your code here */

endmodule