clear; 
clc; 
clf(); 
A=[0 1 0;0 0 1;-1 -2 -4]; 
B=[0;0;10]; 
C=[1 0 0]; 
D=[0]; 
disp('The given state model: State equation x*=Ax+Bu and Output Equation y=Cx+Du 
where'); 
disp(D,'D=',C,'C=',B,'B=',A,'A='); 
H=syslin('c',A,B,C,D); 
G=clean(ss2tf(H)); 
disp(G,'The obtained transfer function is G(s)=');
