class pockets;
int a,b;
function void poc(int a,b);
this. a=b;
 this.b=b;
 endfunction
 function void pock();
 $display("the value od a=%d b=%b",a,b);
 endfunction
 endclass
 
 module tb();
 pockets h;
  initial begin
  h=new();
  h.poc(2,3);
  h.pock;
  end
  endmodule
  ////////////////////////////////////////////////////////////////////////
 task exa(int a,b);
y=a+b;
z=a*b;
endtask
function set();
$display("the add value of x andc y is %d",y);
$display("the multipcation value of x andc y is %d",z);
endfunction
endclass
module tb();
 ex h1;
 initial begin
 h1=new();
 h1.exa(2,3);
 h1.set();
 //h1.();
 end
 endmodule