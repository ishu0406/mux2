module mux2_tb;

reg A;
reg B;
reg sel;
wire Y;

mux2_dut dut (
    .A(A),
    .B(B),
    .sel(sel),
    .Y(Y)
);

initial begin
    $dumpfile("mux2_tb.vcd");
    $dumpvars(0, mux2_tb);

    A = 0;
    B = 0;
    sel = 0;
    #10;

    A = 1;
    B = 0;
    sel = 0;
    #10;

    A = 0;
    B = 1;
    sel = 0;
    #10;

    A = 1;
    B = 1;
    sel = 1;
    #10;

    $finish;

end

endmodule