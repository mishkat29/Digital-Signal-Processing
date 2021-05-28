% To compute the z-transform of x[n]= cos (2n)
% Name- Mishkat Ahmad Neyazi 
% Reg No.- 189402164 Sec- ECE-C Batch- C3
clc
syms n;      %Toolbox containing Z-Transform commands (syms z for inverse z-transform) 
f=cos(2*n);
a="z-transform of x[n]= cos(2n) is- ";
disp(a)
y=ztrans(f); %ztrans command to calculate Z-Transform
disp(y)