function inceremntal_decoding(p,codeword)
decoded_message=[]
cdf=zeros(1,length(p)+1);
for i = 1:length(p)
    cdf(i+1) = sum(p(1:i));
end
l=0;
u=1;
window= ceil(-log2(min(p.^2))) + 2;
w=window;
tag=codeword(1:w);
disp(w)
while (1)
    num=[];
    for k = 1:length(tag)
        num=[num tag(k)*2^(-k)];
    end
    num=sum(num)
    for j = 1:length(cdf)
        if num<(cdf(j))
            decoded_message=[decoded_message (j-2)];
                m=u-l;
                u=l+m*cdf(j);
                l=l+m*cdf(j-1);
            break
        end
    end
        while(1)
            if u<0.5
                u=2*u;
                l=2*l; 
                w=w+1;
                if (w<=length(codeword))
                    tag = [tag(2:end) codeword(w)];
                else
                    tag = [tag(2:end) 0];
                end
            elseif l>=0.5
                u= 2*(u-0.5);
                l= 2*(u-0.5); 
                w=w+1;
                if (w<=length(codeword))
                    tag = [tag(2:end) codeword(w)];
                else
                    tag = [tag(2:end) 0];
                end
            elseif (l>=0.25 && u <0.75)
                u = 2*(u-0.25);
                l = 2*(l-0.25);
                w=w+1;
                if (w<=length(codeword))
                    tag = [tag(2:end) codeword(w)];
                else
                    tag = [tag(2:end) 0];
                end
                tag(1) = 1 - tag(1);
            else
                 break              
            end
        end
    if length(decoded_message)==6
        break
    end
end    
disp(decoded_message)
end

