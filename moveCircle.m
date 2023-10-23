function [xCircle, yCircle] = moveCircle (x, y, radius, height, width)
dStep = 20;
% move bubble 
xCircle =  x;
yCircle = y - dStep;

if(yCircle < 0)
yCirlce = height;
xCirlce = rand*width;
endif
endfunction
