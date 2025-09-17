clear; 
clc; 
 
A=[0 1 0;0 0 1;-5.008 -25.1026 -5.03247]; 
B=[0;25.04;-121.005]; 
C=[1 0 0]; 
D=[0]; 
disp('The given state model: State equation x*=Ax+Bu and Output Equation Cx+D where'); 
disp(D,'D=',C,'C=',B,'B=',A,'A='); 
H=syslin('c',A,B,C,D); 
G=clean(ss2tf(H)); 
disp(G,'The obtained transfer function is G(s) = ');
