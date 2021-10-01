function inremental_encoding(p,message)
cdf=zeros(1,length(p)+1);
for i = 1:length(p)
    cdf(i+1) = sum(p(1:i));
end
l=0;
u=1;
MSB=[];
count=0;
divider =1;
for i = 1:length(message)
    divider = divider*p(str2double(message(i))+1);
    m=u-l;
    u=l+m*cdf(str2double(message(i))+2);
    l=l+m*cdf(str2double(message(i))+1);
    check=1;
    while check>= 0
        if u<0.5
            u=2*u;
            l=2*l;
            MSB=[MSB 0];
            if not(count==0)
                for j = 1:count
                    MSB=[MSB 1];
                end
                count=0;
            end
        elseif l>=0.5
            u = (u-0.5)*2;
            l = (l-0.5)*2;
            MSB=[MSB 1];
            if not(count==0)
                for j = 1:count
                    MSB=[MSB 0];
                end
                count=0;
            end        
        elseif (l>=0.25 && u < 0.75)
            u = (u-0.25)*2;
            l = (l-0.25)*2;
            count=count+1;
        else
            check=-1;
        end
    end
end

codeword_length = ceil(-log2(divider)) + 1;
if codeword_length > length(MSB)
    MSB = [MSB 1 zeros(1,codeword_length - length(MSB)- 1)];
else
    MSB = MSB(1:codeword_length);
end
num=[];
for k = 1:length(MSB)
    num=[num MSB(k)*2^(-k)];
end
codeword='';
for i = 1:length(MSB)
    codeword = codeword+string(MSB(i));
end
disp("Codeword for the encoded message using incremental arithmetic coding=>");
disp(codeword);
disp("Decimal tag value for the codeword=>");
disp(sum(num));
end

