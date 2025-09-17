clc;
clear;

s = poly(0,'s');   // define Laplace variable
k = 0.9;

// Numerator and Denominator
num = k * (9*s^2 + 1.8*s + 9);     // numerator
den = 2*s^3 + 1.8*s^2 + 9*s;       // denominator

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
