function [ output_args ] = half( input_args )
%HALF - Removes every even numbered entry from a vector

A = input_args; % Vector with which to manipulate
L = length(A); % Length of vector, A.

output_args = A(1:2:L); % Output a new vector with only every other value
                        % from A.
        
end
