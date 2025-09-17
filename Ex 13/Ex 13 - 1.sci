clc; 
s=poly(0,'s'); 
n1=[2*s]; 
d1=[3+s^2]; 
h1=syslin('c',n1/d1); 
n2=[2]; 
d2=[s+4]; 
h2=syslin('c',n2/d2); 
n3=[4]; 
d3=[s+6]; 
h3=syslin('c',n3/d3); 
n4=[s]; 
d4=[1+2*s]; 
h4=syslin('c',n4/d4); 
h5=h3/.h4; //h3 and h4 in negative feedback loop 
h6=h1*h5; //h1 and h5 are in series 
h7=h6/.h3; //h6 and h3 in negative feedback loop 
disp(h7,"Reduced transfer function T(s)=");
