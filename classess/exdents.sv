class reselution;
static bit[3:0] a;
int b,c;

function new;
a=1;
b=2;
c=3;
endfunction

function display;
$display("valve a=%0d,b=%0d,c=%0d",a,b,c);
endfunction
static function displays;
$display("valve a=%0d,",a);
endfunction
extern function prints;
endclass
function reselution::prints;
$display("c=%d",c);
endfunction
module tb;
reselution h;
initial begin

h=new;
h.display;
reselution::a=5;
reselution::displays;
h.c=44;
h.prints;
end
endmodule 
