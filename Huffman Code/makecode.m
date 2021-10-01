function makecode(s, cw)
    global CODE
    if isa(s,'cell')                              
        makecode(s{1},[cw 0]);
        makecode(s{2}, [cw 1]);
    else
    CODE{s} = char('0' + cw);
    end
end

