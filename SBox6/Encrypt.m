function [ Cipher ] = Encrypt( Plain, K, Enc, AllCipher )
Key = RoundKeyGen(K);
array = zeros(16,64);%empty array for storing Round encryption or decryption results
if Enc %perform encryption 
    r = 1; %Selecting keys for each round of encryption 
    IP = InitPerm(Plain); 
     Function = fDES(IP(33:64),Key(r,:));%takes result on the rightside of IP and pass as argument with the Round1 Key
     Round1 = [xor(Function, IP(1:32)) IP(33:64)];%perform fDES algorithm for Round1
     Round1= SW(Round1); %swaps the resulting array
     array(r,:) = Round1;%store results on row r of array (1 in this case)
     r = r+1; %increment r
      while(r<16) %Perform encryption for Round 2 to Round 15
          %Need results of previous Round the r drives the keys inserted by
          %(r-1) pointer to previous results
     new = array(r-1,:);
     Function = fDES(new(33:64),Key(r,:));
     a = [xor(Function, new(1:32)) new(33:64)];
     %swap using 
     a = SW(a);
     
     array(r,:) = a;
     r = r+1;
      end
      %when r = 16 we take the previous results of Round15 to produce
      %Round16 stored in array "array()"
     new = array(r-1,:);
     Function = fDES(new(33:64),Key(r,:));
     a = [xor(Function, new(1:32)) new(33:64)];
     a = InitPermInv(a);
     array(r,:) = a;
    if AllCipher
 Cipher = array;
    else
        Cipher = a ;
    end
else

    r = 16;
    IP = InitPerm(Plain); 
    %Using the given ciphertext we decrypt it 
        %row 16 and all its columns are decrypted using Key starting from
        %the bottom which is row 16 
     Function = fDES(IP(33:64),Key(r,:));
     Round1 = [xor(Function, IP(1:32)) IP(33:64)];
     Round1= SW(Round1);
     array(r,:) = Round1;
     r = r-1;
      while(r~=1)
     new = array(r+1,:);%extracts previous  results stored in "array" 
     Function = fDES(new(33:64),Key(r,:));
     a = [xor(Function, new(1:32)) new(33:64)];
     a = SW(a);
     array(r,:) = a;
     r = r-1;
      end
     new = array(r+1,:);
     Function = fDES(new(33:64),Key(r,:));
     a = [xor(Function, new(1:32)) new(33:64)];
     a = InitPermInv(a);
     array(r,:) = a;
    if AllCipher
 Cipher = [array(16,:); array(15,:); array(14,:); array(13,:); array(12,:); array(11,:); array(10,:);...
array(9,:); array(8,:); array(7,:); array(6,:); array(5,:); array(4,:); array(3,:); array(2,:);array(1,:) ] ;
    else
        Cipher = a ;
    end
end
end

   