module enum_dt();
//typedef enum{a,b,c,d,e,f,g,h}letters;
	string str1,str2,str3,str5,str6;
	// real real_dt;
	// shortreal shortreal_dt;
	
	//string str;
	initial begin
	
	str1="verilog";
	str3="system";
	str2="hello";
	begin
	// if(str1==str3)
	// $display("equal");
	// else
	// $display("not equal");
	// end
	$display("str1>str2",str1>str2);
	$display("str2<str3",str2<str3);
	str5={str1," ",str2[3]," ",str3};
	$display("concatination=%s",str5);
	str6={2{str2}};
	$display("replication=%s",str6);
	$display("index=%s",str1[2]);
	end
	
	//$display("real=%b,shortreal=%b",real_dt,shortreal_dt);
	

///////////////////////////////////////////////////////////////	
	//$display("first letter=%s",);
	// $display("previous letter=%s",str1);
	// $display("next letter=%s",str2);
	// $display("last letter=%s",str3);
	// $display("number of letters=%d",str4);
	
		// $display("letters=%s",letters.first());
		// $display("letters=%s,letters=%s",letters.next(),letters.prev());
		// $display("letters=%s",letters.prev());
		// $display("letters=%s",letters.last());
		// $display("letters=%0d",letters.num());
		end
endmodule