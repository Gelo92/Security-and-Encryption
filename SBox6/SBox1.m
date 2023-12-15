
function [ OutVec ] = SBox1(~)
%Return Substitution Box
M = zeros(4,16);
for i=1:4
for j=1:16

        M(1,[1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16]) = [14 04 13 01 02 15 11 08 03 10 06 12 05 09 00 07];
        M(2,[1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16]) = [00 15 07 04 14 02 13 01 10 06 12 11 09 05 03 08]; 
        M(3,[1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16]) = [04 01 14 08 13 06 02 11 15 12 09 07 03 10 05 00];
        M(4,[1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16]) = [15 12 08 02 04 09 01 07 05 11 03 14 10 00 06 13];

OutVec = [M(1,[1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16]);...  
          M(2,[1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16]);...  
          M(3,[1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16]);...
          M(4,[1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16])];...


end
end
end
       
       