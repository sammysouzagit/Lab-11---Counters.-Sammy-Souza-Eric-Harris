module DFF_AS (
    input data,
    input clk,
    input rst,
    output reg Q,
    output notQ
);
    initial begin
        Q <= 0;
    end

    always @(posedge clk or posedge rst) begin
        if (rst)
            Q <= 1'b0;
        else
            Q <= data;
    end
            
    assign notQ = ~Q;

endmodule
