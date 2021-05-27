% To compute DFT of the signal given below using in-built  
% function in MATLAB x=[1, 0, -1, 0, 1, 0, -1, 0]
% Name- Mishkat Ahmad Neyazi 
% Reg No.- 189402164 Sec- ECE-C Batch- C3
clc
x=[1, 0, -1, 0, 1, 0, -1, 0];
y = fft(x);
plot(x,y) 