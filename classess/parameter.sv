class param_class #(a=8,b=3);
bit[a-1:0]c;
bit[b-1:0]d;

function display;
  $display("value a=%d,b=%d,c=%d,d=%d",a,b,c,d);
  endfunction
  endclass



module tb();
param_class #(15,9) p;

initial begin
p=new;
p.display;
p.c=6;
p.d=22;
p.display;
end
endmodule