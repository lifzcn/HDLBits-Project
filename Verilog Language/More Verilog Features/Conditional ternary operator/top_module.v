module top_module(
    input [7:0] a, b, c, d,
    output [7:0] min
);

    wire [7:0] temp1;
    wire [7:0] temp2;

    assign temp1 = a > b ? b : a;
    assign temp2 = c > d ? d : c;

    assign min = temp1 > temp2 ? temp2 : temp1;

endmodule
