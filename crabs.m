function crabs (level)
%initialize command and map dimensions and draw map
numCrabs = level;
numJelly = level;

% start screen

[mapHeight , mapWidth] = drawMap( "starting scene.png" );
cmd = "null";
while(cmd == "null")
  cmd = kbhit();

endwhile
[mapHeight,mapWidth] = drawMap("BGImage.png");
%initialize captain location, heading and size
xCapt = 1000;
yCapt = 500;
thetaCapt = -pi/2;
sizeCapt = 50;
healthCapt = 100;
crabsCaught = 0;

%initialize crab location, heading and size
xCrab = rand(1,numCrabs)*mapWidth;
yCrab = 3*mapHeight/4 + rand(1,numCrabs)*mapHeight/4;
thetaCrab = ones(1,numCrabs)*(-pi/2);
crabsCaught = 0;
sizeCrab = 50;
isCrabCaught = zeros(1,numCrabs);


% initialize Jelly fish
xJelly = rand(1,numJelly)*mapWidth;
yJelly = rand(1,numCrabs)*mapHeight;
thetaJelly = ones(1,numJelly)*(-pi/2);
sizeJelly = 25;
jellySting = 5;


% initialize Bubble
sizeBubble = 15;
xBubble = rand*mapWidth;
yBubble = mapHeight - 40*sizeBubble;

 
%draw initial captain and crab
[captainGraphics, xNet, yNet] = drawCaptain(xCapt,yCapt,thetaCapt,sizeCapt);
bubbleGraphics = drawBubble(xBubble,yBubble,sizeBubble);
% draw jellies
for j=1:numJelly
  jellyGraphics(:,j) = drawJelly(xJelly(j),yJelly(j),thetaJelly(j), sizeJelly);
endfor

%draw crabs
for k=1:numCrabs
crabGraphics(:,k) = drawCrab(xCrab(k),yCrab(k),thetaCrab(k),sizeCrab);
endfor

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

for j=1:numJelly
  delete(jellyGraphics(:,j))
% moveJelly
 [xJelly(j),yJelly(j),thetaJelly(j)] = moveJelly(level,xJelly(j),yJelly(j),thetaJelly(j), sizeJelly, mapHeight, mapWidth);

% draw Jelly
  jellyGraphics(:,j) = drawJelly(xJelly(j),yJelly(j),thetaJelly(j), sizeJelly);
endfor


 for i=1: length(bubbleGraphics)
   delete(bubbleGraphics(i))
 endfor
 % move bubble 
 [xBubble,yBubble] = moveBubble (level,xBubble,yBubble,sizeBubble,mapHeight,mapWidth);
 
 % draw bubble 
 bubbleGraphics = drawBubble (xBubble,yBubble,sizeBubble);


% check if the capt got stung 
for j=1:numJelly
if(getDist(xJelly(j), yJelly(j), xCapt, yCapt) < 3*sizeCapt)
  healthCapt = healthCapt - jellySting*level;
endif
endfor

if(healthCapt < 0)
  break;
endif

commandwindow();

cmd = kbhit(1);
if(cmd == "Q")
   break
endif 
   
if( cmd == "w" || cmd == "a" || cmd == "d" || cmd == "s" ) %respond to keyboard. captain has moved
%erase old captain
for i=1:length(captainGraphics)
delete(captainGraphics(i))
endfor
%move capt
[xCapt,yCapt,thetaCapt] = moveCapt(cmd,xCapt,yCapt,thetaCapt, mapWidth, mapHeight);
%draw new capt
[captainGraphics, xNet, yNet] = drawCaptain(xCapt,yCapt,thetaCapt,sizeCapt);

for k=1:numCrabs
  if( !isCrabCaught(k) && getDist(xNet,yNet,xCrab(k),yCrab(k)) < 2*sizeCapt ) %crab is caught
    crabsCaught = crabsCaught + 1;
    isCrabCaught(k) = 1;
%erase old crab
    for i=1:length(crabGraphics(:,k))
      delete(crabGraphics(i,k));
    endfor
  endif
endfor
endif
fflush(stdout);
pause(.01);
endwhile
% end screen

cmd = "null";
if (cmd != "Q")
    [mapHeight , mapWidth] = drawMap( "End.png" );
    cmd = "null";
    while (cmd == "null")
        cmd = kbhit();
        if (cmd != "Q");
          crabs(1);
        endif
    endwhile
endif
close all
clear
endfunction