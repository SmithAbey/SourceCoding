format long
p = [0.3 0.25 0.15 0.12 0.1 0.08];
s = {1,2,3,4,5,6};
s=reduce(s,p)
makecode(s, []);
global CODE
for i = 1:length(p)
    disp(i+"=>"+CODE(i));
end