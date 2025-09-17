clear;
clc;
clf();
mode(0);

s = %s;
H = s^4 + 2*s^3 + 3*s^2 + 4*s + 5; 
disp(H, 'The given characteristic equation 1 - G(s)H(s) =');

c = coeff(H); 
len = length(c);

r = routh_t(H);   // <-- FIXED: pass polynomial H instead of coeff vector
disp(r, 'Routh table =');

x = 0;
for i = 1:len
    if r(i,1) < 0 then 
        x = x + 1;
    end
end

if x > 0 then
    printf("From Routh table, it is clear that the system is unstable.\n");
else 
    printf("From Routh table, it is clear that the system is stable.\n");
end
