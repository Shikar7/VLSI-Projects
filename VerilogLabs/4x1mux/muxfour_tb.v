module muxfour_tb();
reg[3:0]i;
reg[1:0]s;
wire y;
integer k;
muxfour DUT(i,s,y);
initial
begin
for(k=0;k<64;k=k+1)
begin
{i,s}=k;
#20;
end
end
initial
$monitor("i=%b,s=%b,y =%b",i,s,y);
initial #100 $finish;
endmodule