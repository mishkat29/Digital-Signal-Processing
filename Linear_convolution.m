%% To Perform Discrete Time Convolution
% Name- Mishkat Ahmad Neyazi 
% Reg No.- 189402164 Sec- ECE-C Batch- C3
clc % Clear command window
%% x(n) = [1 2 3] and h(n) = [1 2 1 2]
x = [1 2 3];
N1 = length(x);
h = [1 2 1 2];
N2 = length(h);
fprintf('conv(x,h)')
y = conv(x,h) % checking it using inbuilt function in MATLAB
length_y = N1+N2-1;
for k=1:length_y
  y(k)=0; % Initialize The Accumulator
   for n=1:N1
      i=k-n+1;  
      if (i<=0 || i>N2) % Index values that are not allowed
          continue
      end
      y(k)=y(k)+x(n)*h(i);
   end
end 

subplot(3,1,1)
n1=-1:1:N1-2;
stem(n1,x)
xlabel('n')
ylabel('x(n)')
title('Input Signal')

subplot(3,1,2)
n2=-1:1:N2-2;
stem(n2,h,'g')
xlabel('n')
ylabel('h(n)')
title('Impulse Response')

subplot(3,1,3)
n=-1:1:length_y-2;
stem(n,y,'r')
xlabel('n')
ylabel('y(n)')
title('Output Signal')
