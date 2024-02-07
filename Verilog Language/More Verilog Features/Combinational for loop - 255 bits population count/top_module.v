module top_module( 
    input [254:0] in,
    output [7:0] out
);

    always @(*) begin
        out = 7'b0_000_000;
        for(integer i = 0; i < 255; i++) begin
            if(in[i] == 1) begin
                out += 1'b1;
            end
        end
    end

endmodule
