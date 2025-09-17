clear; 
clc; 
xdel(winsid()); //close all windows 
s=%s/2/%pi; 
G=syslin('c',20*(s^2+s+0.5),s*(s+1)*(s+10)); 
disp(G,'The given transfer function G(s)=') 
a=gca(); 
a.clip_state='on'; 
nyquist(G,-1000,1000); 
xgrid(color('gray')); 
a.data_bounds=[-1 -3;3 3]; 
a.box='on'; 
