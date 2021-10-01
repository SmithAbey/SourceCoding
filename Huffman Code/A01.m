format long
sig = [1 2 3];
p = [0.4 0.5 0.1];

global CODE

s = cell(length(p),1);
s = {1,2,3};
[p,i] = sort(p);
p(2) = p(1) + p(2);
p(1) = [];
s = s(i);
s{2} = {s{1},s{2}}; 
s(1) = [];
makecode(s, []);

for i = 1:length(sig)
    disp(i+"=>"+CODE(i));
end
