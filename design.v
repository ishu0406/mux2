module mux2_dut (
    input A,
    input B,
    input sel,
    output Y
);

assign Y = sel ? B : A;

endmodule