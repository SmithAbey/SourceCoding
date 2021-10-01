function encode(sig,word)
global source_code
global CODE
for i = 1:length(word)
    source_code=strcat(source_code,char(CODE(sig==word(i))));
end
end

