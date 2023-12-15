function [ OutVec ] = SBoxLU( InVec, S )
%Determine Row and Column Numbers
col = InVec(2)*8 + InVec(3)*4 + InVec(4)*2 + InVec(5)*1;
row = InVec(6)*1 + InVec(1)*2;
%Retrieve Element from Provided S-Box
a = row+1;
b = col+1;
x = S(a, b);
results = decimalToBinaryVector(x) ; %Convert to binary
OutVec = results;
end
