function cricleGraphics = drawCircle (x, y, radius)
n = 360;
theta = 2 * pi / n;

for (k =  1: n)
  x(k) = radius * cos(k * theta);
  y(k) = radius * sin(k * theta);
endfor
plot (x,y)
endfunction