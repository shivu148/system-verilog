module functions_example();

function static increment_static();
static int a;
automatic int b;
int c;

	a++;
	b++;
	c++;
	$display("static:a=%0d,b=%0d,c=%0d",a,b,c);
endfunction

function automatic increment_automatic();
static int a;
automatic int b;
int c;

	a++;
	b++;
	c++;
	$display("automatic:a=%0d,b=%0d,c=%0d",a,b,c);
endfunction

function  increment_normal();
static int a;
automatic int b;
int c;

	a++;
	b++;
	c++;
	$display("normal:a=%0d,b=%0d,c=%0d",a,b,c);
endfunction
	
initial begin
	$display("calling static function");
	increment_static();
	increment_static();
	increment_static();
	$display("\n calling automatic function");
	increment_automatic();
	increment_automatic();
	increment_automatic();
	$display("\n calling normal function");
	increment_normal();
	increment_normal();
	increment_normal();
	
	//a
	$display("static a=%0d",increment_static.a);
	$display("automatic a=%0d",increment_automatic.a);
	$display("normal a=%0d",increment_normal.a);
	
	//b
	// $display("static b=%0d",increment_static.b);
	// $display("automatic b=%0d",increment_automatic.b);
	// $display("normal b=%0d",increment_normal.b);
	
	//c
	$display("static c=%0d",increment_static.c);
	//$display("automatic a=%0d",increment_automatic.c);
	$display("normal c=%0d",increment_normal.c);
end
endmodule
////////////////////////////////////////////////
module pass_by_value();
int x,y,z;
function int sum(int x,y);
        x=x+y;
		return x+y;
		endfunction
initial begin
x=20;
y=30;
$display(" befor funtion");
$display(" x=%d",x);
$display(" y=%d",y);
z=sum(x,y);
$display(" after funtion");
$display(" x=%d",x);
$display(" y=%d",y);
$display(" z=%d",z);
end
endmodule
/////////////////////////////////////////////

module pass_by_ref();
int x,y,z;
function automatic int sum(ref int x,y);
        x=x+y;
		return x+y;
		endfunction
initial begin
x=20;
y=30;
$display(" befor funtion");
$display(" x=%d",x);
$display(" y=%d",y);
z=sum(x,y);
$display(" after funtion");
$display(" x=%d",x);
$display(" y=%d",y);
$display(" z=%d",z);
end
endmodule
//////////////////////////////////////
module pass_by_name();
int x,y;

function void display(int x, string y);
$display("valve  x=%d,y=%s",x,y);
endfunction
initial begin
display(.y("hello world"),.x(222));
end
endmodule

