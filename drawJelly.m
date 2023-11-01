function jellyGraphics = drawJelly (x, y, theta, size)
jelly = getJelly(size);

%rotate
R = getRotation(theta);
jellyRotated = R*jelly;

%translate
T = getTranslation(x,y);
jelly = T*jellyRotated;

pt1=jelly(:,1);
pt2=jelly(:,2);
pt3=jelly(:,3);
pt4=jelly(:,4);
pt5=jelly(:,5);
pt6=jelly(:,6);
pt7=jelly(:,7);
pt8=jelly(:,8);
pt9=jelly(:,9);
pt10=jelly(:,10);
pt11=jelly(:,11);
pt12=jelly(:,12);
pt13=jelly(:,13);
pt14=jelly(:,14);
pt15=jelly(:,15);
pt16=jelly(:,16);
pt17=jelly(:,17);
pt18=jelly(:,18);
pt19=jelly(:,19);
pt20=jelly(:,20);
pt21=jelly(:,21);
pt22=jelly(:,22);
pt23=jelly(:,23);
pt24=jelly(:,24);


%right sise
jellyGraphics(1)=drawLine (pt1, pt2, 'b'); 
jellyGraphics(2)=drawLine (pt2, pt3, 'b');
jellyGraphics(3)=drawLine (pt3, pt4, 'b');

%middle
jellyGraphics(4)=drawLine (pt5, pt6, 'b');
jellyGraphics(5)=drawLine (pt6, pt7, 'b');
jellyGraphics(6)=drawLine (pt7, pt8, 'b');
jellyGraphics(7)=drawLine (pt13, pt14, 'b'); 
jellyGraphics(8)=drawLine (pt14, pt15, 'b');
jellyGraphics(9)=drawLine (pt15, pt16, 'b');

jellyGraphics(10)=drawLine (pt17, pt18, 'b');
jellyGraphics(11)=drawLine (pt18, pt19, 'b');
jellyGraphics(12)=drawLine (pt19, pt20, 'b');

jellyGraphics(13)=drawLine (pt21, pt22, 'b'); 
jellyGraphics(14)=drawLine (pt22, pt23, 'b');
jellyGraphics(15)=drawLine (pt23, pt24, 'b');
%left side
jellyGraphics(16)=drawLine (pt9, pt10, 'b');
jellyGraphics(17)=drawLine (pt10, pt11, 'b');
jellyGraphics(18)=drawLine (pt11, pt12, 'b');
%top
jellyGraphics(19)=drawLine (pt12, pt4, 'b');
jellyGraphics(20)=drawLine (pt11, pt3, 'b');



endfunction
