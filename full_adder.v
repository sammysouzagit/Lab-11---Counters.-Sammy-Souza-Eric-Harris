module full_adder(
    input A, B, Cin,
    output Y, Cout
);

    wire intermediate_Sum, intermediate_C1, intermediate_C2;
  
    assign intermediate_Sum = A ^ B;
    assign Y = intermediate_Sum ^ Cin;
    
    assign intermediate_C1 = A & B;
    assign intermediate_C2 = intermediate_Sum & Cin;
    assign Cout = intermediate_C1 | intermediate_C2;

endmodule