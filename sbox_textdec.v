module sbox_textdec (input [63:0] out_ARK , output [63:0] out_sb);

sbox_dec sbc1  ({out_ARK[48],out_ARK[32],out_ARK[16],out_ARK[0]}, {out_sb[48],out_sb[32],out_sb[16],out_sb[0]});
sbox_dec sbc2  ({out_ARK[49],out_ARK[33],out_ARK[17],out_ARK[1]}, {out_sb[49],out_sb[33],out_sb[17],out_sb[1]});
sbox_dec sbc3  ({out_ARK[50],out_ARK[34],out_ARK[18],out_ARK[2]}, {out_sb[50],out_sb[34],out_sb[18],out_sb[2]});
sbox_dec sbc4  ({out_ARK[51],out_ARK[35],out_ARK[19],out_ARK[3]}, {out_sb[51],out_sb[35],out_sb[19],out_sb[3]});
sbox_dec sbc5  ({out_ARK[52],out_ARK[36],out_ARK[20],out_ARK[4]}, {out_sb[52],out_sb[36],out_sb[20],out_sb[4]});
sbox_dec sbc6  ({out_ARK[53],out_ARK[37],out_ARK[21],out_ARK[5]}, {out_sb[53],out_sb[37],out_sb[21],out_sb[5]});
sbox_dec sbc7  ({out_ARK[54],out_ARK[38],out_ARK[22],out_ARK[6]}, {out_sb[54],out_sb[38],out_sb[22],out_sb[6]});
sbox_dec sbc8  ({out_ARK[55],out_ARK[39],out_ARK[23],out_ARK[7]}, {out_sb[55],out_sb[39],out_sb[23],out_sb[7]});
sbox_dec sbc9  ({out_ARK[56],out_ARK[40],out_ARK[24],out_ARK[8]}, {out_sb[56],out_sb[40],out_sb[24],out_sb[8]});
sbox_dec sbc10 ({out_ARK[57],out_ARK[41],out_ARK[25],out_ARK[9]}, {out_sb[57],out_sb[41],out_sb[25],out_sb[9]});
sbox_dec sbc11 ({out_ARK[58],out_ARK[42],out_ARK[26],out_ARK[10]},{out_sb[58],out_sb[42],out_sb[26],out_sb[10]});
sbox_dec sbc12 ({out_ARK[59],out_ARK[43],out_ARK[27],out_ARK[11]},{out_sb[59],out_sb[43],out_sb[27],out_sb[11]});
sbox_dec sbc13 ({out_ARK[60],out_ARK[44],out_ARK[28],out_ARK[12]},{out_sb[60],out_sb[44],out_sb[28],out_sb[12]});
sbox_dec sbc14 ({out_ARK[61],out_ARK[45],out_ARK[29],out_ARK[13]},{out_sb[61],out_sb[45],out_sb[29],out_sb[13]});
sbox_dec sbc15 ({out_ARK[62],out_ARK[46],out_ARK[30],out_ARK[14]},{out_sb[62],out_sb[46],out_sb[30],out_sb[14]});
sbox_dec sbc16 ({out_ARK[63],out_ARK[47],out_ARK[31],out_ARK[15]},{out_sb[63],out_sb[47],out_sb[31],out_sb[15]});

endmodule

