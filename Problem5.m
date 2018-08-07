% This script will compute and plot a graph as a function of a vector,
% theta, that contains discrete values ranging from 0-14999

n = 0:14999;
n = n*(2*pi/15000); % vector containing 15000 numbers from [0,2pi)
r = sin(2*n);
Z = r.*exp(j*n);

% Display graphs of Z, real(Z), and imag(Z)
figure
plot(Z); % Plot of Z(n) in complex plane
title('Z as a function of theta')
figure
plot(real(Z))
figure
plot(imag(Z))

