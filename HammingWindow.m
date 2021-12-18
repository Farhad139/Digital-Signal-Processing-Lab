amplitude = 2;
f=1000;
t=0:.00001:0.01;
y= amplitude*sin(2*pi*f*t);
subplot(3,1,1);
plot(t,y);
title('sine wave')
N=500;
n=0:N-1;
fs=14*f;
y= amplitude*sin(2*pi*(f/fs)*n);
ham=.54-.46*cos((2*pi*n)/(N-1))
subplot(3,1,2);
stem(ham);
title('hamming window');
hamy=ham.*y;
subplot(3,1,3);
stem(hamy);
title('multiply y(n) with hamming window');