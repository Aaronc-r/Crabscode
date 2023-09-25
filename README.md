# Crabscode

Crabs Functions 

getTranslation function: getTranslation takes in the argumetns delta x and delta y and retruns T, a translation matrix, and multiplying T to capt so that we can translate the captain  <br>
    Input: delta_x dx, delta_y dy <br>
    Output: shifting matrix T <br>
    Dependencies: none <br>
    Example call: getTranslation(5, 8) <br>
    Side effects: none <br>

getCapt function: getCapt takes in the argument captSize, and retruns a vector of the captians points <br>
    Input: captSize <br>
    Output: capt <br>
    Dependencies: none <br>
    Example call: getCapt(50) <br>
    Side effects: none <br>

drawMap function: drawMap ddraws the background for the game using an image, imageName, and returns the demesnions base from the image <br>
    Input: imageName <br>
    Output: height width <br>
    Dependencies: none <br>
    Example call: none <br>
    Side effects: <br>

drawLine function: drawLine draws a line between two points, p and q in homogeneous corrdinates <br>
    Input: p, q, color <br>
    Output: handle <br>
    Dependencies: <br>
    Example call: drawLine([5;10;1], [20;30;1], 'k') <br>
    Side effects:  <br>

drawCaptain: drawCaptian draws the captain at a given size using sizeCapt at a given position xCapt, yCapt and the heading using thetaCapt <br>
    Input: xCapt, yCapt, thetaCapt, sizeCapt <br>
    Output: captainGraphics <br>
    Dependencies: getCapt, getTranslation <br>
    Example call: drawCaptain( 4, 8, -pi/2, 50) <br>
    Side effects:  draws the outline of the captain on the map <br>

crabs function: crabs is a kids computer game where a fisherman, captain, hunts for a crab <br>
    Input: none <br>
    Output: none <br>
    Dependencies: drawMap, drawCapt <br>
    Example call: crabs <br>
    Side effects: none <br>
