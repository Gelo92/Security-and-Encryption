function [ OutVec ] = SBox3()
%Return Substitution Box
M = zeros(4,16);
for i=1:4
for j=1:16

        M(1,[1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16]) = [10 00 09 14 06 03 15 05 01 13 12 07 11 04 02 08];
        M(2,[1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16]) = [13 07 00 09 03 04 06 10 02 08 05 14 12 11 15 01]; 
        M(3,[1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16]) = [13 06 04 09 08 15 03 00 11 01 02 12 05 10 14 07];
        M(4,[1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16]) = [01 10 13 00 06 09 08 07 04 15 14 03 11 05 02 12];

OutVec = [M(1,[1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16]);...
          M(2,[1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16]);...  
          M(3,[1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16]);...
          M(4,[1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16])];


end
end
end
  
