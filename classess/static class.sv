class staticclass;
static int a;
int b;
int c;
  function statics();
 this.a=a;
this.b=b;
 this.c=c;
 $display("the value od a=%0d b=%0d c=%0d",a,b,c);
 endfunction
 endclass
 
 
 
 module tb();
  staticclass h1,h2,h3 ;
  initial begin
    h1=new();
	h2=new();
	h3=new();
	
	h1.a=2;
	h1.b=3;
	h1.c=7;
	h2.a=6;
	h2.b=8;
	h2.c=6;
	h3.a=8;
	h3.b=2;
	h3.c=0;
	h1.statics();
	h2.statics();
    h3.statics();
	
	 // $display("the value od a=%0d b=%0d c=%0d",h1.a,h2.a,h3.a);
		 // $display("the value od a=%0d b=%0d c=%0d",h2.b,h2.b,h3.b);
		 // $display("the value od a=%0d b=%0d c=%0d",h3.c,h3.c,h3.c);
	end
	endmodule
	
	