clear; 
clc; 
xdel(winsid()); //close all windows 
s=%s; 
T1=5; T2=10; 
K=1; 
den=(T1*s+1)*(T2*s+1); 
GH=syslin('c',K,den); disp(GH, ‘The given transfer function G(s)H(s)=’) 
nyquist(GH,-1000,1000); 
xgrid(color('gray')); 
a=gca(); 
a.clip_state='on'; 
a.data_bounds=[-0.3 -0.8;1.3 0.8]; 
a.box='on';
