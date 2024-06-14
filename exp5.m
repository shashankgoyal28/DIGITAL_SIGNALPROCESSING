clc;
clear;

M=input('Enter the value of M: ');
% M = 32
N=input('Enter the value of N: ');
% M = 1024

w1 = linspace(0,pi,N);
t1 = (0:1:M-1);

A1 = ones(1,M);
subplot(2,1,1)
stem(t1,A1,'r',LineWidth=1);
xlabel('<--- n --->');
ylabel('Amplitude --->');
legend('102115121 shashank goyal');

[H1,w1] = freqz(A1,1,N);
wN1 = w1./(2*pi);
HN1 = abs(H1)./max(abs(H1));

subplot(2,1,2)
plot(wN1,20*log10(HN1),'b',LineWidth=1);
grid

xlabel('<--- Normalizied frequency --->');
ylabel('Normalized Magnitude response (dB) --->');
title('Frequency response of rectangular window function');