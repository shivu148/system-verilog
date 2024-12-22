class assg;
int a,b,c;
endclass


module tb;
assg h1,h2,h3;
initial begin
h1=new();

h1.a=2;
h1.b=3;
h1.c=4;
$display("value od a=%d b=%d c=%d",h1.a,h1.b,h1.c);
h2=h1;
h1.a=5;
h1.b=8;
h1.c=9;
$display("value od a=%d b=%d c=%d",h2.a,h2.b,h2.c);
h3=h2;
$display("value od a=%d b=%d c=%d",h3.a,h3.b,h3.c);
end
endmodule


