function s=reduce(s,p)
[p,i] = sort(p);
p(2) = p(1) + p(2);
p(1) = [];
s = s(i);
s{2} = {s{1},s{2}}; 
s(1) = [];
 if length(p) > 2
    s = reduce(s, p);
 end
end