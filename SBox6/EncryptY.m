function [ Cipher ] = Encrypt( Plain, K, Enc, AllCipher )
KR = RoundKeyGen(K);
 %%Perform Initial Permutation
IP = InitPerm(Plain);
RightHalve = IP(33:64);
LeftHalve = IP(1:32);

if Enc %encrypt
r = 1;

array = zeros(16,64);
while (r < 17 )
  
 %Round 1
 %Use DES function on R
 RoundFunc = fDES(RightHalve,KR(r,:)) ;
 %XOR with L, then join with R 
 Round = [xor(RoundFunc, LeftHalve) RightHalve];
 %Swop
 Round = SW(Round);
 array(1,:) = Round;
r = r+1;
    
end



 %Round 16
% RoundFunc = fDES(RightHalve,KR(16,:)) ;
% Round16 = [xor(RoundFunc, LeftHalve) RightHalve];

 %Undo Initial Permutation
 array(1,:) = InitPermInv(Round) ;
 if AllCipher
 Cipher = [array(1);
           array(2);
           array(3);
           array(4);
           array(5); 
           array(6);
           array(7);
           array(8); 
           array(9);
           array(10);
           array(11);
           array(12); 
           array(13); 
           array(14); 
           array(15);
           array(16)] ;
 else
 Cipher = Round16 ;
 end
else
 %Perform Initial Permutation
 IP = InitPerm(Plain);
RightHalve= IP(33:64);
LeftHalve = IP(1:32);
 %Round 1
 %Use DES function on R
array = zeros(16,64);
ro = 16;
 while (ro > 0 )
 RoundFunc = fDES(RightHalve,KR(ro,:)) ;
 %XOR with L, then join with R
 Round = [xor(RoundFunc, LeftHalve) RightHalve];
 %Swop
 Round= SW(Round) ;
 array(1,:) = Round;
ro = ro-1;


 end
end
