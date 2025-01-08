class randomizes;
rand bit[3:0]a;
randc bit [3:0]b;
function void randm;
$display("value of a=%0d b-%d",a,b);
endfunction
function void pre_randomize;
a=2;
b=3;
endfunction
function void post_randomize;
a=5;
b=6;
endfunction
endclass
module tb;
randomizes h;
initial begin
h=new;
repeat(5)
begin
h.randomize;
h.randm; end
repeat(6) begin
h.randomize;
h.a.rand mode(0);
h.randm;
end
repeat (6) begin
h.randomize;
h.a.rand_mode (1);
h.randm;
end
end
endmodule