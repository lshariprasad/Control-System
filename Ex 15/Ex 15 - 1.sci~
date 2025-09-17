clear; clc; 

A=[0 1;-0.4 -1.3]; 
B=[0;1]; 
C=[0.8 1]; 
D=[0]; 
G1=syslin('c',A,B,C,D); ssprint(G1); 
G2=syslin('c',A',C',B',D);ssprint(G2); 
Cc1=cont_mat(A,B);disp(Cc1,'state controllability matrix1='); 
disp(det(Cc1),'det(Cc1)='); 
if(det(Cc1)~=0) 
printf('The given system 1 is completely controllable') 
else 
printf('The given system 1 is not completely controllable') 
end 
Ob1=obsv_mat(A,C);disp(Ob1,'observability matrix1='); 
disp(det(Ob1),'det(Ob1)'); 
if(det(Ob1)~=0) 
printf('The given system 1 is completely observable') 
else 
printf('The given system 1 is not completely observable') 
end 
Cc2=cont_mat(A',C');disp(Cc2,'state controllability matrix2='); 
disp(det(Cc2),'det(Cc2)='); 
if(det(Cc2)~=0) 
printf('The given system 2 is completely controllable') 
else 
printf('The given system 2 is not completely controllable') 
end 
Ob2=obsv_mat(A',B');disp(Ob2,'observability matrix2='); 
disp(det(Ob2),'det(Ob2)'); 
if(det(Ob2)~=0) 
printf('The given system 2 is completely observable') 
else 
printf('The given system 2 is not completely observable') 
end 
Htf=ss2tf(G1);disp (Htf,'Reduced transfer function='); 
e=spec(A); disp (e,'Eigen values='); 
D=poly(e,'s'); disp(D,'actual denominator (characteristic poly)='); 
//Htf=ss2tf(G1);disp (Htf,'Reduced transfer function='); 
//e=spec(A); disp (e,'Eigen values='); 
//D=poly(e,'s'); disp(D,'actual denominator (characteristic poly)=');
