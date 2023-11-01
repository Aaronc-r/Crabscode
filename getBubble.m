function bubble = getBubble(sizeBubble)
pt1 = [0;-3*sizeBubble;1];
% Q 1
pt2 = [sizeBubble;-2.25*sizeBubble;1];
pt3 = [2*sizeBubble;-1.5*sizeBubble;1];
pt4 = [3*sizeBubble;-0.75*sizeBubble;1];
% Q 4
pt5 = [3*sizeBubble;0.75*sizeBubble;1];
pt6 = [2*sizeBubble;1.5*sizeBubble;1];
pt7 = [sizeBubble;2.25*sizeBubble;1];

pt8 = [0;3*sizeBubble;1];
% Q 3
pt9 = [-sizeBubble;2.25*sizeBubble;1];
pt10 = [-2*sizeBubble;1.5*sizeBubble;1];
pt11 = [-3*sizeBubble;0.75*sizeBubble;1];
% Q 4
pt12 = [-3*sizeBubble;-0.75*sizeBubble;1];
pt13 = [-2*sizeBubble;-1.5*sizeBubble;1];
pt14 = [-sizeBubble;-2.25*sizeBubble;1];

bubble = [ pt1,pt2,pt3,pt4,pt5,pt6,pt7,pt8,...
pt9,pt10,pt11,pt12,pt13,pt14];
endfunction
