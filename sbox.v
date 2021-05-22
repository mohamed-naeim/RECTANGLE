
module sbox (input [3:0] data_in, output reg [3:0] data_out);

  always@(*) begin
   case (data_in)

        4'b0000:
                  
          data_out=4'b0110;
           
                
        
	4'b0001:begin
        data_out=4'b0101;
           
                end
           
        4'b0010:begin
         data_out=4'b1100;
           
                end

        4'b0011:begin
        data_out=4'b1010;
           
                end

        4'b0100:begin
        data_out=4'b0001;
           
                end

        4'b0101:begin
       data_out=4'b1110;
           
                end

        4'b0110:begin
       data_out=4'b0111;
           
                end

        4'b0111:begin
         data_out=4'b1001;
           
                end

        4'b1000:begin
          data_out=4'b1011;
           
                end

        4'b1001:begin
         data_out=4'b0000;
           
                end

        4'b1010:begin
          data_out=4'b0011;
           
                end

        4'b1011:begin
         data_out=4'b1101;
           
                end

        4'b1100:begin
      data_out=4'b1000;
          
                end

        4'b1101:begin
        data_out=4'b1111;
           
                end

        4'b1110:begin
        data_out=4'b0100;
          
                end

        4'b1111:begin
      data_out=4'b0010;
           
                end

    endcase
end

endmodule

