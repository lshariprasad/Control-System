clc;
clear;

s = poly(0,'s');   // Laplace variable
k = 10;

// Numerator and Denominator
num = k * (1 + 0.2*s) * (1 + 0.025*s);
den = s^3 * (1 + 0.001*s) * (1 + 0.005*s);

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
