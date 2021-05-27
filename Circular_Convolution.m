%To compute the circular convolution of two 
% sequences using DFT-IDFT technique
% Name- Mishkat Ahmad Neyazi 
% Reg No.- 189402164 Sec- ECE-C Batch- C3
clc
%% Circular Convolution using DFT-IDFT Technique
x=input('enter the input sequence') ;    % x=[1,2,3,4]
h=input('enter the impulse response') ;  % h=[1,2,4]
lx=length(x);
lh=length(h);
N=max(lx,lh);
%% Zero Padding
xpad=[x,zeros(1,N-lx)];
hpad=[h,zeros(1,N-lh)];
X=fft(xpad);
H=fft(hpad);
Y=X.*H;
y=ifft(Y)                                % Circular Convolution
