function crabs (level)
%initialize command and map dimensions and draw map

[mapHeight,mapWidth] = drawMap("BGImage.png");
%initialize captain location, heading and size
xCapt = 1000;
yCapt = 500;
thetaCapt = -pi/2;
sizeCapt = 50;
healthCapt = 100;
crabsCaught = 0;

%initialize crab location, heading and size
xCrab = rand*mapWidth;
yCrab = rand*mapHeight/4 + 3*mapHeight/4;
thetaCrab = -pi/2;
sizeCrab = 50;


% initialize Jelly fish
 xJelly =  rand*mapWidth;
 yJelly =  0;
 thetaJelly = -pi/2;
 sizeJelly = 25;
 jellySting = 5;


% initialize Bubble
sizeBubble = 15;
xBubble = rand*mapWidth;
yBubble = mapHeight - 40*sizeBubble;

 
%draw initial captain and crab
[captainGraphics, xNet, yNet] = drawCaptain(xCapt,yCapt,thetaCapt,sizeCapt);
crabGraphics = drawCrab(xCrab,yCrab,thetaCrab,sizeCrab);
jellyGraphics = drawJelly(xJelly,yJelly,thetaJelly, sizeJelly);
bubbleGraphics = drawBubble(xBubble,yBubble,sizeBubble);

% print heatlh status 
healthLoc = [100,100];
pointsLoc = [100,175];
healthStatus = text(healthLoc(1), healthLoc(2), strcat('Health =  ', num2str(healthCapt)),'FontSize', 12, 'Color', 'red');
pointsStatus = text(pointsLoc(1), pointsLoc(2), strcat('Points =  ', num2str(crabsCaught)),'FontSize', 12, 'Color', 'red');
%%%%% main loop %%%%%%%%%%

while (1) % start game loop
 %remove old and plot new health and points 
  delete(healthStatus);
  delete(pointsStatus); 
  healthStatus = text(healthLoc(1), healthLoc(2), strcat('Health: ', num2str(healthCapt)), 'FontSize', 12, 'Color', 'red');
  pointsStatus = text(pointsLoc(1), pointsLoc(2), strcat('Points: ', num2str(crabsCaught)), 'FontSize', 12, 'Color', 'red');
 % erase 
  for i=1: length(jellyGraphics)
    delete(jellyGraphics(i))
  endfor
% moveJelly
 [xJelly,yJelly,thetaJelly] = moveJelly(level,xJelly,yJelly,thetaJelly, sizeJelly, mapHeight, mapWidth);

% draw Jelly
 jellyGraphics = drawJelly(xJelly,yJelly,thetaJelly, sizeJelly);
 
 for i=1: length(bubbleGraphics)
   set(bubbleGraphics(i),'Visible','off');
 endfor
 % move bubble 
 [xBubble,yBubble] = moveBubble (level,xBubble,yBubble,sizeBubble,mapHeight,mapWidth);
 
 % draw bubble 
 bubbleGraphics = drawBubble (xBubble,yBubble,sizeBubble);
 
 % check if a crab is caught, male him disapper and crea t a new one 
 if(getDist(xNet,yNet,xCrab,yCrab) < 2*sizeCapt) %crab is caught
    crabsCaught = crabsCaught + 1;
    
    %erase old crab
    for i=1:length(crabGraphics)
      set(crabGraphics(i),'Visible','off');
    endfor
    
    %create new crab
    xCrab = rand*mapWidth;
    yCrab = rand*mapHeight;
    thetaCrab = -pi/2;
    sizeCrab = 50;
    
    %draw new crab
    crabGraphics = drawCrab(xCrab,yCrab,thetaCrab,sizeCrab);
    
endif

% check if the capt got stung 
if(getDist(xJelly, yJelly, xCapt, yCapt) < 3*sizeCapt)
  healthCapt = healthCapt - jellySting*level;
endif

if(healthCapt < 0)
  break;
endif

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
[captainGraphics, xNet, yNet] = drawCaptain(xCapt,yCapt,thetaCapt,sizeCapt);


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