class ex;
int x,y,z;

function examples(int i,j);
z=i*j;
return z;
 endfunction
 function void display;
  $display("the multipcation value of x andc y is %d",z);
 endfunction
 endclass
 
 
 
 module tb();
 ex h1;
 initial begin
 h1=new();
 
 h1.examples(10,2);
 h1.display();
 end
 endmodule
 ///////////////////////////////////////////////////////////////////////////
 
class ex;
int x,y,z;

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

 
 
 
 