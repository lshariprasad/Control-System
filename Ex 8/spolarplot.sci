//polar plot of a linear system 
//repf=spolarplot(G,omega) 
//G:linear system and omega: frquency in rad/s 
//repf: complex frequency response 
// save the function code program as spolarplot.sce 
function repf=spolarplot(G, omega) 
f=omega/2/%pi; 
repf=repfreq(G,f); 
r=abs(repf); 
theta=atan(imag(repf),real(repf)); 
polarplot(theta,r,style=2); 
endfunction
