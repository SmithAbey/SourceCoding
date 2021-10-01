format long
sig = ['a' 'b' 'c' 'd' 'e' 'f' 'g' 'h' 'i' 'j' 'k' 'l' 'm' 'n' 'o' 'p' 'q' 'r' 's' 't' 'u' 'v' 'w' 'x' 'y' 'z'];
f = [8.16 1.492 2.782 4.153 13.004 2.228 2.015 6.094 6.966 0.153 0.778 4.025 2.406 6.749 7.507 1.929 0.095 5.787 6.327 9.056 2.758 0.978 2.360 0.150 1.974 0.074];
f=f/sum(f)
global CODE
global expect_length
global entropy
s = cell(length(f),1);
for i = 1:length(f)
    s{i} = i;
end

s=reduce(s,f);
makecode(s, []);

efficiency(f,CODE)

word = 'abeywickrama';
global source_code
source_code=''
encode(sig,word)

global decoded_code
decoded_code=''
decode(sig)

for i = 1:length(f)
    disp(sig(i)+"=>"+CODE(i));
end

disp("My last name=>"+word)
disp("Encoded my last name using Huffman coding=>"+source_code)
disp("Decoded message=>"+decoded_code)

disp("Expect_length"+"=> "+expect_length)
disp("Entropy"+"=> "+entropy)
disp("Efficiency"+"=> "+entropy/expect_length)