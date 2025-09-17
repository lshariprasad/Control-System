clc;
clear;

s = poly(0,'s');   // define Laplace variable
k = 1;

// Numerator and denominator
num = k * s^2;                   // s^2
den = (1 + 0.2*s) * (1 + 0.02*s);  // expands automatically

// Transfer function
G = syslin('c', num/den);
disp(G, "The given transfer function G(s)=");

// Bode Plot
bode(G, 0.01, 1000);
xtitle("Bode plot of the given transfer function G(s)");

// Gain margin & Phase margin
[g, frp] = g_margin(G);
[p, frg] = p_margin(G);
show_margins(G);

disp(frg, "Gain crossover frequency=", p, "Phase margin(degrees)=");
disp(frp, "Phase crossover frequency=", g, "Gain margin(dB)=");
