clear; 
clc; 

mode(0); 
s=%s; 
H=s^4+2*s^3+3*s^2+4*s+5; 
//H=s^5+7*s^4+6*s^3+42*s^2+8*s+56; 
disp(H,'The given characteristics equation 1-G(s)H(s)='); 
c=coeff(H); 
len=length(c); 
r=routh_t(H); 
disp(r,"Rouths table="); 
x=0; 
for i=1:len 
if(r(i,1)<0) 
x=x+1; 
end 
end 
if(x>=1) 
printf("From Rouths table, it is clear that the system is unstable.") 
else 
printf("From Rouths table, it is clear that the system is stable.") 
end
