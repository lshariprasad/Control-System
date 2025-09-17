clear; 
clc; 
xdel(winsid()); //close all windows 
s=%s; 
T=syslin('c',25+30*s+5*s^2,168+206*s+89*s^2+16*s^3+s^4); 
disp(T, 'The given loop transfer function G(s)H(s) = '); 
nyquist(T) 
a=gca(); 
a.clip_state='on'; 
a.data_bounds=[-0.1 -0.2;0.3 0.2]; 
a.box='on';
