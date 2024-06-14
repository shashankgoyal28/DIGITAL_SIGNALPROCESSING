clc
clear all
x = input('Enter x --> ');
h = input('Enter h --> ');
% x = [1 2 0 1]
% h = [2 2 1 1]
a1 = length(x);
b1 = length(h);
convl = a1 + b1 - 1;
y = zeros(1,convl);
xnew = [x,zeros(1,convl-a1)];
ynew = [h,zeros(1,convl-b1)];
for n = 1:convl
for m = 1:convl 
y(n)=y(n)+xnew(mod(n-m,convl)+1)*ynew(m);
end
end
y
subplot(3,1,1)
stem(x,'r','linewidth',1);
title('First Sequence')
xlabel('<--- n --->');
ylabel('x[n] --->');
legend('102115119 Aryaman');
grid on;

subplot(3,1,2)
stem(h,'r','linewidth',1);
title('Second Sequence')
xlabel('<--- n --->');
ylabel('h[n] --->');
legend('102115119 Aryaman');
grid on;

subplot(3,1,3)
stem(y,'r','linewidth',1);
title('Linear Convolution using Circular Convolution')
xlabel('<--- n --->');
ylabel('y[n] --->');
legend('102115119 Aryaman');
grid on;