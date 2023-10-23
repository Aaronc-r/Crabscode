function crabs (level)
%initialize command and map dimensions and draw map

[mapHeight,mapWidth] = drawMap("BGImage.png");
%initialize captain location, heading and size
xCapt = 1000;
yCapt = 500;
thetaCapt = -pi/2;
sizeCapt = 50;
%initialize crab location, heading and size
xCrab = 1000;
yCrab = 1200;
thetaCrab = -pi/2;
sizeCrab = 50;

% initialize Jelly fish
 xJelly =  rand*mapWidth;
 yJelly =  0;
 thetaJelly = -pi/2;
 sizeJelly = 25;

% initialize bubble 
%xCircle = rand*mapWidth;
%yCircle = mapHeight;
%radius = 10;
 
%draw initial captain and crab
captainGraphics = drawCaptain(xCapt,yCapt,thetaCapt,sizeCapt);
crabGraphics = drawCrab(xCrab,yCrab,thetaCrab,sizeCrab);
jellyGraphics = drawJelly(xJelly,yJelly,thetaJelly, sizeJelly);
%cricleGraphics = drawCircle (xCircle, yCircle, radius, mapHeight, mapWidth);
%%%%% main loop %%%%%%%%%%

while (1) % start game loop
  % erase 
  for i=1: length(jellyGraphics)
    delete(jellyGraphics(i))
  endfor
% moveJelly
 [xJelly,yJelly,thetaJelly] = moveJelly(level,xJelly,yJelly,thetaJelly, sizeJelly, mapHeight, mapWidth);

% draw Jelly
 jellyGraphics = drawJelly(xJelly,yJelly,thetaJelly, sizeJelly);

cmd = kbhit(1);
if(cmd == "Q")
   break
endif 
   
if( cmd == "w" || cmd == "a" || cmd == "d" ) %respond to keyboard. captain has moved
%erase old captain
for i=1:length(captainGraphics)
set(captainGraphics(i),'Visible','off');
endfor
%move capt
[xCapt,yCapt,thetaCapt] = moveCapt(cmd,xCapt,yCapt,thetaCapt, mapWidth, mapHeight);
%draw new capt
captainGraphics = drawCaptain(xCapt,yCapt,thetaCapt,sizeCapt);

elseif (cmd == "u" || cmd == "j" || cmd == "k" || cmd == "l" || cmd =="o") % respond crab moved

%erase old crab
for i=1:length(crabGraphics)
set(crabGraphics(i),'Visible','off');
endfor
%move crab
[xCrab,yCrab,thetaCrab] = moveCrab(cmd,xCrab,yCrab,thetaCrab,mapWidth,mapHeight);
%draw new captain and crab
crabGraphics = drawCrab(xCrab,yCrab,thetaCrab,sizeCrab);
endif
fflush(stdout);
pause(.01);
endwhile
close all
clear
endfunction