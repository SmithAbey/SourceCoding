format long
global decoded_message
global Rx_dictionary
global output

Rx_dictionary={'a', 'b', 'h', 'i' ,'s' ,'t'}
output=[6,3,4,5,1,3,1,6,2,10,12,17]
decoded_message=char();
decode(output)
disp("Extended dictionary at the receiver:")
for i = 1:length(Rx_dictionary)
    disp(i+"=>"+Rx_dictionary(i));
end
disp("Decoded message at the source:")
disp(decoded_message);