clear
close
clc

a=imread('C:\Users\Admin\Desktop\img.png');     %read image from file
b=rgb2gray(a);                                  %convert rgb data to grayscale image by gray=(r+g+b)/3
c=a(:,:,1)-b;                                   %subtract the grayscale image from r layer
d=im2bw(c,0.4);                                 %thresholding
imshow(d);