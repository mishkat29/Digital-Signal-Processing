% To compute the circular convolution of two 
% sequences using in-built function.
% Name- Mishkat Ahmad Neyazi 
% Reg No.- 189402164 Sec- ECE-C Batch- C3
clc
x=input('enter the input sequence'); %x=[1,2,3,4]
h=input('enter the impulse response');%h=[1,2,4]
lx=length(x);
lh=length(h);
N=max(lx,lh);
y=cconv(x,h,N)