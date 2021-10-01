function efficiency(p,CODE)
global expect_length
global entropy
expect_length=0;
entropy=0;
for i = 1:length(p)
    w=CODE(i)
    expect_length=expect_length+(length(w{1})*p(i))
end
for i = 1:length(p)
    entropy=entropy-p(i)*log2(p(i));
end
end
