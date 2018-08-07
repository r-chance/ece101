function [ output_args ] = twice( input_args )
%TWICE - Inserts average values between adjacent vector values.

A = input_args; % Vector with which to manipulate
L1 = length(A); % Length of vector A

L2 = (2 * L1) - 1; % Length of new vector

B = zeros(1,L2);% Fill new vector with all zeros as placeholders

B(1:2:L2) = A(1:L1);% Fill every other vector value with consecutive values
                    % of vector A.
B(2:2:L2) = (A(1:L1-1)+A(2:L1))/2;% Fill remaining vector values with an
                                  % average of the two adjacent values


output_args = B; % Output the new vector

end

