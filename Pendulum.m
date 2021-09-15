clear all;
clc;
close all

m=1;
l=1;
g=-9.8;

dt=0.05;
ts=5;
t=0:dt:ts;

thddot=0;
thdot=0;
th=pi/3;
tau=0;
Kp=40;
Kd=2;
th_d=pi/6; % desired angle
thdot_d=0; % desired angular velocity

for i=1:length(t)
    e(i)= th(i) - th_d;
    tau(i)=Kp * (  th(i) - th_d) + Kd * ( thdot(i)-thdot_d);
    thddot = (-tau(i)- m*g*l*sin(th(i))) / (m*l^2)-0.5*thdot(i);
    thdot(i+1) = thdot(i) + thddot*dt;
    th(i+1) = th(i) + thdot(i+1) * dt;
    
    subplot(2,2,1)
    plot([0 l*sin(th(i))],[0 l*cos(th(i))],'m-o','MarkerSize',8)
    axis([-2 2 -2 2]);
    axis square;
  
    subplot(2,2,2)
    plot(t(1:i),e)
    axis([0 5 -1 2])
    axis square;
    grid on;
    
    subplot(2,2,3)
    plot(t(1:i),tau, 'r')
    axis([0 5 -5 15])
    axis square;
    grid on;
    
        subplot(2,2,4)
    plot(t(1:i),thdot(1:i), 'm')
    axis([0 5 -2 2])
    axis square;
    grid on;
    pause(dt);
    
    
end
