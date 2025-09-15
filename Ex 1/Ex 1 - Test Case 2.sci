clc; 
clear; 
s=%s; 
G1=syslin('c',1,s^3+2*s^2+6*s+9); 
G2=syslin('c',s,s+3); 
T1=G1*G2;//series or cascade system 
disp (T1,"The series transfer function of T1 = "); 
T2=G1+G2;//parallel system 
disp (T2,"The parallel transfer function of T2 = "); 
T3=G1/(1+G1*G2);//Negative feedback system 
disp (T3,"The positive feedback transfer function of T3 = "); 
T4=G1/(1-G1*G2);//Positive feedback system 
disp (T4,"The negative feedback transfer function of T4 = ");
