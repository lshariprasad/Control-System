clc 
clear
s=%s;
n=[45+6*s+s^2]; //input numerator of transfer function
d=[20+3*s+s^2+4*s^3]; //input denominator of transfer function
h=syslin("c",n,d);
plzr(h);
