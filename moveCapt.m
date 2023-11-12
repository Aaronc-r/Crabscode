function [ xCapt, yCapt, thetaCapt ] = moveCapt( cmd, x, y, theta , width, height)

dTheta = pi/6;
dStep = 50;
dSprint = 100;

if( cmd == "w" ) % move forward
xTemp = x + dStep*cos(theta);
yTemp = y + dStep*sin(theta);
thetaCapt = theta;

if(IsCaptOnMap(xTemp,yTemp,width,height))
    xCapt = xTemp;
    yCapt = yTemp;
  else
     xCapt = x;
    yCapt = y;
  endif
  
  elseif( cmd == "s" ) % move forward
xTemp = x + dSprint*cos(theta);
yTemp = y + dSprint*sin(theta);
thetaCapt = theta;

if(IsCaptOnMap(xTemp,yTemp,width,height))
    xCapt = xTemp;
    yCapt = yTemp;
  else
     xCapt = x;
    yCapt = y;
    endif

elseif ( cmd == "d" ) % turn right
xCapt = x;
yCapt = y;
thetaCapt = theta + dTheta;

elseif ( cmd == "a" ) % turn left
xCapt = x;
yCapt = y;
thetaCapt = theta - dTheta;

else % if none of the cases are true, set the new variables equal to the old inputs .
xCapt = x;
yCapt = y;
thetaCapt = theta;

endif
endfunction
