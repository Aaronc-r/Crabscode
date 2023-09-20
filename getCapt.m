function capt = getCapt (captSize)

%Capt left side
captPt1 = [ captSize; captSize; 1]; %left shoulder
captPt2 = [ -captSize; captSize; 1]; %left waist
%Capt feet
captPt3 = [-3*captSize; captSize; 1]; %left
captPt4 = [-3*captSize; -captSize; 1]; %right
%Capt right side
captPt5 = [ -captSize; -captSize; 1]; % right waist
captPt6 = [ captSize; -captSize; 1]; % right shoulder
%head
captPt7 = [ captSize; -captSize/2; 1];
captPt8 = [ 2 *captSize; -captSize/2; 1];
captPt9 = [ 2*captSize; captSize/2; 1];
captPt10 = [ captSize; captSize/2; 1];
%hands
captPt11 = [ 0; 2*captSize; 1]; % left
captPt12 = [ 0; -2*captSize; 1]; %r ight
%spear
captPt13=[ 3*captSize; -2*captSize; 1]; % tip
captPt14=[ -captSize; -2*captSize; 1]; % base
captPt15=[ 3*captSize; 2*captSize; 1];
captPt16=[ -captSize; 2*captSize; 1];

%elbow
captPt17=[ captSize/2; -1.5*captSize; 1];
captPt18=[ captSize/2; 1.5*captSize; 1]; 
%captain matrix
capt = [ captPt1, captPt2, captPt3, captPt4, captPt5, captPt6, captPt7, ...
captPt8, captPt9, captPt10, captPt11, captPt12, captPt13, captPt14, ...
captPt15, captPt16, captPt17, captPt18];
endfunction