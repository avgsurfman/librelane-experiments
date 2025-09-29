module gates( input logic clk,
  input logic [3:0] a, b,
  output logic [3:0] y1, y2, y3, y4, y5, y6, y7,
  output logic [3:0] y8, y9
);

assign y1 = a &  b;
assign y2 = a |  b;
assign y3 = a ^  b;
assign y4 = a ~& b;
assign y5 = a ~| b;
assign y6 = a ^  b;
assign y7 = a ~^ b;

always_ff@(posedge clk) begin
y8 <= a << b; // logical shift left
y9 <= a >>> b; // right arithmetical shift
end

endmodule
