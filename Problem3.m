%This script will compute the value of the following problem, and then
%convert the rectangular coordinates to polar.

A = ((4+2*i)*(1-i))/((2+3*i)*(3-2*i))

% Using Matlab to convert rectangular form to polar form
B = abs(A) %gives the magnitude of the complex number
c = angle(A) %gives the angle, in radians

% Calculating polar form by 'hand'
Modulus = sqrt( real(A)^2 + imag(A)^2 )
Theta = atan( imag(A)/real(A) )

