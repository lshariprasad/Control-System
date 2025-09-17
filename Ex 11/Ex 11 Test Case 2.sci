clear; 
clc; 
clf(); 
mode(0); 
s=%s; 
H=s^5+7*s^4+6*s^3+42*s^2+8*s+56; 
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
