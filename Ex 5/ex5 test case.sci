clear; clc;
mode(0);
Mp=0.25;
tp=1.6;
J=1; // kg·m^2
B=1; // N·m/rad/sec
// Solve for s (just a dummy variable, not Laplace)
s = poly(0,'s'); 
pi = %pi;
// Equation to solve: (s*pi)^2 - (log(1/Mp))^2 * (1 - s^2) = 0
Eq = (s*pi)^2 - (log(1/Mp))^2 * (1 - s^2);
disp('The obtained equation = ', Eq)
x = roots(Eq);
disp('x = ', x)
zeta = abs(x(1)); // Take positive root
disp('zeta = ', zeta)
wd = pi/tp;
disp('Damped frequency wd = ', wd)
wn = wd/sqrt(1 - zeta^2);
disp('Natural frequency wn = ', wn)
K = J*wn^2;
disp('K = ', K)
Kh = (2*sqrt(K*J)*zeta - B)/K;
disp('Kh = ', Kh)
sigma = wn*zeta;
disp('sigma = ', sigma)
_beta = atan(wd/sigma);
disp('Beta = ', _beta)
tr = (pi - _beta)/wd;
disp('Rise time tr = ', tr)
ts_2percent = 4/sigma;
disp('Settling time for 2% error = ', ts_2percent)
ts_5percent = 3/sigma;
disp('Settling time for 5% error = ', ts_5percent)
