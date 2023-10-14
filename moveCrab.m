function [xCrab,yCrab,thetaCrab] = moveCrab (cmd, x, y, theta , width, height)
dStep = 30;
dTheta = pi/6;

if (cmd == "j") %move left
xTemp = x + dStep*sin(theta);
yTemp = y - dStep*cos(theta);
thetaCrab = theta;
  if(IsOnMap(xTemp,yTemp,width,height))
  xCrab = xTemp;
  yCrab = yTemp;
  else 
  xCrab = x;
  yCrab = y;
  endif

elseif (cmd == "l") %move right
xTemp = x - dStep*sin(theta);
yTemp = y + dStep*cos(theta);
thetaCrab = theta;
  if(IsOnMap(xTemp,yTemp,width,height))
    xCrab = xTemp;
    yCrab = yTemp;
  else 
  xCrab = x;
  yCrab = y;
  endif

elseif (cmd == "k") %swim back
xTemp = x - dStep*cos(theta);
yTemp = y - dStep*sin(theta);
thetaCrab = theta;
  if(IsOnMap(xTemp,yTemp,width,height))
  xCrab = xTemp;
  yCrab = yTemp;
  else 
  xCrab = x;
  yCrab = y;
  endif

elseif (cmd == "o") %rotate right
xCrab = x;
yCrab = y;
thetaCrab = theta + dTheta;

elseif (cmd == "u") %rotate left
xCrab = x;
yCrab = y;
thetaCrab = theta - dTheta;

else
xCrab = x;
yCrab = y;
thetaCrab = theta;
endif
endfunction