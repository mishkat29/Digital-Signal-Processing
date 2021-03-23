% To develop elementary signal modules for generating 
% unit impulse, unit step, unit ramp and exponential 
% signals in continuous and discrete-time domain
% Name- Mishkat Ahmad Neyazi 
% Reg No.- 189402164 Sec- ECE-C Batch- C3
clc               % Clear command window

%% Discrete-time Unit Step

n=-10:1:10;
u=[zeros(1,10) ones(1,11)];
subplot(4,2,1)
stem(n,u)
xlabel('n');
ylabel('u(n)');
title('DT Unit Step')

%% Continuous-time Unit Step

t=-10:0.1:10;
m=[zeros(1,100) ones(1,101)];
subplot(4,2,2)
plot(t,m,'r')
xlabel('t');
ylabel('u(t)');
title('CT Unit Step')

%% Discrete-time Unit Impulse

j=-10:1:10;
k=[zeros(1,10) ones(1,1) zeros(1,10)];
subplot(4,2,3)
stem(j,k)
xlabel('n');
ylabel('i(n)');
title('DT Unit Impulse')

%% Continuous-time Unit Impulse

d=[zeros(1,100) ones(1,1) zeros(1,100)];
subplot(4,2,4)
plot(t,d,'r')
xlabel('t');
ylabel('i(t)');
title('CT Unit Impuse')

%% Discrete-time Unit Ramp

w=n;
f=w.*u;
subplot(4,2,5)
stem(n,f)
xlabel('n');
ylabel('r(n)');
title('DT Unit Ramp')

%% Continuous-time Unit Ramp

s=t;
r=s.*m;
subplot(4,2,6)
plot(t,r,'r')
xlabel('t');
ylabel('r(t)');
title('CT Unit Ramp')

%% Discrete-time Exponential Signal e^2t a=2

y1=exp(2*n);
ex1=y1.*u;
subplot(4,2,7)
stem(n,ex1)
xlabel('n');
ylabel('e(n)');
title('DT Exponential')

%% Continuous-time Exponential Signal e^2t a=2

y2=exp(2*t);
ex=y2.*m;
subplot(4,2,8)
plot(t,ex,'r')
xlabel('t');
ylabel('e(t)');
title('CT Exponential')
