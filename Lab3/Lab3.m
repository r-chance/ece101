%Problem 1

% De-blur an image by means of matrix manipulation

colormap(map) %set the color map for the picture

% N is blur length, we will try different values from [1,670] to deblur
N = 583; %This value of N provides the clearest picture

% L is length of each row (# of columns)
L = length(car);
% K is length of each column (# of rows)
K = size(car,1);

% create frequency response H
h(1:N)=1/N;
h(N+1:L)=0;
H = toeplitz(h);
H = tril(H); % lower tri matrix gives form of Toeplitz matrix

% transpose H 
H1 = transpose(H);

% invert matrix transpose(H)
A = inv(H1);
% multiply inverted transposed matrix H by blurred image to produce
% the original.
Image = car*A;
image(Image)










