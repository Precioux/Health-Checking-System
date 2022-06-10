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
---  Module Name: Finite State Machine
---  Description: Module7:
-----------------------------------------------------------*/
`timescale 1 ns/1 ns

`define STATE_IDLE    3'b001
`define STATE_ACTIVE  3'b010
`define STATE_REQUEST 3'b011
`define STATE_STORE   3'b100
`define STATE_TRAP    3'b101
`define STATE_OTHERS  3'b111


module fsm(
	input         clk       , // clock  posedge
	input         request   , // request input (asynch) 
	input         confirm   , // confirm input 
	input  [3:0] password   , // password from user
	input  [7:0] Inputdata  , // Input data from user
	output        qEnable   ,
	output        pEnable
    );
	 reg [2:0] state;
	parameter PASSWORD_ = 4'b0000;
  always @(posedge clk or negedge request)
    begin
      if(~request) state <= `STATE_IDLE;
      else
        case (state)
          `STATE_IDLE: 
            if(request) state <= `STATE_ACTIVE;
          `STATE_ACTIVE: 
            if(confirm && password == PASSWORD_) 
              state <= `STATE_REQUEST;
				else if (confirm && ~(password == PASSWORD_)) state <= `STATE_TRAP;
			 `STATE_REQUEST:
				if(confirm)
				  state <= `STATE_STORE;
        endcase
    end
  assign qEnable = confirm&state[2]&(~state[1])&(~state[0])&Inputdata[7];
  assign pEnable = confirm&state[2]&(~state[1])&(~state[0])&(~Inputdata[7]);


endmodule
