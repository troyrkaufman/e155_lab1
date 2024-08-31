//

module lab1_tk_tb ();
    logic clk, reset;
    logic [2:0] s;
    logic [3:0] led;
    logic [6:0] seg;

    lab1_tk dut(reset, s, led, seg);

    //generate clock
    always
        begin
            clk = 1; #5; clk = 0; #5;
        end

    initial 
        begin
            reset = 1; #10; reset = 0; 

            s = 4'b1011; #20;
            s = 4'b1101; #20;
            s = 4'b0010; #20;
            s = 4'b0001; 
        end 

endmodule 