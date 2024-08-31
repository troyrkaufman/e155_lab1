//
//
//

module led_controller (input logic clk,
                        input logic [3:0] s,
                        output logic [2:0] led);

    logic [20:0] counter = 21'b0;

    //create a clock divider to set led[2] at 2.4 Hz
    //clk is set at 48 MHz
    always_ff @ (posedge int_osc)
        begin
            //48MHz / 2.4Hz = 20 million...
            //Waiting 20 million clock cycles will produce a 2.4 Hz signal
            if (counter == 20000000) 
                begin 
                    counter <= 0;
                    led[2] <= 1;
                end
            else  
                counter <= counter + 1;
                led[2] <= 0;
        end

    //perform logic for led[1:0]
    assign led[0] = s[1] ^ s[0];
    assign led[1] = s[3] & s[2];

endmodule