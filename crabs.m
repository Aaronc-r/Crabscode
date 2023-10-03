function crabs ()
% Author Aaron Ramirez 
% 9//20/23
% Crabs is a kids computer game where a fisherman, called the captain,
% hunts for a very clever and powerful crab.
% Draw the game map and initialize map dimensions.
[mapHeight , mapWidth] = drawMap( "BGImage.png" );
% Initialize captain location, heading and size
xCapt = 1000;
yCapt = 1000;
thetaCapt = -pi/2;
sizeCapt = 50;
% Draw the captain and initialize graphics handles
%*********************************************************
% Put your call to drawCapt() here ..... You must give drawCapt its
% input and output arguments.
%*******************************************************
captianGraphics = drawCaptain(xCapt, yCapt, thetaCapt, sizeCapt)

% initial command
cmd = "null";
while (cmd != "Q")
  
  cmd = kbhit()
  
  if( cmd == "w" || cmd == "a" || cmd == "d")
  % erase old captGraphics
  for(i=1: length (captainGraphics))
  set(captGraphics(i), 'Visible','off')
  endfor
  % move captain
 captainGraphics = [xCapt,yCapt,thetaCapt] = moveCapt(cmd,x,y,theta)
  
  % draw new captain
  drawCaptain(xCapt, yCapt, thetaCapt, sizeCapt)
  endif

  endwhile

close all

 endfunction