function crab = getCrab (sizeCrab)
% This function stores and returns the crab at the origin with zero heading in the
% form of a matirx .
% Each colunm represents one point on the crab .
% Right Leg
crabPt1 = [ -1.25*sizeCrab; 1.5*sizeCrab; 1];
crabPt2 = [ -.75*sizeCrab; sizeCrab; 1];
% Left Leg
crabPt3 = [-1.25*sizeCrab; -1.5*sizeCrab; 1];
crabPt4 = [ -.75*sizeCrab; -sizeCrab; 1];
% Left side of body (including arm)
crabPt5 = [ -sizeCrab; -sizeCrab; 1];
crabPt6 = [ 0; -sizeCrab; 1];
crabPt7 = [ .5*sizeCrab; -2*sizeCrab; 1];
crabPt8 = [ sizeCrab; -.75*sizeCrab; 1];
% Right side of body (including arm)
crabPt9 = [ -sizeCrab; sizeCrab; 1];
crabPt10 = [ 0; sizeCrab; 1];
crabPt11 = [ .5*sizeCrab; 2*sizeCrab; 1];
crabPt12 = [ sizeCrab; .75*sizeCrab; 1];
% left Eye
crabPt13 = [ 0; -.5*sizeCrab; 1];
crabPt14 = [ .5*sizeCrab; -.5*sizeCrab; 1];
% Right Eye
crabPt15 = [ 0; .5*sizeCrab; 1];
crabPt16 = [ .5*sizeCrab; .5*sizeCrab; 1];
% Left Claw
crabPt17 = [ .75*sizeCrab; -.5*sizeCrab; 1];
crabPt18 = [ 1.25*sizeCrab; -.5*sizeCrab; 1];
% Right Claw
crabPt19 = [ .75*sizeCrab; .5*sizeCrab; 1];
crabPt20 = [ 1.25*sizeCrab; .5*sizeCrab; 1];
crab = [ crabPt1, crabPt2, crabPt3, crabPt4, crabPt5, crabPt6, crabPt7, crabPt8, crabPt9, crabPt10,crabPt11, crabPt12, crabPt13,...
crabPt14, crabPt15, crabPt16, crabPt17, crabPt18, crabPt19, crabPt20];
endfunction