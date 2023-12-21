function [xShark, yShark] = moveShark (level, x, y, theta, size, height, width)
sharkMove = -40;
xShark = x+sharkMove;
yShark = y;
thetaShark = theta;

if (xShark <= 0)
  xShark = width;
  yShark = y;
endif

endfunction