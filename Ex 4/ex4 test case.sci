clc;
clear;
s=%s;
wn=10; // Natural frequency (sqrt(100))

t=0:0.1:10; // Time vector for simulation

// Undamped system (zeta = 0)
z=0;
num=100; den=s^2 + 2*z*wn*s + 100;
TF=syslin('c',num,den);
subplot(221)
y1=csim('step',t,TF);
plot(t,y1)
xlabel('Time {t} sec')
ylabel('System response {c(t)}')
title('Undamped system');

// Underdamped system (zeta = 0.5)
z=0.5;
num=100; den=s^2 + 2*z*wn*s + 100;
TF=syslin('c',num,den);
subplot(222)
y2=csim('step',t,TF);
plot(t,y2)
xlabel('Time {t} sec')
ylabel('System response {c(t)}')
title('Underdamped system');

// Critically damped system (zeta = 1)
z=1;
num=100; den=s^2 + 2*z*wn*s + 100;
TF=syslin('c',num,den);
subplot(223)
y3=csim('step',t,TF);
plot(t,y3)
xlabel('Time {t} sec')
ylabel('System response {c(t)}')
title('Critically damped system');

// Overdamped system (zeta = 100)
z=100;
num=100; den=s^2 + 2*z*wn*s + 100;
TF=syslin('c',num,den);
subplot(224)
y4=csim('step',t,TF);
plot(t,y4)
xlabel('Time {t} sec')
ylabel('System response {c(t)}')
title('Overdamped system');
