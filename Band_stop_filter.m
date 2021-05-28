% To Design Band Stop/Band Reject Finite Impulse Response Filter 
% using window technique in MATLAB
% Name- Mishkat Ahmad Neyazi 
% Reg No.- 189402164 Sec- ECE-C Batch- C3
clc
wc1=input('Enter the lower cut off frequency');
wc2=input('Enter the upper cut off frequency');
N=input('Enter the filter order/filter length');
alpha=(N-1)/2;
delta=0.01;

%% Rectangular Window
n=0:1:N-1; % Casual, Filter Length N
hd=(sin((n-alpha+delta)*pi)+sin(wc1*(n-alpha+delta))-sin(wc2*(n-alpha+delta)))./(n-alpha+delta);  % Desired Filter Impulse Response-IIR Filter
h=hd; % FIR Filter After Truncation With Window FN-Impulse res or coeff
w=0:0.01:pi;
H=freqz(h,1,w); % Frequency Response
plot(w/pi,abs(H),'b')
hold on;

%% Haming Window
n=0:1:N-1; % Casual, Filter Length N
hd=(sin((n-alpha+delta)*pi)+sin(wc1*(n-alpha+delta))-sin(wc2*(n-alpha+delta)))./(n-alpha+delta); % Desired Filter Impulse Response-IIR Filter
wn=0.54-0.46*cos((2*n*pi)/(N-1)); % Hamming Window Function
h=hd.*wn; % FIR Filter After Truncation With Window FN-Impulse res or coeff
w=0:0.01:pi;
H=freqz(h,1,w); % Frequency Response
plot(w/pi,abs(H),'r')
hold on;

%% Hanning Window
n=0:1:N-1; % Casual, Filter Length N
hd=(sin((n-alpha+delta)*pi)+sin(wc1*(n-alpha+delta))-sin(wc2*(n-alpha+delta)))./(n-alpha+delta);  % Desired Filter Impulse Response-IIR Filter
wn=0.5-0.5*cos((2*n*pi)/(N-1)); % Hanning Window Function
h=hd.*wn; % FIR Filter After Truncation With Window FN-Impulse res or coeff
w=0:0.01:pi;
H=freqz(h,1,w); % Frequency Response
plot(w/pi,abs(H),'k')
hold on;

%% Bartlett Window
n=0:1:N-1; % Casual, Filter Length N
hd=(sin((n-alpha+delta)*pi)+sin(wc1*(n-alpha+delta))-sin(wc2*(n-alpha+delta)))./(n-alpha+delta); % Desired Filter Impulse Response-IIR Filter
wn=1-(2*(n-(N-1)/2)/(N-1)); % Bartlett Window Function
h=hd.*wn; % FIR Filter After Truncation With Window FN-Impulse res or coeff
w=0:0.01:pi;
H=freqz(h,1,w); % Frequency Response
plot(w/pi,abs(H),'g')
hold on;
