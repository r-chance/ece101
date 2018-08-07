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



