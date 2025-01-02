class base ;
    int a,b;
   function  new();
        a =1;
        b =1;
   endfunction
 
   virtual function void display();
       $display("I am in base class method");
   endfunction
 
endclass
 
class child extends base;
   int x,y;
 
   function  new();
       x = 2;
       y = 2;
   endfunction 
   function void display();
            $display("I am in child class method");
   endfunction 
endclass
class child1 extends base;
   int i,j;
 
   function new();
       i = 3;
       j = 4;
   endfunction 
   function void display();
            $display("I am in child1 class method");
   endfunction 
endclass
 
 
module tb();
 
   base p;
   child c;
   child1 h;
 
   initial begin
      p = new();
      c = new();
	  h=new();
      p.display();
      c.display();
	  h.display();
      // with using of parent handle we can able to access the child data by assigning and virtual key word
     p = c;
      p.display();
      c.display();

 
   end
 
endmodule