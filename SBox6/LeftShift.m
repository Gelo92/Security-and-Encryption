function [ OutVec ] = LeftShift( InVec )
%Using the built-ib function circshift(), the -1 is for shifting left by
%one position
OutVec = circshift(InVec,-1) ;
end