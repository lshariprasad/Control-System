clear; 
clc; 
clf(); 
mode(0); 
s=%s; 
H=s^7-2*s^6-s^5+2*s^4+4*s^3-8*s^2-4*s+8; 
disp(H,'The given characteristic equation 1-G(s)H(s)='); 
c=coeff(H); 
len=length(c); 
r=routh_t(H); 
disp(r,'Routh''s table='); 
x=0; 
for i=1:len 
if r(i,1)<0 then 
x=x+1; 
end 
end 
if x>=1 then 
printf('From Routh''s table, it is clear that the system is unstable.\n'); 
else 
printf('From Routh''s table, it is clear that the system is stable.\n'); 
end
