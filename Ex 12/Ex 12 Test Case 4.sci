clear; 
clc; 
clf(); 
s=%s; 
Htf=syslin('c',10*(s+4),s*(s+1)*(s+3)); 
Hss=tf2ss(Htf); 
disp(Hss,'The obtained state space model for the given transfer function: State Equation x*=Ax+Bu, Output Equation y=Cx+D'); 
[A,B,C,D]=abcd(Htf); 
disp(D,'D=',C,'C=',B,'B=',A,'A=');
