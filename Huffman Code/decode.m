function decode(sig)
global source_code
global CODE
global decoded_code
temp='';
for i = 1:length(source_code)
    temp=strcat(temp,char(source_code(i)));
    index=find(strcmp(CODE, temp))
    if not(isempty(index))
        decoded_code=strcat(decoded_code,sig(index))
        temp='';  
    end
end

end

