n = input('enter n: \n');
m = input('enter m: \n');
l = max(n,m);
x = zeros(1,m);
for i = 1:n
   x(i) = input('enter sequence x:');
i = i+1;
end
n = zeros(1,m);
for i = 1:m
n(i) = input('enter sequence h:');
i = i + 1;
end
y = conv(x,n);
y2 = [y,zeros(1,1)];
y1 = zeros(1,1);
k = m+n-1
for i = 1:l
   y1(i)= y2(i)+y2(l+i);
end 
disp('circular convolutions:');
disp(y1)
subplot(4,4,1);
stem(x);
title('first sequence');
xlabel('time----->')
ylabel('Amplitude')
legend('102115121');
subplot(4,1,2);
stem(n);
title('second sequence');
xlabel('time----->')
ylabel('Amplitude')
legend('102115121');
subplot(4,1,3);
stem(y1);
title('circular convolutions(without convo)')
xlabel('time----->')
ylabel('Amplitude')
legend('102115121');
y4 = conv(x,h,l);
subplot(4,1,4)
stem(y4);
title('circular convolutions (with conv)');
xlabel('time----->')
ylabel('Amplitude')
legend('102115121');