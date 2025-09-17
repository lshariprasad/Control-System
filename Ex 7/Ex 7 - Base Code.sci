clc; 
clear; 
k=10; 
num=poly([1],"s","coeff"); 
den=poly([0 1 0.6 0.05],"s","coeff"); 
s1=syslin('c',num,den); 
G=k*s1; 
disp(G, 'The given transfer function G(s)='); 
bode(G,0.01,1000); 
xtitle('Bode plot of the given transfer function G(s)'); 
[g,frp]=g_margin(G); 
[p,frg]=p_margin(G) 
show_margins(G) 
disp(frg,'Gain crossover frequency=',p,'Phase margin(degrees)='); 
disp(frp,'Phase crossover frequency=',g,'Gain margin(dB)=');
