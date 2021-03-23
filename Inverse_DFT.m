%% IDFT
clc
clear all
N=4;
k=0:1:N-1;
n=0:1:N-1;
WN=exp(j*2*pi/N);
WN_nk=WN.^(n'*k);
X=input('enter the dft');
X_t=X';
x=(1/N)*(WN_nk*X_t);
mag_x=abs(x);
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