module top_module(
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);

    wire temp;
    wire [15:0] sum1, sum2;

    add16 inst1(
        .a(a[15:0]),
        .b(b[15:0]),
        .cin(1'b0),
        .sum(sum[15:0]),
        .cout(temp)
    );

    add16 inst2(
        .a(a[31:16]),
        .b(b[31:16]),
        .cin(1'b0),
        .sum(sum1),
        .cout()
    );

    add16 inst3(
        .a(a[31:16]),
        .b(b[31:16]),
        .cin(1'b1),
        .sum(sum2),
        .cout()
    );

    always @(*) begin
        case(temp)
            1'b0:
                sum[31:16] = sum1;
            1'b1:
                sum[31:16] = sum2;
            default:
                ;
        endcase
    end

endmodule
