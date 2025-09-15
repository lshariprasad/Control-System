clc;
clear;
s=%s;
G1=syslin('c',1,s^2+6*s+9);//G1 = 1/(s^2+6s+9)
G2=syslin('c',s+2,s-3);//G2 = (s+2)/(s-3)
T1=G1*G2;//series or cascade system
disp("The series transfer function of T1 = ", T1);
T2=G1+G2;//parallel system
disp("The parallel transfer function of T2 = ",T2);
T3=(G1*G2)/(1-(G1*G2));//positive feedback system
disp("The positive feedback transfer function of T3 = ", T3);
T4=(G1*G2)/(1+(G1*G2));//negative feedback system
disp("The negative feedback transfer function of T4 = ", T4);

