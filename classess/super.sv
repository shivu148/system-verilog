class parent;
int a,b;

 function new();
 a=1;
 b=2;
 endfunction
 function void display; 
 $display("the value of a=%d b=%d",a,b);
 endfunction
endclass



class child extends parent;
int c,d;
 function new();
 c=3;
 d=4;
 endfunction
 function void display;
 super.display;
 $display("the value of c=%d d=%d",c,d);
 endfunction
endclass


module tb();
parent p;
child c;

initial
begin
p=new();
c=new();
p.display;
c.display;
p.a=2;
p.b=3;
p.display;
c.display;

end
endmodule