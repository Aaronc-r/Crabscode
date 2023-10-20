function jelly = getJelly (sizeJelly)
% define jellyfish points
% short right arm
pt1 = [-5*sizeJelly;sizeJelly;1];
pt2 = [-3*sizeJelly;2*sizeJelly;1];
% body
pt3 = [-sizeJelly;sizeJelly;1];
pt4 = [sizeJelly;sizeJelly/2;1];
pt11 = [-sizeJelly;-sizeJelly;1];
pt12 = [sizeJelly;-sizeJelly/2;1];
% long left arms 
% outter long arm
pt5 = [-7*sizeJelly;-1.5*sizeJelly;1];
pt6 = [-5*sizeJelly;-sizeJelly/2;1];
pt7 = [-3*sizeJelly;-1.5*sizeJelly;1];
pt8 = [-sizeJelly;-sizeJelly/2;1];
% inner long arm
pt21 = [-7*sizeJelly;-1.1*sizeJelly;1];
pt22 = [-5*sizeJelly;-sizeJelly/5;1];
pt23 = [-3*sizeJelly;-1.1*sizeJelly;1];
pt24 = [-sizeJelly;-sizeJelly/5;1];
%short left arm 
pt9 = [-5*sizeJelly;-sizeJelly;1];
pt10 = [-3*sizeJelly;-2*sizeJelly;1];
% long right arms 
%outer long arm
pt13 = [-7*sizeJelly;1.5*sizeJelly;1];
pt14 = [-5*sizeJelly;sizeJelly/2;1];
pt15 = [-3*sizeJelly;1.5*sizeJelly;1];
pt16 = [-sizeJelly;sizeJelly/2;1];
% inner long arm
pt17 = [-7*sizeJelly;1.1*sizeJelly;1];
pt18 = [-5*sizeJelly;sizeJelly/5;1];
pt19 = [-3*sizeJelly;1.1*sizeJelly;1];
pt20 = [-sizeJelly;sizeJelly/5;1];

%return
jelly = [pt1,pt2,pt3,pt4,pt5,pt6,pt7,pt8,pt9,pt10,pt11,pt12,pt13,pt14,pt15,pt16,pt17,pt18,pt19,pt20,pt21,pt22,pt23,pt24];

endfunction