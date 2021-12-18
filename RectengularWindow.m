amplitude = 2;
f=1000;
T=0.01;
t=0:.00001:T;
y= amplitude*sin(2*pi*f*t);
subplot(3,1,1);
plot(t,y);
title('sine wave');
N=500;
fs=10*f;
n=0:N-1;
fs=15*f;
y= amplitude*sin(2*pi*(f/fs)*n);
rect = ones(1,N);
subplot(3,1,2);
stem(rect);
title('Rectangular window')
recy=y.*rect;
subplot(3,1,3);
stem(recy);
title('Multiplied by Rectangular window');

