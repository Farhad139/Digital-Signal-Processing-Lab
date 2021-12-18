x=input('Enter value of x: ');
h=input('Enter value of h: ');
N1=length(x);
N2=length(h);
X=[x,zeros(1,N2)];
H=[h,zeros(1,N1)];
for i=1: N1+N2-1
    y(i)=0;
    for j=1:N1
    if(i-j+1>0)
    y(i)=y(i)+X(j)*H(i-j+1);
     else
    end
  end
end
stem(y);
ylabel('y[n]');
xlabel('------>n');
title('convolution of two signal');
    
    