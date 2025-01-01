class hiding;
local  int d;
protected int a;

function new;
d=1;
a=4;
endfunction
function display;
$display("the value of local =%d protected=%d",d,a);
endfunction
endclass


class encapulation extends hiding;
int x;

function new;
x=5;
a=5;
endfunction
function displays;
$display("the value of  protected=%d",a);
$display("the value of int =%d protected=%d",x,a);
endfunction
endclass



module tb();
hiding h;
encapulation e;

initial begin
h=new;
e=new;
//h.d=1;
//h.a=3;
h.display;
e.displays;
end
endmodule
