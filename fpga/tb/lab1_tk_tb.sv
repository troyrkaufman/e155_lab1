// Author: Troy Kaufman
// Email: tkaufman@g.hmc.edu
// 9/2/24
/*
    This is a system testbench that will need the reader to verify the outputs in simulation. This stimulates the design by
    providing switch inputs that exhausts all possibilities (2^4). The reader will need to use an oscilloscope to verify led[2]'s
    frequency. Note that the HSOSC instantiation is not present. There was difficulty bringing the lattice radiant library
    into ModelSim. 

    Run "vsim -t ns topmod" in transcript to set resolution to ns on your machine. This replaces the default ps resolution. 
*/

module lab1_tk_tb();
    logic clk, reset;
    logic [3:0] s;
    logic [2:0] led;

    lab1_tk dut(clk, reset, s, led);

    // Create clock with 20.8 ns period ~48 MHz
    always 
        begin 
            clk = 1; #10.4 ns; clk = 10.4; #5 ns;
        end

    // Begin stimulating design
    initial 
        begin
            // Active low reset
            reset = 0; #30 ns; reset = 1; 

            #5 ns; s = 'd0;
            #5 ns; s = 'd1;
            #5 ns; s = 'd2;
            #5 ns; s = 'd3;
            #5 ns; s = 'd4;
            #5 ns; s = 'd5;
            #5 ns; s = 'd6;
            #5 ns; s = 'd7;
            #5 ns; s = 'd8;
            #5 ns; s = 'd9;
            #5 ns; s = 'd10;
            #5 ns; s = 'd11;
            #5 ns; s = 'd12;
            #5 ns; s = 'd13;
            #5 ns; s = 'd14;
            #5 ns; s = 'd15;
        end
endmodule