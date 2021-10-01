format long
global output
global dictionary

dictionary={'a', 'b', 'h', 'i' ,'s' ,'t'};
message=char('thisahatbsahahah');
output=[];

encode(message);
disp("Extended dictionary at the source:")
for i = 1:length(dictionary)
    disp(i+"=>"+dictionary(i));
end
disp("Encoded message at the source:")
disp(output);