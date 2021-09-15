function [op]=colMax(V)
%find max in a column
[nr,nc]=size(V);
op=[];
for i=1:nc
    cmax=V(1,i);
    for j=1:nr
        if V(j,i)>cmax
        cmax=V(j,i);
        end
    end
    op=[op cmax];
end