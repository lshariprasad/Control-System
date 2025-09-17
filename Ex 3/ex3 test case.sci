clc;
clear;
s=%s;
num=10; // Numerator = 10
den=poly([1 10],'s','coeff'); // Denominator = s + 10
g=syslin('c',num/den);
disp('The given first order system function G =', g);

t=0:0.05:50;
gs=csim('step',t,g);
subplot(121)
plot2d(t,gs)
xlabel('Time {t} (sec)')
ylabel('Step response {c(t)}')
title('Step Response of a First Order System')

gi=csim('impulse',t,g);
subplot(122)
plot2d(t,gi)
xlabel('Time {t} (sec)')
ylabel('Impulse response {c(t)}')
title('Impulse Response of a First Order System')
