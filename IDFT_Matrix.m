% To compute IDFT of the signal given below using matrix 
% method in MATLAB.X(K)=[6,-2+j2,-2,-2-j2]
% Displaythe IDFT result in command window as a matrix.
% Name- Mishkat Ahmad Neyazi 
% Reg No.- 189402164 Sec- ECE-C Batch- C3
clc
%% IDFT
N=4;
k=0:1:N-1;
n=0:1:N-1;
WN=exp(1i*2*pi/N);
WN_nk=WN.^(n'*k);
X=input('enter the signal');
X_t=X';
x=(1/N)*(WN_nk*X_t);
mag_x=abs(x);
A = "IDFT result";
disp(A)
disp(x)
B = "IDFT result in absolute form";
disp(B)
disp(mag_x)
phase_x=angle(x)*180/pi;
%% Plotting 
subplot(2,1,1);
stem(k,mag_x)
xlabel('k');
ylabel('Magnitude of x(k)');
title('Magnitude of IDFT');
subplot(2,1,2);
stem(k,phase_x,'r')
xlabel('k');
ylabel('Phase of x(k)');
title('Phase of IDFT');