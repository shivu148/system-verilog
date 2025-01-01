class parent;
int a,b;
endclass



class child extends parent;
int c,d;
function void display;
$display("the value are c=%d,d=%d,",c,d);
endfunction
endclass


module tb();
parent p;
child c;

initial
begin
p=new();
c=new();
p.a=2;
p.b=3;
$display("the value are a=%d,b=%d,",p.a,p.b);
$display("the value are a=%d,b=%d,",c.a,c.b);
c.a=22;
c.b=33;
$display("the value are a=%d,b=%d,",c.a,c.b);
$display("the value are a=%d,b=%d,",p.a,p.b);
$cast(c,p);
c.c=2;
c.d=5;
c.display;
//p.c=2;
//p.d=4;

end
endmodule