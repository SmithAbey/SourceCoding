function encode(p,message)
cdf=zeros(1,length(p)+1);
for i = 1:length(p)
    cdf(i+1) = sum(p(1:i));
end
l=0;
u=1;
divider =1;
for i = 1:length(message)
    divider = divider*p(str2double(message(i))+1);
    m=u-l;
    u=l+m*cdf(str2double(message(i))+2);
    l=l+m*cdf(str2double(message(i))+1);
end
tag_value=(l+u)/2;
disp("Tag value of the encoded message=>")
disp(tag_value);
codeword = ceil(-log2(divider)) + 1;

nf_part=tag_value;
t='1';s='0';
strtemp='';        
temp=nf_part;
while nf_part>= 0
    nf_part=nf_part*2;
    if (nf_part==1) || (nf_part==temp)
        strtemp=strcat(strtemp,t);
        break;
    elseif nf_part>1
        strtemp=strcat(strtemp,t);
        nf_part=nf_part-1;
    else
        strtemp=strcat(strtemp,s);
    end
end
code=strtemp(1:codeword);
num=[];
for k = 1:length(code)
    num=[num str2double(code(k))*2^(-k)];
end
disp("Codeword for the encoded message using arithmetic coding=>");
disp(code);
disp("Decimal tag value for the codeword=>");
disp(sum(num));
end


