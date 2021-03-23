% To generate basic equation in continuous and discrete time domain
% 𝑦(𝑡)=𝑡3𝑒−𝑡 cos(4𝑡)𝑢(𝑡)
clc              % Clear command window

%% Continuous-time Function
t=-10:0.1:10;
y0=power(t,3);
y1=exp(-1*t);
y2=cos(4*t);
y3=[zeros(1,100) ones(1,101)];
y=y0.*y1.*y2.*y3;
subplot(1,2,1)
plot(t,y)
xlabel('t')
ylabel('y(t)')
title('CT Function')

%% Discrete-time Function

n=-10:1:10;
x0=power(n,3);
x1=exp(-1*n);
x2=cos(4*n);
x3=[zeros(1,10) ones(1,11)];
x=x0.*x1.*x2.*x3;
subplot(1,2,2)
stem(n,x,'r')
xlabel('n')
ylabel('y(n)')
title('DT Function')
