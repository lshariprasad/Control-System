clear; 
clc; 
xdel(winsid()); //close all windows 
//please edit the path 
//cd"/<your code directory>/" 
//exec("spolarplot.sce") 
cd"C:\Users\admin\Documents" 
exec("spolarplot.sce") 
s=%s; 
omega=logspace(-1,3,1000); 
G=syslin('c',10,0.05*s^3+0.6*s^2+s); 
disp(G,’The given transfer function G(s)=’);
