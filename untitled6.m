x = [1 2 3 4];
N = length(x);y.size of x
l = (N-1)/2
r = zeros(1,2*l+1);
han = zeros(1,2*l+1);
ham = zeros(1,2*l+1);
blk = zeros(1,2*l+1);
for i = 1:(2*l+1)
    n = i - (l+1);
    r(i) = 1;
    han(i) = 0.5 + 0.5*cos(2*pi*n/N);
    ham(i) = 0.54 + 0.46*cos(2*pi*n/N);
    blk(i) = 0.42 + 0.5*cos(2*pi*n/(N+1)) + 0.8*cos(4*pi*n(N-1));
    n = n+1 ;
end
% rectangular window 
r1 = fftshift(fft(r,1000));
y1 = abs(r1)/max(r1);
r2 = 20*log10(y1);
subplot(4,2,1);
plot(v);
title('time domain of rectangular window - 102115121')
xlabel('time')
ylabel('amplitude')
subplot(4,2,2);
plot(r2);
title('frequency domain of rectangular window - 102115121')
xlabel('frequncy')
ylabel('amplitude')
%hamming window 
han1 = fftshift(fft(han,1000));
w1 = abs(han1)/(max(han1));
han2 = 20*log10(w1);
subplot(4,2,3);
plot(han);
title('time domain of hamming window - 102115121')
xlabel('time')
ylabel('amplitude')
%hamming window 
ham1 = fftshift(fft(ham,1000));
a1 = abs(ham1)/max(ham1);
ham2 = 20*log10(a1);
subplot(4,2,5);
plot(ham);
title('time domain of hamming window - 102115121');
xlabel('frequncy');
ylabel('amplitude');
%black window
blk1 
b1
blk2 = 20*log10(b1);
subplot(4,2,7);
plot(blk);
title('time domain of blackman window - 102115121')
xlabel('time')
ylabel('amplitude')
subplot(4,2,8);
plot blk2 
title('frequency domain of blackman window - 102115121')
xlabel('frequncy');
ylabel('amplitude');