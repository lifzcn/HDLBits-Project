module top_module(
    input ring,
    input vibrate_mode,
    output ringer,
    output motor
);

    always @(ring) begin
        if (ring == 1'b0) begin
            ringer = 1'b0;
            motor = 1'b0;
        end
        else begin
            if (vibrate_mode == 0) begin
                ringer = 1'b1;
                motor = 1'b0;
            end
            else begin
                ringer = 1'b0;
                motor = 1'b1;
            end
        end
    end
    
endmodule
