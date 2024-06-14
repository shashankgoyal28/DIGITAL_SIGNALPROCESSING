clc
clear all
x = input('Enter x --> ');
h = input('Enter h --> ');
m = length(x);
n = length(h);
N = n+m-1;
x = [x,zeros(1,N-m)]
h = [h,zeros(1,N-n)]
y = [zeros(1,N)]
for i = 1:N
    y(i) = 0;
    for k = 1:i
        y(i) = y(i) + (x(k)*h(i-k+1))
    end
end
y

%Plot Results
ny = 0:N-1
subplot(3,1,1)
stem(ny,x,'linewidth',1);
xlabel('<--- n --->');
ylabel('x[n] --->');
legend('102115119');
grid on;

subplot(3,1,2)
stem(ny,h,'-ms','linewidth',1);
xlabel('<--- n --->');
ylabel('h[n] --->');
legend('102115119');
grid on;

subplot(3,1,3)
stem(ny,y,'-ro','linewidth',1);
title('Linear Convolution')
xlabel('<--- n --->');
ylabel('y[n] --->');
legend('102115119');
grid on;