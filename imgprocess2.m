clear
close
clc

a=imread('C:\Users\Admin\Desktop\img.png');     %read image from file

%b=a(:,:,1)+a(:,:,2);
%imtool(b);

c=(0.5*(a(:,:,1))+0.5*(a(:,:,2)))-a(:,:,3);
imtool(c);

d=im2bw(c,0.4);
imshow(d);
% d=medfilt2(d,[5,5]);
% d=bwareaopen(d,706);
% imshow(d);