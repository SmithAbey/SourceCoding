function inceremntal_decoding(p,codeword)
cdf=zeros(1,length(p)+1);
for i = 1:length(p)
    cdf(i+1) = sum(p(1:i));
end
disp(cdf)
num=[];
for k = 1:length(codeword)
    num=[num codeword(k)*2^(-k)];
end
num=sum(num)
l=0;
u=1;
end

