module decoder3to8_tb();

    // Declaring Inputs
    reg [2:0] Data_in;

    // Declaring Outputs
    wire [7:0] Data_out;

    // Instantiate the Unit Under Test (UUT)
    decoder3to8 uut (
        .Data_in(Data_in), 
        .Data_out(Data_out)
    );

    initial 
	begin
        //Apply Input and wait for 100 ns
        Data_in = 3'b000;     #100;
        Data_in = 3'b001;     #100;
        Data_in = 3'b010;     #100;
        Data_in = 3'b011;     #100;
        Data_in = 3'b100;     #100;
        Data_in = 3'b101;     #100;
        Data_in = 3'b110;     #100;
        Data_in = 3'b111;     #100;
    end
      
endmodule