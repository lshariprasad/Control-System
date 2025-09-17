clc; 
s=poly(0,'s'); 
// forward block 1 = 1/s^2 
num1=1; 
den1=s^2; 
h1=syslin('c',num1,den1); 
// feedback block = 50/(s+1) 
num2=50; 
den2=s+1; 
h2=syslin('c',num2,den2); 
// negative feedback loop: h1 and h2 
h3=h1/.h2; 
// series block = 1/(s+2) 
num3=1; 
den3=s+2; 
h4=syslin('c',num3,den3); 
// series connection h3*h4 
h5=h3*h4; 
// gain block = 2 
num4=2; 
den4=1; 
h6=syslin('c',num4,den4); 
// series connection 
h7=h5*h6; 
// unity feedback loop 
h8=h7/.1; 
disp(h8,"Reduced transfer function T(s)=");
