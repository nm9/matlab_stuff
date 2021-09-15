function [max]=meraMax(n1, n2, n3, n4)
%This function finds the maximum of the given four numbers

max=n1;

if n2>max
    max=n2;
end

if n3>max
    max=n3;
end

if n4>max
    max=n4;
end

end