module HF_tANS_recoder_tb();

integer in_out_diff = 5;

integer f;

// A C B A A A B A
logic [10:0] reversed_huffman_data  = 11'b00100001110;

// A A A A A B B C A A A A A B B C
//logic [21:0] reversed_huffman_data  = 22'b1101010000011010100000;


reg PHI;
reg I_F;
reg RST;
reg i_stream;

wire [1:0] BTR;
wire [2:0] o_stream;
wire [3:0] final_state;

HF_tANS_recoder dut(PHI, RST, I_F, i_stream, BTR, o_stream, final_state);

initial begin

I_F = 0;
RST = 1;
PHI = 0;
forever #5 PHI = ~PHI;

end

initial begin
#6;
// A
RST = 0;
I_F = 1;
i_stream = reversed_huffman_data[0];

f = $fopen("./output.txt","w");

	for (int i=1; i < $size(reversed_huffman_data); i++) begin
		#10;
		i_stream = reversed_huffman_data[i];
		I_F = 0;	
		$fwrite(f,"%d,%b\n",BTR,o_stream);
	end
#10
i_stream = 1'bx;

	for (int i=1; i < in_out_diff; i++) begin
		$fwrite(f, "%d,%b\n", BTR, o_stream);
		#10;
	end

$fwrite(f, "%b", final_state);

end

endmodule