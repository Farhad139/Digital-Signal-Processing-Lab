x=input('Enter value of x: ');
N1=length(x);
subplot(3,1,1);
stem(x);
xlabel('X');
ylabel('Value');
title('Figure X');
   for k=1:N1
     m(k)=x(N1-k+1);
   end
   subplot(3,1,2);
stem(m);
xlabel('H');
ylabel('Value');
title('Figure H');
   X=[x,zeros(1,N1)];
   H=[m,zeros(1,N1)];
   for i=1:N1+N1-1
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
title('Cross Coreelation');
