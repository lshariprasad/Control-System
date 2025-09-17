clc; 
s=poly(0,'s'); 
A=[0 1;-6 -5]; 
B=[0;1]; 
C=[8 1]; 
[n1,n2]=size(A); 
I=eye(n1,n2); //Identity matrix 
X=s*I-A; 
phi=inv(X); //Inverse of Matrix 
Y=C*phi; 
Z=Y*B; 
//sys=tf2ss(Z) 
disp(Z,"The transfer function representation of system is T(S)="); 
//disp(sys)
