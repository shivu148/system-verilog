module forkandjoin();

initial begin
fork
//thread 1
	  #40 $display($time,"thread 1 time");
	  //thread 2
	 begin
	    #20 $display($time,"thread 2 time");
		#60 $display($time,"thread 2a time");	
	end 
	//thread 3
	# 90 $display($time,"thread 3 time");
join
end 
////////////////////////////////////////////////////////////////////////

concation of forkandjoin

initial begin
fork
     //thread 1
	  #40 $display($time,"thread 1 time");
	  //thread 2
	 begin
	    #20 $display($time,"thread 2 time");
		#100 $display($time,"thread 2a time");	
	end 
	//thread 3
	# 90 $display($time,"thread 3 time");
	fork 
	//thread 4
	  #40 $display($time,"thread 4 time");
	  //thread 5
	 begin
	    #20 $display($time,"thread 5 time");
		#100 $display($time,"thread 5a time");	
	end 
	//thread 6
	# 90 $display($time,"thread 6 time");
	join 
join
///////////////////////////////////////////////////////////////////////////

initial begin
fork
//thread 1
	  #40 $display($time,"thread 1 time");
	  //thread 2
	 begin
	    #20 $display($time,"thread 2 time");
		#60 $display($time,"thread 2a time");	
	end 
	//thread 3
	# 90 $display($time,"thread 3 time");
	join
fork
//thread 4
	  #40 $display($time,"thread 4 time");
	  //thread 5
	 begin
	    #20 $display($time,"thread 5 time");
		#60 $display($time,"thread 5a time");	
	end 
	//thread 6
	# 90 $display($time,"thread 6 time");
	join
	end
////////////////////////////////////////////////////////////
methods

1-forkandjoinany

initial begin
fork
//thread 1
	  #40 $display($time,"thread 1 time");
	  //thread 2
	 begin
	    #20 $display($time,"thread 2 time");
		#60 $display($time,"thread 2a time");	
	end 
	//thread 3
	# 90 $display($time,"thread 3 time");
join_any
$display($time,"thread time");
end 
////////////////////////////////////////////////////////////////////////////

2-fork join any

initial begin
fork
//thread 1
	  #40 $display($time,"thread 1 time");
	  //thread 2
	 begin
	    #20 $display($time,"thread 2 time");
		#60 $display($time,"thread 2a time");	
	end 
	//thread 3
	# 90 $display($time,"thread 3 time");
join_none
$display($time,"thread time");
end 
//////////////////////////////////////////////////////////

fork disable and wait

initial begin
fork
//thread 1
	  #40 $display($time,"thread 1 time");
	  //thread 2
	 begin
	    #20 $display($time,"thread 2 time");
		#60 $display($time,"thread 2a time");	
	end 
	//thread 3
	# 90 $display($time,"thread 3 time");
join_any
disable fork;
$display($time,"thread time");
end 
////////////////////////////////////////////////////////////

wait fork

initial begin
fork
thread 1
	  #40 $display($time,"thread 1 time");
	  thread 2
	 begin
	    #20 $display($time,"thread 2 time");
		#60 $display($time,"thread 2a time");	
	end 
	thread 3
	# 90 $display($time,"thread 3 time");
join_any
wait fork;
$display($time,"thread time");
end 

endmodule