% This script will save different variables from the workspace
% into various files of different types.

% Saving ALL variables to a file named 'prob4.mat'
save('prob4.mat')% No parenthesis or quotes needed at command window

% Saving variables Y, M, and C to a file named 'prob4.mat'
save('prob4.mat', 'Y','M','C')% No quote or comma needed for command entry

% Saving variable C as floating point numbers in an ascii file 
% named 'prob2_C.txt'
save('prob2_C.txt', 'C', '-ascii', '-double')