virtual class pocket;
int a,b,c;

function new;
a=2;
b=3;
c=4;
endfunction

pure virtual function display;
  // $display("pockets a=%d,b=%d,c=%d"a,b,c);
  // endfunction
endclass



class child extends pocket;
function print;
  $display("child a=%d,b=%d,c=%d",a,b,c);
  endfunction
  function display;
  $display("pockets a=%d,b=%d,c=%d",a,b,c);
  endfunction
  
  
  endclass
  
  
  
  module tb;
  pocket p;
  child c;
  initial begin
  
 //p=new;
  c=new;
  p=c;
  p.display;
  c.print;
  end
  endmodule
  