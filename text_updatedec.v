 module text_updatedec (input [63:0]text,input[63:0]key,input[4:0]i,
           output[63:0]out_comp,output reg[63:0]out_text
		);

wire [63:0] Prk;
wire [63:0] Out_sb;


shiftrow1dec SRC1 (text, Prk);


sbox_textdec sc1 (Prk ,Out_sb);

assign out_comp = Out_sb ^ key;

always @(*) begin
if (i==5'b11000) begin
out_text[63:0] = out_comp[63:0];

end
end
endmodule
