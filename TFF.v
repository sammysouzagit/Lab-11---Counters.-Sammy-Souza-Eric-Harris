module TFF (
    input T,
    input clk,
    output Q, notQ
);

    wire Dinput;

    assign Dinput = (T == 0 ? Q :
                T == 1 ? notQ :
                0);
                
    DFF D1(
        .data(Dinput),
        .clk(clk),
        .Q(Q),
        .notQ(notQ)    
    );

endmodule