clc; 
s=poly(0,'s'); 
A=[1 1;1 1]; 
B=[2;2]; 
C=[3 3]; 
[n1,n2]=size(A); 
I=eye(n1,n2); 
X=s*I-A; 
phi=inv(X); 
Y=C*phi; 
Z=Y*B; // transfer function 
disp(Z,"The transfer function representation of system is T(s)=");
