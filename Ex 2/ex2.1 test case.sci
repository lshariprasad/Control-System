clc; 
clear;
Z=[-1;1];
P=[0;-1+%i;-1-%i];
K=1.5;
disp('Enter the zeros Z = ', Z)
disp('Enter the poles P = ', P)
disp('Enter the system gain K = ', K)
S=zp2tf(Z,P,K,"c")
roots(S.num)
disp('The obtained transfer function S =', S)
