clear
close
clc

a=imread('C:\Users\Admin\Desktop\img.png');

b=rgb2gray(a);

c=0.5*(a(:,:,1)+a(:,:,2))-a(:,:,3);

d=im2bw(c,0.4);
d=medfilt2(d,[10 10]);

stat=regionprops(d,'BoundingBox','Centroid');
for i=1:length(stat)
    B_b=stat(i).BoundingBox;
end

imshow(a);
hold on
rectangle('Position',B_b,"EdgeColor",'r');