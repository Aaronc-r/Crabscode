function capt = getCapt(captSize)
% The function getCapt computes and returns the captain centered at the origin. The head of the
%captain is on the positive x-axis indication a heading angle of zero. The captain is returned in the form of
%a matrix where each column represents one point on the captain. The parameter captSize sets the size
%of the captain.
% In the sketch below, the captain is drawn facing you with his right hand holding the spear.
% The sketch shows him with his points numbered.

%left side
captPt1 = [ captSize; captSize; 1]; %left shoulder
captPt2 = [ -captSize; captSize; 1]; %left hip
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
captPt11 = [ 0; 2*captSize; 1]; %left
captPt12 = [ 0; -2*captSize; 1]; %right
%spear
captPt13=[ 3*captSize; -2*captSize; 1]; % tip of spear
captPt14=[ -captSize; -2*captSize; 1]; % base spear
captPt15=[ -captSize; 2*captSize; 1]; % base of spear
captPt16=[4*captSize; 2*captSize; 1]; % tip of spear

%net
NetPt1 = [4 * captSize; 0.5 * captSize; 1];
NetPt2 = [4 * captSize; 3.5 * captSize; 1];
NetPt3 = [7 * captSize; 3.5 * captSize; 1];
NetPt4 = [7 * captSize; 0.5 * captSize; 1];

invisNodeCapt = [0; 0; 1];
invisHeadNode = [1.5*captSize; 0; 1];

%invisible node
NetPt5 = [4.5 * captSize; 2.0 * captSize; 1];
%captain matrix
capt = [ captPt1, captPt2, captPt3, captPt4, captPt5, captPt6, captPt7, ...
captPt8, captPt9, captPt10, captPt11, captPt12, captPt13, captPt14, captPt15,captPt16 ...
NetPt1, NetPt2, NetPt3, NetPt4, NetPt5, invisNodeCapt, invisHeadNode];
endfunction

