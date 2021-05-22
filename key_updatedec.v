 module key_updatedec (input [79:0]key, input [4:0] RC,
                    output[79:0]out_key);
wire [79:0] Xkey;
wire [79:0] fkey;

assign Xkey[79:5] = key[79:5];

assign Xkey [4:0] = RC ^ key [4:0];

FeistelKeydec fk1 (Xkey,fkey);

sbox_keydec sk1 (fkey,out_key);

 
endmodule 
