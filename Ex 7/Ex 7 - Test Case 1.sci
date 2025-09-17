clc;
clear;

// Given K = 1 
k = 1;

// Numerator: Ks^2 → polynomial = s^2
num = poly([1 0 0], "s", "coeff");   // s^2

// Denominator: (1+0.2s)(1+0.02s)
den = poly(convol([0.2 1], [0.02 1]), "s", "coeff");

// Transfer function
s1 = syslin('c', num, den);
G = k * s1;

// Display transfer function
disp(G, "The given transfer function G(s)=");

// Bode Plot
bode(G, 0.01, 1000);
xtitle("Bode plot of the given transfer function G(s)");

// Gain & Phase margins
[g, frp] = g_margin(G);
[p, frg] = p_margin(G);

show_margins(G);

// Display results
disp(frg, "Gain crossover frequency =");
disp(p, "Phase margin (degrees) =");

disp(frp, "Phase crossover frequency =");
disp(g, "Gain margin (dB) =");
