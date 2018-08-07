% This part of the lab will analyze frequency response to an input, x[n],
% of which will be constructed with a fft using the coefficients a_k.

% ***Part a***

% Coefficients of x[n] in S1 
b1 = [1];
% Coefficients of y[n] in S1
a1 = [1, -.8];
% Coefficients of x[n] in S2
b2 = b1;
% Coefficients of y[n] in S2
a2 = [1, .8];


% ***Part b***

figure;
[H, omega] = freqz(b1,a1,1024,'whole');%generate frequency response
plot(omega, abs(H));
title('Frequency response of S1');
xlabel('\omega', 'Fontsize', 20);
ylabel('| H(j\omega) |', 'Fontsize', 20);

figure;
[H, omega] = freqz(b2,a2,1024,'whole');
plot(omega, abs(H));
title('Frequency response of S2');
xlabel('\omega', 'Fontsize', 20);
ylabel('| H(j\omega) |', 'Fontsize', 20);
% S1 is a lowpass filter, S2 is a highpass filter


% ***Part c***

% Coefficients of the DTFS of x[n] over <N>, N =20
a_x = [0,.75,0,0,0,0,0,0,0,-.5,0,-.5,0,0,0,0,0,0,0,.75];

figure;
n_ax = (0:19);
stem(n_ax,a_x);
xlabel('\omega_k = (2\pi/20)k', 'Fontsize', 20);
title('DTFS coefficients of x[n]');
% For S1, the lower frequency components will be amplified and the higher
% ones will be attenuated, vice versa for S2.


% ***Part D***

N=20; %Period of a_k
x_20 = real(N*ifft(a_x));% build x[n] by taking ifft of coefficient vector
x = repmat(x_20,1,6);% 6 periods of x_20
n = (-20:99); %index vector for x
figure;
stem(n,x); %plot x vs n
xlabel('n','Fontsize',20);
ylabel('Real(x)','Fontsize',20);
title('Synthesized plot of x[n]');


% ***Part E***

y1 = filter(b1,a1,x);
y2 = filter(b2,a2,x);
y1 = y1(1:100);%5 periods of y[n]
y2 = y2(1:100);%"  "       "  "
n = (0:99);

figure;
stem(n,y1);
xlabel('n','Fontsize',20);
ylabel('Amplitude of y[n]','Fontsize',20);
title('Output from S1');

figure;
stem(n,y2);
xlabel('n','Fontsize',20);
ylabel('Amplitude of y[n]','Fontsize',20);
title('Output from S2');

% ***Part F***

y1_20 = y1(1:20);
y2_20 = y2(1:20);
a_y1 = real(fft(y1_20));% DTFS coefficients of y1
a_y2 = real(fft(y2_20));% DTFS coefficients of y2
n_y = (0:19);

figure;
stem(n_y,abs(a_y1));
xlabel('n','Fontsize',20);
ylabel('a_k','Fontsize',20);
title('DTFS coefficients for y1[n]');

figure;
stem(n_y,abs(a_y2));
xlabel('n','Fontsize',20);
ylabel('a_k','Fontsize',20);
title('DTFS coefficients for y2[n]');