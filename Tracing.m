clear all;
clc;

t=0:0.1:5;

l1=2;
l2=1;

th1=linspace(0,pi/2, length(t));
th2=linspace(0,pi/2, length(t));


for i=1:length(t)
    
    x= [ 0    l1*cos(th1(i))  l1*cos(th1(i))+l2*cos(th1(i)+th2(i))];
    
    y= [ 0    l1*sin(th1(i))  l1*sin(th1(i))+l2*sin(th1(i)+th2(i))];
    
    bx(i)= x(3);
    by(i)= y(3);
    
    plot(x,y);
    axis([-3 3 -3 3])
    axis square
    grid on
    
    hold on
    plot(bx,by)
    hold off
    pause(0.1);
end