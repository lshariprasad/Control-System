clear; 
clc; 
clf(); //use clf() instead of xdel(winsid()) 
A=[0 1;-1 -2]; 
B=[0;1]; 
C=[2 4]; 
D=[0]; 
G1=syslin('c',A,B,C,D); ssprint(G1); 
G2=syslin('c',A',C',B',D); ssprint(G2); 
// Controllability for system 1 
Cc1=cont_mat(A,B); disp(Cc1,'State controllability matrix1='); 
disp(det(Cc1),'det(Cc1)='); 
if det(Cc1)<>0 then 
printf('The given system 1 is completely controllable\n'); 
else 
printf('The given system 1 is not completely controllable\n'); 
end 
// Observability for system 1 
Ob1=obsv_mat(A,C); disp(Ob1,'Observability matrix1='); 
disp(det(Ob1),'det(Ob1)='); 
if det(Ob1)<>0 then 
printf('The given system 1 is completely observable\n'); 
else 
printf('The given system 1 is not completely observable\n'); 
end 
// Controllability for system 2 (dual system) 
Cc2=cont_mat(A',C'); disp(Cc2,'State controllability matrix2='); 
disp(det(Cc2),'det(Cc2)='); 
if det(Cc2)<>0 then 
printf('The given system 2 is completely controllable\n'); 
else 
printf('The given system 2 is not completely controllable\n'); 
end 
// Observability for system 2 (dual system) 
Ob2=obsv_mat(A',B'); disp(Ob2,'Observability matrix2='); 
disp(det(Ob2),'det(Ob2)='); 
if det(Ob2)<>0 then 
printf('The given system 2 is completely observable\n'); 
else 
printf('The given system 2 is not completely observable\n'); 
end 
// Transfer function & eigenvalues 
Htf=ss2tf(G1); disp(Htf,'Reduced transfer function='); 
e=spec(A); disp(e,'Eigen values='); 
D=poly(e,'s'); disp(D,'Actual denominator (characteristic polynomial)=');
