function [ OutVec ] = fDES( InVec, K_round_row )
%Expand Vector
%Step1 = ExDBox(InVec) ;
%Perform XOR
GenerateKey = xor(ExDBox(InVec), K_round_row) ;
%Use Substitution Boxes
a= 1:6;
b= 7:12;
c= 13:18;
d = 19:24;
e = 25:30;
f = 31:36;
g = 37:42;
h = 43:48;
Key1 =SBoxLU(GenerateKey(a),SBox1) ;
Key2 = SBoxLU(GenerateKey(b),SBox2 );
Key3 =SBoxLU(GenerateKey(c), SBox3);
Key4 = SBoxLU(GenerateKey(d),SBox4 );
Key5 = SBoxLU(GenerateKey(e),SBox5);
Key6 =SBoxLU(GenerateKey(f), SBox6);
Key7 =SBoxLU(GenerateKey(g), SBox7);
Key8 =SBoxLU(GenerateKey(h),SBox8);
Keys = [Key1 Key2 Key3 Key4 Key5 Key6 Key7 Key8];

%Apply D-Box
OutVec = DBox(Keys);
end