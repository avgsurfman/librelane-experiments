module priority_encoder(input logic [7:0] a,
			output logic [2:0] y,
			output logic none);
always_comb begin 
	casez(a)
	8'b0000_0000: y = 3'b000;
	8'b0000_0001: y = 3'b000;
	8'b0000_001?: y = 3'b001;
	8'b0000_01??: y = 3'b010;
	8'b0000_1???: y = 3'b011;
	8'b0001_????: y = 3'b100;
	8'b001?_????: y = 3'b101;
	8'b01??_????: y = 3'b110;
	8'b1???_????: y = 3'b111;
	default: y = 3'bxxx;
	endcase
	//none = ( a == 8'b0);
	none = ~|a;
end
endmodule	
	
