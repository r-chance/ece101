% This script will load an encrypted audio file, decrypt it, and play the 
% resulting audio clip.  It will also produce a graph of the decrypted
% audio file.

load problem2.mat
N = length(X16);
n = transpose(1:N); % Produces a column vector instead of a row vector
C = 10*cos(pi/6*n);
M = abs(X16);
K = imag(X16);
Z = times((M - 50),(K + C));
sound(Z,11025)
figure
plot(Z)
title('Time reversed message')
Y = flipud(Z); % Reverses vector direction
sound(Y,11025)
figure
plot(Y)
title('I''m looking forward to completing your training. In time, you will call me Master')
