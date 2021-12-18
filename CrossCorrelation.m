x=input('Enter value of x: ');
h=input('Enter value of impulse sequence: ');
N1=length(x);
N2=length(h);
subplot(3,1,1);
stem(x);
xlabel('X');
ylabel('Value');
title('Figure X');
   for k=1:N2
     m(k)=h(N2-k+1);
   end
   subplot(3,1,2);
stem(m);
xlabel('H');
ylabel('Value');
title('Figure H');
   X=[x,zeros(1,N2)];
   H=[m,zeros(1,N1)];
   for i=1:N1+N2-1
        y(i)=0;
        for j=1:N1
          if(i+1-j>0)
          y(i)=y(i)+X(j)*H(i+1-j);
          end
        end
   end
 subplot(3,1,3);
stem(y);
xlabel('X');
ylabel('Value');
title('Cross Co-relation');
