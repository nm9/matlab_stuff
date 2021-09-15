clear
close
clc

x=0:0.1:10;
y=sin(x);
z=cos(x);
ln1=plot(x,y,'r*--');                            % Types of lines: *, o, +, ., s=square, p=star, ^=triangle, v=ulta triangle, > & < =triangles
hold on
ln1.LineWidth=1;                                 % Default linewidth is 0.5
ln1.MarkerSize=4;                                % Colour types: g(green), r(red), y(yellow), m(magenta), w(white), k(black), b(blue), c(cyan)
ln2=plot(x,z,'b*');
ln2.LineWidth=2;
ln2.MarkerSize=5;
grid on;
xlabel('X-axis');
ylabel('Y-axis');
title('Basic Trigonometric functions');
axis([0 10 -2 2]);
legend('sin function', 'cos function');