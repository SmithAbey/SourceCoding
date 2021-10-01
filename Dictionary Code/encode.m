function encode(message) 
temp='';
next_char='';
global output
global dictionary
encoded_message={}
for i = 1:length(message)
    next_char=string(message(i));
    if not(isempty(find(strcmp(dictionary,string(temp+next_char)))));
        temp=temp+next_char;
    else
        index=find(strcmp(dictionary,string(temp)));
        encoded_message=[encoded_message index];
        dictionary=[dictionary char(temp+next_char)];
        temp=next_char;
    end    
end
encoded_message=[encoded_message find(strcmp(dictionary, temp))];
for i = 1:length(encoded_message)
    output=[output,encoded_message{i}];
end
end

