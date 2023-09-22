# Crabscode

Crabs Functions 

getTranslation function: Makes a tranlation matrix 
    Input: delta_x dx, delta_y dy
    Output: shifting matrix T
    Dependencies: drawCaptain
    Example call: getTranslation(5, 8)
    Side effects:  

getCapt function:
    Input: captSize
    Output: capt
    Dependencies: 
    Example call: getCapt(50)
    Side effects:

drawMap function
    Input: imageName
    Output: height width
    Dependencies: 
    Example call: drawMap(
    Side effects:

drawLine function
    Input: p q color 
    Output: handle
    Dependencies: 
    Example call: drawLine([5;10;1], [20;30;1], 'k')
    Side effects: plotting

drawCaptain
    Input: xCapt, yCapt thetaCapt sizeCapt
    Output: captainGraphics 
    Dependencies: getCapt, getTranslation
    Example call: drawCaptain( 4, 8, -pi/2, 50)
    Side effects:

crabs function
    Input:
    Output: 
    Dependencies: drawMap, drawCapt
    Example call: crabs
    Side effects:
