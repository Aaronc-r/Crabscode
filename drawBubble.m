function bubbleGraphics = drawBubble (xBubble,yBubble,sizeBubble)
bubble = getBubble(sizeBubble);


T = getTranslation(xBubble,yBubble);
bubble = T*bubble;

pt1=bubble(:,1);
pt2=bubble(:,2);
pt3=bubble(:,3);
pt4=bubble(:,4);
pt5=bubble(:,5);
pt6=bubble(:,6);
pt7=bubble(:,7);
pt8=bubble(:,8);
pt9=bubble(:,9);
pt10=bubble(:,10);
pt11=bubble(:,11);
pt12=bubble(:,12);
pt13=bubble(:,13);
pt14=bubble(:,14);

   
bubbleGraphics(1)=drawLine (pt1, pt2, 'c');
bubbleGraphics(2)=drawLine (pt2, pt3, 'c');
bubbleGraphics(3)=drawLine (pt3, pt4, 'c');
bubbleGraphics(4)=drawLine (pt4, pt5, 'c');
bubbleGraphics(5)=drawLine (pt5, pt6, 'c');
bubbleGraphics(6)=drawLine (pt6, pt7, 'c');
bubbleGraphics(7)=drawLine (pt7, pt8, 'c');
bubbleGraphics(8)=drawLine (pt8, pt9, 'c');
bubbleGraphics(9)=drawLine (pt9, pt10, 'c');
bubbleGraphics(10)=drawLine (pt10, pt11, 'c');
bubbleGraphics(11)=drawLine (pt11, pt12, 'c');
bubbleGraphics(12)=drawLine (pt12, pt13, 'c');
bubbleGraphics(13)=drawLine (pt13, pt14, 'c');
bubbleGraphics(14)=drawLine (pt14 , pt1, 'c');

endfunction
