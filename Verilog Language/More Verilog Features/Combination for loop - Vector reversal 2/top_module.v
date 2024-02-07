module top_module( 
    input [99:0] in,
    output [99:0] out
);

    always @(*) begin
        for (integer i = 0; i < 100; i++) begin
            out[99 - i] = in[i];
        end
    end

endmodule
