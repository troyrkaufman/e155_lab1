//
//
//

/*module led_controller (input logic int_osc, reset,
                        input logic [3:0] s,
                        output logic [2:0] led);
*/

module led_controller (input reset,
                        input logic [3:0] s,
                        output logic [2:0] led);
    logic [23:0] counter;
	
	logic int_osc;
    // Internal high-speed oscillator
	HSOSC #(.CLKHF_DIV(2'b01)) hf_osc (.CLKHFPU(1'b1), .CLKHFEN(1'b1), .CLKHF(int_osc));

    //create a clock divider to set led[2] at 2.4 Hz
    //clk is set at 48 MHz
    always_ff @(posedge int_osc)
        begin
            //48MHz / 2.4Hz = 20 million...
            //Waiting 20 million clock cycles will produce a 2.4 Hz signal
            if (reset)
                begin
                    counter <= 0;
					led[2] <= 0;
                end
            else if (counter == 'd20000000) 
                begin 
                    counter <= 0;
                    led[2] <= ~led[2];
                end
            else  
				begin
					counter <= counter + 1;
					led[2] <= led[2];
				end
        end

    //perform logic for led[1:0]
    assign led[0] = s[1] ^ s[0];
    assign led[1] = s[3] & s[2];

endmodule