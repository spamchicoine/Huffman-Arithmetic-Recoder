`timescale 1ns/1ps

module HF_tANS_recoder_tb();

integer in_out_diff = 4;

integer f;

// A C B A A A B A
//logic [15:0] reversed_huffman_data  = 16'b0010000000101100;

// B A A A C B A A
logic [15:0] reversed_huffman_data  = 16'b0000101100000010;

// A A A A A B B C A A A A A B B C
//logic [31:0] reversed_huffman_data  = 32'b11101000000000001110100000000000;

// A A A A A A A A A A A A A A A A
//logic [31:0] reversed_huffman_data  = 32'b;

// C C C C C C C C C C C C C C C C
//logic [31:0] reversed_huffman_data  = 32'b;

reg PHI;
reg I_F;
reg [1:0] i_stream;

wire [1:0] BTR;
wire [2:0] o_stream;
wire [3:0] final_state;

HF_tANS_recoder dut(PHI, I_F, i_stream, BTR, o_stream, final_state);

initial begin

I_F = 0;
PHI = 0;
forever #5 PHI = ~PHI;

end

initial begin
#6;
// Initial Symbol
I_F = 1;
i_stream = reversed_huffman_data[1:0];

f = $fopen("./output.txt","w");

	for (int i=$size(i_stream); i < $size(reversed_huffman_data); i = i+2) begin
		#10;
		i_stream = (reversed_huffman_data >> i);
		I_F = 0;	
		$fwrite(f,"%d,%b\n",BTR,o_stream);
	end
#10;
i_stream = 2'bxx;

for (int i=1; i < in_out_diff; i++) begin
	$fwrite(f, "%d,%b\n", BTR, o_stream);
	#10;
end
$fwrite(f, "%b", final_state);
#10;
$stop;
end

endmodule