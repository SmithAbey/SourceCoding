format long
p=[0.1, 0.1, 0.05, 0.05, 0.2, 0.1, 0.05, 0.05, 0.05, 0.25]; 
message=char('170009');
disp("My index number=> "+message);
encode(p,message)
inremental_encoding(p,message)