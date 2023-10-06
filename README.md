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
    Output: graphics handle <br>
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
    Side effects: draws the map and captain <br>

getRotation: matrix will rotate a vector in homogenous game coordinates by an
angle 𝜃. It rotates clockwise if 𝜃 > 0 and counter clockwise if 𝜃 < 0. <br>
    Input: theta <br>
    Output: rotation matrix R <br>
    Dependencies: drawCaptain <br>
    Example call: getRotation(pi/2) <br>
    Side effect: none <br>

moveCapt: allows the user to move the captain by using keystrokes, w makes the captain move forward, a makes the captain rotate to the left, and d makes the captain rotate to the right <br>
    Input: cmd, x, y, theta <br>
    Output: xCapt, yCapt, thetaCapt <br>
    Dependencies: none <br>
    Example call: <br>
    Side effects: <br>

IsCaptOnMap: checks if the captian is "outside" the boundreies of the map and does not allow the captain to swim outside of the map boundries <br>
    Input: x, y, width, height <br>
    Output: mapCheck <br>
    Dependencies: none <br>
    Example call: <br>
    Side effects: <br>
