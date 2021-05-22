 module text_update (input [63:0]text,input[63:0]key,input[4:0]i,
           output[63:0]out_comp,output reg[63:0]cipher_text
		);

wire [63:0] Ark;
wire [63:0] Out_sb;

assign Ark = text ^key;
always @(*) begin
if (i==5'b11001) begin
cipher_text[63:0] = Ark[63:0];

end

end
Sbox_text s1 (Ark ,Out_sb);

shiftrow1 SR1 (Out_sb, out_comp);

endmodule
