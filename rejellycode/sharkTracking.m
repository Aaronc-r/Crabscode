function [xShark, yShark, thetaShark, sharkMove] = sharkTracking(xCapt, yCapt, xShark, yShark, sharkMove, distFromShark, thetaCapt);
  tempTheta = thetaCapt;
  if (distFromShark > sharkMove)
     if ((xCapt - xShark) >= 0); % if Captain is to the right of the shark or at the same x position
       thetaShark = atan((yCapt-yShark) / (xCapt - xShark)) + pi;
       xShark = xShark + sharkMove*cos(thetaShark);
       yShark = yShark + sharkMove*sin(thetaShark);

     elseif ((xCapt - xShark) < 0); % if Captain is to the left of the shark
       thetaShark = atan((yCapt - yShark) / (xCapt-xShark));
       xShark = xShark + sharkMove*cos(thetaShark);
       yShark = yShark + sharkMove*sin(thetaShark);
     endif

   elseif (distFromShark <= sharkMove)
       xShark = xCapt;
       yShark = yCapt;
       thetaShark = tempTheta;
   endif