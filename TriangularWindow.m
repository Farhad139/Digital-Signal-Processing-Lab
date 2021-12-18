amplitude = 2;
f=1000;
T=0.01;
t=0:.00001:T;
y= amplitude*sin(2*pi*f*t);
subplot(3,1,1);
plot(t,y);
title('sine wave');
N=500;
fs=15*f;
n=0:N-1;
fs=15*f;
y= amplitude*sin(2*pi*(f/fs)*n);
triangular=1-abs((2*n-N+1)/(N-1))
subplot(3,1,2)
stem(triangular);
title('triangular window');
triy=triangular.*y;
subplot(3,1,3)
stem(triy);
title('multiplied by triangular window');