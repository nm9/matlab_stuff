clear
close
clc

x=-10:0.1:10;
y=-10:0.1:10;
[X,Y]=meshgrid(x,y);            %provides empty mesh grid or array

Z=X.*Y+Y.^2.*sin(X);
%mesh(X,Y,Z);                    %plots given mesh
colormap('jet')                 %jet,hsv,hot,cool,spring,summer,autumn,winter
%hold on
s=surf(X,Y,Z);
s.EdgeColor='none';
s.FaceAlpha=0.5;