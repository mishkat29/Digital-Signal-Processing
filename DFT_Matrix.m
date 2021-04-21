% To compute DFT of the signal given below using matrix
% method in MATLAB.x(n)=[1 2 34] 
% Display the DFT result in command window as a matrix.
% Name- Mishkat Ahmad Neyazi 
% Reg No.- 189402164 Sec- ECE-C Batch- C3
clc
%% DFT
N=4;
k=0:1:N-1;
n=0:1:N-1;
WN=exp(1i*2*pi/N);
WN_nk=WN.^(n'*k);
x=input('enter the signal');
x_t=x';
X=WN_nk*x_t;
mag_X=abs(X);
A = "DFT result";
disp(A)
disp(X)
B = "DFT result in absolute form";
disp(B)
disp(mag_X)
phase_X=angle(X)*180/pi;
%% Plotting 
subplot(2,1,1);
stem(k,mag_X)
xlabel('k');
ylabel('Magnitude of X(k)');
title('Magnitude of DFT');
subplot(2,1,2);
stem(k,phase_X,'r')
xlabel('k');
ylabel('Phase of X(k)');
title('Phase of DFT');