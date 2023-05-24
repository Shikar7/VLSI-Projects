module priority_encoderbehave_tb();
reg [7:0] Y;
wire [2:0] A;
 priority_encoderbehave DUT(.Y(Y),.A(A));
 initial
 begin
 Y=8'h01;
 #2 Y=8'h03;
 #2 Y=8'h05;
 #2 Y=8'h08;
 #2 Y=8'h10;
 #2 Y=8'h30;
 #2 Y=8'h50;
 #2 Y=8'h80;
 end
 initial #20 $finish;
 endmodule