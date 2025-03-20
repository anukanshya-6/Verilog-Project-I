// Code your testbench here
// or browse Examples
module Counter_TB;
    logic clk, reset, up_down;
    logic [2:0] count;
    
    Counter uut (.clk(clk), .reset(reset), .up_down(up_down), .count(count));
    
    initial begin
        clk = 0;
        forever #5 clk = ~clk;  // Clock generator
    end

    initial begin
        $monitor("Time=%0t | up_down=%b, count=%b", $time, up_down, count);
        
        reset = 1; up_down = 1; #10;
        reset = 0; #10;
        
        up_down = 1; #50;  // Count up
        up_down = 0; #50;  // Count down
        
        $finish;
    end
endmodule
