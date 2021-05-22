module FeistelKeydec (input [79:0] key_in, output reg [79:0] key_out);

always @(*)  begin

key_out[15:0]  = key_in[79:64];
key_out[31:16] = key_in[15:0] ^ {key_in[71:64],key_in[79:72]};
key_out[47:32] = key_in[31:16];
key_out[63:48] = key_in[47:32];
key_out[79:64] = key_in[63:48] ^ {key_in[35:32],key_in[47:36]};

end
endmodule 