prompt='Enter a matrix to get product of columns ele by ele...';
a=input(prompt);
[m,n]=size(a);
output=[];

for col=1:n
    prod=1;
    for row=1:m
        prod=prod*a(row,col);
    end
    output=[output prod];
end
output
