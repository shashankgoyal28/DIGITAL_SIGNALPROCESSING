function [xf,xt] = dft_idft_bedi(x,N)
% dft_idft_bedi([1, 1, 1, 1, 1], 5)

l=length(x);
if l<=N
    xz=[x, zeros(1,N-l)];
    xf = zeros(1,N);
    for k = 0:N-1
        for n = 0:N-1
            xf(k+1) = xf(k+1) + xz(n+1)* exp(-1i*2*pi*k*n/N);
        end
    end

    figure()
    subplot(2,2,1)
    stem(0:N-1,abs(xf),'b','LineWidth',1);
    grid
    title('Magnitude of DFT')
    xlabel('<--- n --->')
    ylabel('|X(k)| --->')
    legend('102115119 Aryaman');

    subplot(2,2,2)
    stem(0:N-1,angle(xf),'r','LineWidth',1)
    grid
    title('Phase of DFT')
    xlabel('<--- n --->')
    ylabel('angle(X(k)) --->')
    legend('102115119 Aryaman');

    xt = zeros(1,N);
    for k = 0:N-1
        for n = 0:N-1
            xt(k+1) = xt(k+1) + xf(n+1)* exp(1i*2*pi*k*n/N);
        end
    end
    xt = xt / N;

    subplot(2,2,3)
    stem(0:N-1,abs(xt),'b','LineWidth',1);
    grid
    title('Magnitude of IDFT')
    xlabel('<--- n --->')
    ylabel('|X(k)| --->')
    legend('102115119 Aryaman');

    subplot(2,2,4)
    stem(0:l-1,angle(xt),'r','LineWidth',1)
    grid
    title('Phase of IDFT')
    xlabel('<--- n --->')
    ylabel('angle(X(k)) --->')
    legend('102115119 Aryaman');

else
    xf=0;
    xt=0;
end
end





















































