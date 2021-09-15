prompt='Enter a matrix to get product of its columns ele by ele...';
v=input(prompt);
y=1;
[nr,nc]=size(v);
for i=1:nc
    for j=1:nr
        y=y*v(j,i);
    end
    display(y);
    y=1;
end