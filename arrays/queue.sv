module queue();
string names[$:4];
initial begin 
names={"a","b","c","s","d"};
$display("size of queue=%p",names.size());
names.insert(2,"n");
names.insert(3,"h");
names.insert(5,"q");
foreach(names[i])
$display("size of queue=%p",names.size(),i, names[i]);
$display("////////////////");
names.delete(2);
names.delete(5);
foreach(names[i])
$display("deleted of queue=%p",names.size(),i, names[i]);
$display("////////////////");
names.push_front("z");
foreach(names[i])
$display("push front queue=%p",names.size(),i, names[i]);
$display("////////////////");
names.push_back("z");
foreach(names[i])
$display("push back of queue=%p",names.size(),i, names[i]);
$display("////////////////");
names.pop_front();
foreach(names[i])
$display("pop front of queue=%p",names.size(),i, names[i]);
$display("////////////////");

names.shuffle();
foreach(names[i])
$display("shuffle back of queue=%p",names.size(),i, names[i]);
end
endmodule