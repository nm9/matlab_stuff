prompt='Enter a vector to get product of its elements...';
v=input(prompt);
y=1;
for i=1:length(v)
    y=v(i)*y;
end
display(y);