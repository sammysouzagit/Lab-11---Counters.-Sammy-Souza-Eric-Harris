module DFF (
    input data,
    input clk,
    output reg Q,
    output notQ
);
    initial begin
        Q <= 0;
    end

    always @(posedge clk)
        Q <= data;
        
    assign notQ = ~Q;

endmodule