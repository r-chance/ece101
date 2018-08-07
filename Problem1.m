% This script will load an ASCII file as a vector, play that vector as a
% sound file, and plot and label the graph of the vector.

load Message1 -ascii
sound(Message1,11025)
plot(Message1)
title('Remember, the Force will be with you, always.')
xlabel('Time')
ylabel('Amplitude')