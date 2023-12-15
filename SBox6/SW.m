function [ OutVec ] = SW( InVec )
%Used size(InVec,2) , the two is inserted because this is a two dimensional
%array containing rows and columns
OutVec = [InVec(size(InVec,2)/2+1:size(InVec,2)), InVec(1:size(InVec,2)/2)] ;
end