clc
clear
s=%s;
H = syslin("c", 1+s, s+3*s^2+3*s^3+s^4)
disp('The given transfer function H =', H)
[z,p,k] = tf2zp(H)
disp('The obtained zeros for the given transfer function z =', z)
disp('The obtained poles for the given transfer function p =', p)
disp('The obtained system gain for the given transfer function k =', k)

