`timescale 1ns/1ps

typedef logic [7:0][1:0][3:0] spread_arr;
typedef logic [2:0] L;

module HF_tANS_recoder(
		input logic PHI,
		input logic RST,
		input logic I_F,
		input logic i_stream,
		output logic [1:0] BTR,
		output logic [2:0] o_stream,
		output logic [3:0] final_state);
	
	localparam spread_arr Aspread = 64'hC9B8A79685,
				Bspread = 64'hE3D2,
				Cspread = 64'hF1;

	localparam L LA = 3'b101,
			LB = 3'b010,
			LC = 3'b001;

	logic I_F0;
	logic I_F1;
	logic I_F2;
	
	logic CS0;
	logic CS1;
	logic CS2;
	logic CS3;

	logic [2:0] LS0;
	logic [2:0] LS1;
	logic [2:0] LS2;
	
	logic [3:0] LSC;

	logic [1:0] shift0;
	logic [1:0] shift1;
	
	logic [1:0] code_buffer;
	logic [1:0] symbol0;
	logic [1:0] symbol1;
	logic [1:0] symbol2;
	
	logic [7:0][1:0][3:0] spread;
	logic [7:0][1:0][3:0] match_spread;
	logic [7:0][1:0][3:0] state_spread;
	
	logic [3:0] state0;
	logic [3:0] next_state;
	
	always_ff @(posedge PHI or posedge RST) begin

		if (RST) begin
			state0 <= 4'b0000;
		
		end 
		else begin
			if (I_F2 == 1) begin
				case (symbol2) inside
					2'b?0:	state0 <= 4'b1000;
					2'b01:	state0 <= 4'b1000;
					2'b11:	state0 <= 4'b1111;
				endcase

			end else begin
				state0 <= next_state;
			end

			CS1 <= CS0;
			CS2 <= CS1;
			CS3 <= CS2;
		
			I_F0 <= I_F;
			I_F1 <= I_F0;
			I_F2 <= I_F1;

			symbol0 <= code_buffer;
			symbol1 <= symbol0;
			symbol2 <= symbol1;
	
			LS1 <= LS0;
			LS2 <= LS1;

			match_spread <= spread;
			state_spread <= match_spread;
	
			shift1 <= shift0;
		end
	end
	
	always_comb begin

		code_buffer[1] = CS1;
	
		code_buffer[0] = i_stream;
		
		CS0 = (code_buffer[0] & (~code_buffer[1]));

	end
	
	always_comb begin
		LS0 = 3'b0;
		unique case (symbol0)
			2'b00:	LS0 = LA;
			2'b01:	LS0 = 3'b0;
			2'b10:	LS0 = LB;
			2'b11:	LS0 = LC;
		endcase
	end

	always_comb begin
		spread = 64'b0;
		unique case (symbol0)
			2'b00:	spread = Aspread[7:0];
			2'b01:	spread = 64'b0;
			2'b10:	spread = Bspread;
			2'b11:	spread = Cspread;
		endcase
	end

	always_comb begin
		LSC = 0;
		
		if (LS1 > 0) begin
			LSC = (LS1*2)-1;
		end

		shift0 = 0;

		if ((next_state>>0) <= LSC) begin
			shift0 = 0;

		end else if ((next_state>>1) <= LSC) begin
			shift0 = 1;

		end else if ((next_state>>2) <= LSC) begin
			shift0 = 2;
	
		end else if ((next_state>>3) <= LSC) begin
			shift0 = 3;

		end
	end

	always_latch begin
		
		if (CS3 == 0) begin
			next_state = state_spread[(state0>>shift1) - LS2][1];
		end

		if (I_F2 == 1) begin
			case (symbol2) inside
				2'b?0:	next_state = 4'b1000;
				2'b01:	next_state = 4'b1000;
				2'b11:	next_state = 4'b1111;
			endcase
		end
	end

	always_comb begin
		BTR = 0;
		if (CS3 == 0) begin
			BTR = shift1;
		end
		o_stream = (state0<<(4-shift1))>>(4-shift1);
	end

	assign final_state = next_state;

endmodule