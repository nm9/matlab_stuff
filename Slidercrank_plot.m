%s=acos(phi)+sqrt(b^2-(asin(phi)-e)^2)
%plot displacement vs angle graph

phi=0:0.1:360;
a=1;
b=1.5;
e=0.3;

s=a*cosd(phi)+sqrt(b^2-(a*sin(phi)-e).^2);
plot(phi,s);