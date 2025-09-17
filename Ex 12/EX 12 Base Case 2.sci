clear; 
clc; 

s=%s; 
Htf=syslin('c',s,160+56*s+14*s^2+s^3); 
Hss=tf2ss(Htf); 
disp(Hss,'The obtained state space model for the given transfer function: State Equation x*=Ax+Bu, Output Equation Y=Cx+D'); 
//To print the answer, Use 
//ssprint(Hss) 
//Alternate: 
[A,B,C,D]=abcd(Htf) 
//To cross check, Use 
//Htf2=clean(ss2tf(Hss)) //which matches with Htf 
disp(D,'D=',C,'C=',B,'B=',A,'A=');
