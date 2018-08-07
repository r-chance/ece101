%Problem 1, part b
% Create a blur filter with a difference equation
% Difference eq in the form y[n] = 1/n Sum(x[n-k]), 0<=k<=N-1 

%Length of blur
N = 16;

b(1:N) = 1/N; % coefficients for x[n-k];

a = [1]; % coefficients for y[n]

[H, omega] = freqz(b,a,1024,'whole');
figure;
plot(omega, 20*log10(abs(H)));
xlabel('\omega', 'FontSize', 20);
ylabel('| H(e^{j\omega}) |', 'FontSize', 20);
title('Length 16 Blur Filter');