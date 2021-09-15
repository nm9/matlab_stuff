clear
clc
close all

l_1=5;
l_2=8;
l_3=5;
l_4=10;
th_1=pi/6;

C1x=0;              %given
C1y=0;              %given

C4x=C1x+l_4;
C4y=C1y;

C2x=C1x+l_1*cos(th_1);
C2y=C1y+l_1*sin(th_1);

%now for C3
dist=1000;
for th_2=0:0.05:pi
    C3x=C4x+l_3*cos(th_2);
    C3y=C4y+l_3*sin(th_2);
    dist_tmt=sqrt((C2x-C3x).^2+(C2y-C3y).^2);
    
    diff=abs(dist_tmt-l_2);
    if diff<dist
        dist=diff;
        theta2=th_2;
    end
end

C3x=C4x+l_3*cos(theta2);
C3y=C4y+l_3*sin(theta2);

plot([C1x C2x],[C1y C2y]);
hold on
plot([C2x C3x],[C2y C3y]);
plot([C3x C4x],[C3y C4y]);
plot([C4x C1x],[C4y C1y]);