module FeistelKey (input [79:0] key_in, output reg [79:0] key_out);

always @(*)  begin
 key_out[15:0]  = {key_in[7:0],key_in[15:8]} ^ key_in[31:16];
 key_out[31:16] = key_in[47:32];
 key_out[47:32] = key_in[63:48];
 key_out[63:48] = key_in[79:64] ^ {key_in[51:48],key_in[63:52]};
 key_out[79:64] = key_in[15:0];

end
endmodule
