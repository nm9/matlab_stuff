x=0:0.1:10;
noise=4*rand(1,length(x));
y=2*x+noise;
plot(x,y)

p=polyfit(x,y,1);
y1=polyval(p,x);
hold on
plot(x,y1)