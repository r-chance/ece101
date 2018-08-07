% Lab 1 .m script files

% Problem 1

% This script will load an ASCII file as a vector, play that vector as a
% sound file, and plot and label the graph of the vector.

load Message1 -ascii
sound(Message1,11025)
plot(Message1)
title('Remember, the Force will be with you, always.')
xlabel('Time')
ylabel('Amplitude')

% Problem 2
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

% Problem 3
%This script will compute the value of the following problem, and then
%convert the rectangular coordinates to polar.

A = ((4+2*i)*(1-i))/((2+3*i)*(3-2*i))

% Using Matlab to convert rectangular form to polar form
B = abs(A) %gives the magnitude of the complex number
c = angle(A) %gives the angle, in radians

% Calculating polar form by 'hand'
Modulus = sqrt( real(A)^2 + imag(A)^2 )
Theta = atan( imag(A)/real(A) )

% Problem 4
% This script will save different variables from the workspace
% into various files of different types.

% Saving ALL variables to a file named 'prob4.mat'
save('prob4.mat')% No parenthesis or quotes needed at command window

% Saving variables Y, M, and C to a file named 'prob4.mat'
save('prob4.mat', 'Y','M','C')% No quote or comma needed for command entry

% Saving variable C as floating point numbers in an ascii file 
% named 'prob2_C.txt'
save('prob2_C.txt', 'C', '-ascii', '-double')

% Problem 5
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

% Problem 6
% This script will call functions 'half' and 'twice' to manipulate 
% vectors in a time scaling manner.

x = [1 2 3 4 5 4 3 2 1];
y = [1 2 3 4 5 6 5 4 3 2 1];

half(x) % Display every other number in x
twice(x)% Display every number of x, with averages of each consecutive
        % number inserted between.

half(y) % Display every other number in y
twice(y)% Display every number of y, with averages of each consecutive
        % number inserted between.
        
half(twice(x)) % Displays the original vector, x.  Inverse operations.
twice(half(x)) % Displays the original vector, x.  Not inverse.

half(twice(y)) % Displays the original vector, y. Inverse operations.
twice(half(y)) % Displays a incorrect vector, y.  Not inverse.

% The twice(half(y)) operation is only commutative with half(twice(y)) when
% an even number of terms are removed with the half(y) function.

% Play Y audio at half(Y) and twice(Y)
sound(half(Y),11025) % Causes audio to play at 2x speed
sound(twice(Y),11025) % Causes audio to play at 1/2x speed

