module adder #(parameter LENGTH = 32)(
//Inputs
 input signed [LENGTH-1:0] A,
 input signed [LENGTH-1:0] B,
 output reg signed [LENGTH-1:0] Result
);

wire [LENGTH-1:0] Suma;
wire unsigned [LENGTH-1:0] UnnA, UnnB;
//wire co;

assign UnnA = A;
assign UnnB = B;

//Set All the ALU logic into wires outside the Always statement.
assign Suma = A+B;     //Current assignment for sum of two signed numbers (a, b)

//Always to Mux the output.
always @ * begin
	  Result= Suma;
	  //default:Result= {LENGTH{1'b0}};
end

endmodule