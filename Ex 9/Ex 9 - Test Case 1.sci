clear; 
clc; 
clf(); 
s=%s; 
num=s+40; 
den=s*(s+20)*(s^2+60*s+1002); 
G=syslin('c',num,den); 
disp(G,'The given transfer function G(s)='); 
omega=logspace(-2,3,800); // avoid zero frequency 
repf=repfreq(G,omega/(2*%pi)); 
plot(real(repf),imag(repf)); 
xlabel("Re(G(jω))"); 
ylabel("Im(G(jω))"); 
xtitle("Nyquist plot for G(s)=(s+40)/[s(s+20)(s^2+60s+1002)]");
