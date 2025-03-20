// Code your design here
module Counter (
    input  logic clk, reset, up_down,
    output logic [2:0] count
);
    always_ff @(posedge clk or posedge reset) begin
        if (reset)
            count <= 3'b000;
        else if (up_down)
            count <= count + 1;  // Up Counter
        else
            count <= count - 1;  // Down Counter
    end
endmodule
