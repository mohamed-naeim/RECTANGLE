module sbox_keydec (input [79:0] key , output [79:0] key_up1);

assign key_up1[15:4] = key[15:4];
assign key_up1[31:20] = key[31:20];
assign key_up1[47:36] = key[47:36];
assign key_up1[79:52] = key[79:52];

sbox_dec sbkc1 ({key[48],key[32],key[16],key[0]},{key_up1[48],key_up1[32],key_up1[16],key_up1[0]});
sbox_dec sbkc2 ({key[49],key[33],key[17],key[1]},{key_up1[49],key_up1[33],key_up1[17],key_up1[1]});
sbox_dec sbkc3 ({key[50],key[34],key[18],key[2]},{key_up1[50],key_up1[34],key_up1[18],key_up1[2]});
sbox_dec sbkc4 ({key[51],key[35],key[19],key[3]},{key_up1[51],key_up1[35],key_up1[19],key_up1[3]});

endmodule
