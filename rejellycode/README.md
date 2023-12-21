# crabs

# this is a kids game called 'crabs' that allows the user to move around a captain to fight the crab

getTranslation function: <b>
Signature: number number -> matrix <b>
Purpose: expects two numbers as parameters, one representing the change in x and the other representing the <b>
change in y, and returns this new movement as a matrix. <b>
Inputs: ChangeInX, ChangeInY <b>
Outputs: function T <b>
Dependencies: None <b>
Example call: getTranslation(20, 30) <b>
Side effects: none <b>

getCapt function: <b>
Signature: number -> matrix <b>
Purpose: expects a number as a parameter to represent the distance between each point of the captain, <b>
and returns coordinates of the captain as a matrix. <b>
Inputs: captSize <b>
Outputs: capt <b>
Dependencies: None <b>
Example call: getCapt(20) <b>
Side effects: none <b>

drawMap matrix: <b>
Signature: string -> image <b>
Purpose: expects an image named imageName as a parameter, and returns the image of imageName, in this case it <b>
is the background image for the game. <b>
Inputs: imageName <b>
Outputs: height, width <b>
Dependencies: None <b>
Example call: drawMap(“crabs”) <b>
Side effects: none <b>

drawLine matrix: <b>
Signature: vector vector color -> graphics handle <b>
Purpose: expects 3 parameters, a starting vector and an ending vector, along with a color, and returns <b>
a line connecting to these two vectors in the desired color. <b>
Inputs: p, q, myColor <b>
Outputs: handle <b>
Dependencies: None <b>
Example call: drawLine(pt1, pt2, “k”) <b>
Side effects: plot points <b>

drawCapt function: <b>
Signature: number number number number -> graphics handle <b>
Purpose: expects 4 numbers as parameters, the starting x and y position of the captain, the angle of the <b>
captain, and the distance between each of the captain’s points (its size), and returns the captain’s points <b>
on the drawMap image. <b>
Inputs: xCapt, yCapt, thetaCapt, sizeCapt <b>
Outputs: captainGraphics <b>
Dependencies: getCapt, getTranslation <b>
Example call: drawCapt(2, 5, 0, 100) <b>
Side effects: plot points <b>

crabs function: <b>
Signature: call -> image <b>
Purpose: expects a call of itself, and returns an image of the entire game, including drawMap and drawCapt. <b>
Inputs: none <b>
Outputs: crabs <b>
Dependencies: drawMap, drawCapt <b>
Example call: crabs <b>
Side effects: none <b>

getRotation function: <b>
Signature: number -> matrix <b>
Purpose: expects a number on the unit circle to represent an angle, and returns a matrix that will rotate the captain based on the number. If the number is greater than 0, it rotates clockewise, and rotates counter-closckwise <b>
if it is less than 0. <b>
Inputs: theta <b>
Outputs: rotation matrix R <b>
Dependencies: drawCaptain <b>
Example call: getRotation(pi/2) <b>
Side Effects: none <b>
