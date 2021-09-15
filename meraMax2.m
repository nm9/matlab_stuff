function [max]=meraMax2(V)
%This function finds the maximum element in a vector

max=V(1);

for i=1:length(V)
    if V(i)>max
        max=V(i);
    end
end

end

