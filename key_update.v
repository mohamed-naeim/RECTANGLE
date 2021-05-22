 module key_update (input [79:0]key, input [4:0] RC,
                    output[79:0]out_key);
wire [79:0] skey;
wire [79:0] fkey;

SBOX_key sk1 (key,skey);

FeistelKey fk1 (skey,fkey);

assign out_key[79:5] = fkey[79:5];

assign out_key [4:0] = RC ^ fkey [4:0];

endmodule 