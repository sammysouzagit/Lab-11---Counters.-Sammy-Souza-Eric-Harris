module ripple_count(
    input rst, clk, en,
    output stage0, stage1, stage2
);


    assign stage0 = tff0.Q;
    assign stage1 = tff1.Q;
    assign stage2 = tff2.Q;





    
    TFF tff0 (
        .T(en),
        .clk(clk),
        .rst(rst),
        .Q(tff1.clk),
        .notQ()
    );
    
    TFF tff1 (
        .T(en),
//        .clk(tff0.Q),
        .rst(rst),
        .Q(tff2.clk),
        .notQ()
    );
    
    TFF tff2 (
        .T(en),
        .clk(tff1.Q),
        .rst(rst),
        .Q(),
        .notQ()
    );

endmodule
