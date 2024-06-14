x = input('enter X(n): \n');
h = input('enter H(n): \n');
l1 = length(x);
l2 = length(h);
N = l1+l2-1;
x = [x,zeros(1,l2-1)];
h = [h,zeros(1,l1-1)]
for n = 0:N-1
    y(n+1) = 0;
    for k = 0:N-1
        j = mod((n-k),N);
        if(i<=0)
            i=N+i;
        end
    y(n+1) = [y(n+1)+h(k+1)*x(i+1)];
    end 
end 
disp('linear convolutions using circular convolutions');
disp(y);
subplot(2,2,1);
stem(x)
xlabel('n')
ylabel('X(n)')
title('plot of x1(n)');
legend('102115121');
subplot(2,2,2);
stem(h)
xlabel('n')
ylabel('h(n)')
title('plot of x2(n)')
legend('102115121')
subplot(2,2,3)
stem(y);
xlabel('n')
ylabel('y(n)')
title('linear convolutions')
legend('102115121')