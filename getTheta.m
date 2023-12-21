function theta = getTheta (x,y)
  % get the angle of a vector from the x-axis 
  if (x == 0 || y == 0) %take care of the cases on the x and y axis 
    if (x == 0 && y == 0) %at the origin and undefined angle 
      theta = 0;
    elseif (y == 0 && x != 0) % on the x-axis 
      if (x > 0)
        theta = 0;
      else
        theta = pi;
      endif
    elseif (x == 0 && y != 0) % on the y-axis
      if (y > 0)
        theta = pi/2;
      else
        theta = 3*pi/2;
      endif
    endif
  else % take care of cases not on the x or y axis  
    alpha = atan(abs(y/x));
    if (x > 0)
      if (y > 0) % Q1
        theta = alpha;
      else  % Q4
        theta = 2*pi - alpha;
      endif
    else 
      if (y > 0) % Q2
        theta = pi - alpha;
      else % Q3
        theta = pi + alpha
      endif
    endif
  endif

endfunction
