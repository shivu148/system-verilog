class shallowcopy;
int a,b,c;
endclass


class copy;
int x,y,z;
shallowcopy a1;
function new();
a1=new();
endfunction

endclass


module  tb;
copy h1,h2;
initial begin
h1=new();

h1.x=3;
h1.y=2;
h1.z=4;
$display("value od a=%d b=%d c=%d",h1.x,h1.y,h1.z);
h1.a1.a=7;
h1.a1.b=8;
h1.a1.c=9;
$display("value od a=%d b=%d c=%d",h1.a1.a,h1.a1.b,h1.a1.c);
h2=new h1;
$display("value od a=%d b=%d c=%d",h2.x,h2.y,h2.z);
h2.x=44;
h2.y=55;
h2.z=22;
$display("value od a=%d b=%d c=%d",h1.x,h1.y,h1.z);
$display("value od a=%d b=%d c=%d",h2.x,h2.y,h2.z);
$display("value od a=%d b=%d c=%d",h1.a1.a,h1.a1.b,h1.a1.c);
end
endmodule
