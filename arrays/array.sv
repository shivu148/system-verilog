module arry();
//fixed array
int array[5][3];
int i,j;
initial
begin
foreach(array[i,j])
array[i][j]=i;
array[i][j]=j;
$monitor("%p",array);
end
// // /////////////////////////////////////////////////////////////////////
// //packed array
bit [7]array;
int i;
initial
begin
foreach(array[i])
array[i]=i;
$monitor("%p",array);
end
// // ///////////////////////////////////
//dyanamic array
int dyarray[],dyarray2[];
int i;
initial begin
dyarray=new[20];
dyarray2=new[10](dyarray);
foreach(dyarray[i])
dyarray[i]=i;
$display("%p,",dyarray);
foreach(dyarray2[i])
dyarray2[i]=i;
dyarray.delete();
 $monitor("array1 %p, array 2%p,size %p",dyarray,dyarray2,dyarray2.size());
end
// // //////////////////////////////////////////////////
// //mixed

bit [3][2]array[2]={13,10};
initial begin
$monitor("%p",array);
end
// // //////////////////////////////////
// // //packed 2d
bit [2][4]array;
initial
begin
array=65;
$monitor("%p",array);
end
// ////////////////////////////////////////
// //packed 3d
bit [4][2][2]array;
initial
begin
array=27;
$monitor("%p",array);
end
////////////////////////////////////////
odering method
int array[10]={1,2,3,4,5,6,7,8,9,10};
initial begin
array.reverse();
$display("reve %p",array);
array.rsort();
$display("rsort %p",array);
array.sort();
$display("sort %p",array);
array.shuffle();
$display("shuffle %p",array);
end
////////////////////////////////////
reduction method
int array[3]={1,2,3};
initial begin
$display("sum %p",array.sum);
$display("product %p",array.product);
$display("and %0b",array.and);
$display("or %0b",array.or);
$display("xor %0b",array.xor);
end
/////////////////////////////
associative array
int array[string];
initial begin
   array["int1"]=8;
   array["int2"]=7;
   array["in3"]=9;
   array["int4"]=2;
   array["int5"]=6;
   array["int6"]=3;
   $display("array %0p",array);
   $display("array %0p",array.num);
   end
//////////////////////////////////////
///associative array method
int array[string];
string element;
initial begin
   array["int1"]=8;
   array["int2"]=7;
   array["int3"]=9;
   array["int4"]=2;
   array["int5"]=6;
   array["int6"]=3;
   $display("array %0p",array.num);
   $display("array %0p",array.exists("int7"));
   $display("array %0p",array.exists("int2"));
   array.delete("int2");
   $display("array %0p",array);
   array.first(element);
   $display(" first array %0p",array[element]);
   array.last(element);
   $display(" last array %0p",array[element]);
   array.prev(element);
   $display(" prev array %0p",array[element]);
   array.next(element);
   $display(" next array %0p",array[element]);
   end
  ////////////////////////////////////
array locator  method

int array[9]={1,2,3,4,5,6,7,8,9};
int array1[];
initial begin
array1=array.find(x)with (x>3);
$display("find %0p",array1);
array1=array.find_index(x) with (x>5);
$display("find index %0p",array1);
array1=array.find_first(x) with (x>=3);
$display("find first %0p",array1);
array1=array.find_first_index(x) with (x<5);
$display("find 1st  index %0p",array1);
array1=array.find_last(x)with (x>3 & x<8);
$display("find last %0p",array1);
array1=array.find_last_index(x) with (x<5);
$display("find last index %0p",array1);
array1=array.min();
$display("find min %0p",array1);
array1=array.max();
$display("find max %0p",array1);
end
///////////////////////////
array locator  method of assoictive array
int array[string];
int array1[];
string array2[];
initial begin
array={"int1":1,"int2":2,"int3":3,"int4":4,"int5":5,"int6":6,"int7":7,"int8":8,"int9":9};
array1=array.find(x)with (x>3);
$display("find %0p",array1);
array2=array.find_index(x) with (x>5);
$display("find index %0p",array2);
array1=array.find_first(x) with (x>=3);
$display("find first %0p",array1);
array2=array.find_first_index(x) with (x<5);
$display("find 1st  index %0p",array2);
array1=array.find_last(x)with (x>3 & x<8);
$display("find last %0p",array1);
array2=array.find_last_index(x) with (x<5);
$display("find last index %0p",array2);
array1=array.min();
$display("find min %0p",array1);
array1=array.max();
$display("find max %0p",array1);
end



endmodule
