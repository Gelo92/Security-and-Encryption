function [ OutVec ] = SBox4()
%Return Substitution Box

M = zeros(4,16);
for i=1:4
for j=1:16

        M(1,[1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16]) = [07 13 14 03 00 6 09 10 1 02 08 05 11 12 04 15];
        M(2,[1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16]) = [13 08 11 05 06 15 00 03 04 07 02 12 01 10 14 09]; 
        M(3,[1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16]) = [10 06 09 00 12 11 07 13 15 01 03 14 05 02 08 04];
        M(4,[1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16]) = [03 15 00 06 10 01 13 08 09 04 05 11 12 07 02 14];

OutVec = [M(1,[1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16]);... 
          M(2,[1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16]);...
          M(3,[1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16]);...
          M(4,[1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16])];
end
end
end
       