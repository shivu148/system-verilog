class parent;
int a,b;
endclass



class child extends parent;
int c,d;
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

end
endmodule