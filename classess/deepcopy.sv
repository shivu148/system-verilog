class deepcopy;
int a,b,c;


function deepcopy copy();
copy=new();
copy.a=this.a;
copy.c=this.c;
return copy;
endfunction
endclass

class deep;
int x,y;

deepcopy a1;
function new();
a1=new();

endfunction
function deep copy();
copy=new();
copy.x=this.x;
copy.y=this.y;
copy.a1=a1.copy;
return copy;
endfunction
endclass



module tb();
deep h1,h2;

initial begin
h1=new();
h1.x=7;
h1.y=8;
$display("value od x=%d y=%d ",h1.x,h1.y);
h1.a1.a=4;
h1.a1.b=2;
h1.a1.c=3;
$display("value od a=%d b=%d c=%d",h1.a1.a,h1.a1.b,h1.a1.c);
h2=h1.copy;
h2.x=6;
h2.y=9;
$display("value od a=%d b=%d c=%d",h2.a1.a,h2.a1.b,h2.a1.c);
$display("value od x=%d y=%d ",h1.x,h1.y);
$display("value od x=%d y=%d ",h2.x,h2.y);
end
endmodule
