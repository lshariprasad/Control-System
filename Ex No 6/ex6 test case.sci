clc;
clear;
Kp=100; // proportional gain
Ki1=1;  // integral gain
Td=0.1; // differential time
Ti=10;  // integral time
Ki2=Kp/Ti;

disp('Proportional gain Kp =', Kp)
disp('Integral gain Ki =', Ki1)
disp('Differential time Td =', Td)
disp('Integral time Ti =', Ti)
disp('Equivalent integral gain Ki2 =', Ki2)

s=%s;
Gi=syslin('c',Ki1/s);
t=0:0.05:3;
ramp=t;

subplot(321);
p1=Kp*ones(1,length(t));
p2=Kp*t;
plot2d(t,p1,style=2);
plot2d(t,p2,style=3);
xtitle('Proportional control','t','y');
legend('step input','ramp input');
xgrid(color('gray'));

subplot(322);
i1=csim("step",t,Gi);
i2=csim(ramp,t,Gi);
plot2d(t,i1,style=2);
plot2d(t,i2,style=3);
xtitle('Integral control','t','y');
xgrid(color('gray'));

i1=i1*Ki2/Ki1; // change of gain
i2=i2*Ki2/Ki1;

subplot(323);
plot2d(t,p1+i1,style=2);
plot2d(t,p2+i2,style=3);
xtitle('Proportional integral control','t','y');
xgrid(color('gray'));

subplot(324);
pd1=p1;
pd2=p2+Kp*Td*ones(1,length(t)); // derivative term
plot2d(t,pd1,style=2);
plot2d(t,pd2,style=3);
xtitle('Proportional plus derivative control','t','y');
xgrid(color('gray'));

subplot(325);
plot2d(t,pd1+i1,style=2);
plot2d(t,pd2+i2,style=3);
xtitle('P.I.D. control','t','y');
xgrid(color('gray'));
