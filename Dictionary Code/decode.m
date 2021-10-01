function decode(output)
global Rx_dictionary
global decoded_message
prev_code=char();
seq=char();
for i = 1:length(output)
    if output(i)>length(Rx_dictionary)
        temp=Rx_dictionary{output(i-1)}
        seq=string(prev_code+string(temp(1)));
        if isempty(find(strcmp(Rx_dictionary,string(seq))));
            Rx_dictionary=[Rx_dictionary char(seq)];
        end
    else
        temp=Rx_dictionary{output(i)}
        seq=prev_code+string(temp(1));
        if isempty(find(strcmp(Rx_dictionary,string(seq))));
            Rx_dictionary=[Rx_dictionary char(seq)];
        end 
    end
    decoded_message=decoded_message+string(Rx_dictionary{output(i)});
    prev_code=string(Rx_dictionary{output(i)});
end
end

