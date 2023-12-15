function [key,CShift] = GetKey(in,flag) %Flag indicates the number of leftshifts operations to be performed
if flag==1 %Leftshift once
[X,Y] = Current(in);%return right(y) and left(x) of the 56 bit of the "in" argument
CShift = [LeftShift(X) LeftShift(Y)] ; %perfom leftshift on both x & y ONCE
key = CDBox(CShift) ; %generate key by compressing results using CDBox (56 bits-48 Bits)
elseif flag==2 %perfom leftshift on both x & y TWICE
    [X,Y] = Current(in);
    CShift = [LeftShift(X) LeftShift(Y)] ;
    [X,Y] = Current(CShift);
    CShift = [LeftShift(X) LeftShift(Y)] ;
    key = CDBox(CShift);
end
end
