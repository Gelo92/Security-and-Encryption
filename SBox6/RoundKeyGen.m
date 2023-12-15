function [ K_round ] = RoundKeyGen( K ) % K is in binary format of the key
K0 = ParityDrop(K) ; %  drop 8 column 8 and column 16 of K
%Round 1
[a,b] = GetKey(K0,1);%Invoke GetKey function
K1 = a; %kEY GENERATED
CShift = b;%RESULTS BEFORE PARITY DROP
%Round 2
[a,b] = GetKey(CShift,1); % Flag = 1  indicating one LeftShift to be perfomed
K2 = a;
CShift = b;
%Round 3
[a,b] = GetKey(CShift,2);%Flag = 2 indicating two LeftShifts to be perfomed
K3 = a;
CShift = b;
%Round 4
[a,b] = GetKey(CShift,2);
K4 = a;
CShift = b;
%Round 5
[a,b] = GetKey(CShift,2);
K5 = a;
CShift = b;
%Round 6
[a,b] = GetKey(CShift,2);
K6 = a;
CShift = b;
%Round 7
[a,b] = GetKey(CShift,2);
K7 = a;
CShift = b;
%Round 8
[a,b] = GetKey(CShift,2);
K8 = a;
CShift = b;
%Round 9
[a,b] = GetKey(CShift,1);
K9 = a;
CShift = b;
%Round 10
[a,b] = GetKey(CShift,2);
K10 = a;
CShift = b;
%Round 11
[a,b] = GetKey(CShift,2);
K11 = a;
CShift = b;
%Round 12
[a,b] = GetKey(CShift,2);
K12 = a;
CShift = b;
%Round 13
[a,b] = GetKey(CShift,2);
K13 = a;
CShift = b;
%Round 14
[a,b] = GetKey(CShift,2);
K14 = a;
CShift = b;
%Round 15
[a,b] = GetKey(CShift,2);
K15 = a;
CShift = b;
%Round 16
[a,~] = GetKey(CShift,1); %
K16 = a;
K_round = [K1; K2; K3; K4; K5; K6; K7; K8; K9; K10; K11; K12; K13; K14;...%key array for all rounds
K15; K16] ;
end
