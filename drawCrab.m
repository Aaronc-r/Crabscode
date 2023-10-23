function crabGraphics = drawCrab (xCrab,yCrab,thetaCrab,sizeCrab)

 % This function draws the crab by rotating and shifting the crab
 % as it appears in getCrab . m where it is at the origin with zero heading .

  %get crab at the origin
  crab = getCrab(sizeCrab);

  % rotate crab
  R = getRotation(thetaCrab);
  crabRotated = R*crab;
  % shift crab to new location
  S = getTranslation(xCrab,yCrab);
  crab = S*crabRotated;

  % get crab points
   Pt1=crab(:,1);
   Pt2=crab(:,2);
   Pt3=crab(:,3);
   Pt4=crab(:,4);
   Pt5=crab(:,5);
   Pt6=crab(:,6);
   Pt7=crab(:,7);
   Pt8=crab(:,8);
   Pt9=crab(:,9);
   Pt10=crab(:,10);
   Pt11=crab(:,11);
   Pt12=crab(:,12);
   Pt13=crab(:,13);
   Pt14=crab(:,14);
   Pt15=crab(:,15);
   Pt16=crab(:,16);
   Pt17=crab(:,17);
   Pt18=crab(:,18);
   Pt19=crab(:,19);
   Pt20=crab(:,20);

  % Right Leg
  crabGraphics(1) = drawLine( Pt1, Pt2,"r");

  % Left Leg
  crabGraphics(2) = drawLine( Pt3, Pt4,"r");

  % left Body with arm
  crabGraphics(3) = drawLine( Pt5, Pt6,"r");
  crabGraphics(4) = drawLine( Pt6, Pt7,"r");
  crabGraphics(5) = drawLine( Pt7, Pt8,"r");

  % Right body with arm
  crabGraphics(6) = drawLine( Pt9, Pt10,"r");
  crabGraphics(7) = drawLine( Pt10, Pt11,"r");
  crabGraphics(8) = drawLine( Pt11, Pt12,"r");

  % Body upper and lower connections
  crabGraphics(9) = drawLine( Pt5, Pt9,"r");
  crabGraphics(10) = drawLine( Pt6, Pt10,"r");

  % Right Eye
  crabGraphics(11) = drawLine( Pt13, Pt14,"r");

  % Left Eye
  crabGraphics(12) = drawLine( Pt15, Pt16,"r");

  % Right Claw
  crabGraphics(13) = drawLine( Pt8, Pt17,"r");
  crabGraphics(14) = drawLine( Pt8, Pt18,"r");

  % Left Claw
  crabGraphics(15) = drawLine( Pt12, Pt19,"r");
  crabGraphics(16) = drawLine( Pt12, Pt20,"r");

endfunction