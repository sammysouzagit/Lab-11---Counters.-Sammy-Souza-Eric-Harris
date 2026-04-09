module modulo_count(
    input rst, clk, en,
    output Y, state0, state1, state2
);

    wire compOut;
    
    assign compOut = dff0.Q & dff2.Q;
    assign resetWire = compOut | rst;
    assign state0 = dff0.Q;
    assign state1 = dff1.Q;
    assign state2 = dff2.Q;
    assign Y = rstDff.Q;

    full_adder adder0 (
        .A(dff0.Q),
        .B(en),
        .Cin(0),
        .Cout(adder1.Cin),
        .Y(dff0.data)    
    );
    
    full_adder adder1 (
        .A(dff1.Q),
        .B(0),
//        .Cin(adder0.Cout),
        .Cout(adder2.Cin),
        .Y(dff1.data)     
    );
    
    full_adder adder2 (
        .A(dff2.Q),
        .B(0),
//        .Cin(adder1.Cout),
        .Cout(),
        .Y(dff2.data)     
    );
    
    DFF dff0 (
//        .data(adder0.Y),
        .clk(clk),
        .rst(resetWire),
//        .Q(adder0.A),
        .notQ()
    );
    
    DFF dff1 (
//        .data(adder0.Y),
        .clk(clk),
        .rst(resetWire),
//        .Q(adder0.A),
        .notQ()
    );
    
    DFF dff2 (
//        .data(adder0.Y),
        .clk(clk),
        .rst(resetWire),
//        .Q(adder0.A),
        .notQ()
    );
    
    TFF rstDff (
        .T(compOut),
        .clk(clk),
        .rst(rst),
        .Q(),
        .notQ()
    );
    
    
endmodule