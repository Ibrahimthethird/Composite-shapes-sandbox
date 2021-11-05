//Measles
//
float rectX, rectY, rectWidth, rectHeight;
float faceX, faceY, faceeDiameter, faceDiameter;
float noseX1, noseY1, noseX2, noseY2, noseX3, noseY3;
float leftEyeX, LeftEyeY, eyeDiameter, eyeDiameter;
float rightEyeX, rightEyeY, eyeDiameter, eyeDiameter;
float mouth
//Geometry
fullScreen();
//
//population
rectX = displayWidth*1/2 - displayHeight*1/2;
rectY = displayHeight*0;
rectWidth =displayHeight;
rectHeight = displayHeight;
faceX = displayWidth*1/2;
faceY = displayHeight*1/2; //184;
faceDiameter= height;
noseX1 = displayWidth*1/2;
noseY1 = displayHeight*3/8;
noseX2 = displayWidth*3/8;
noseY2 = displayHeight*1/2;
noseX3 = displayWidth*5/8;
noseY3 = displayHeight*1/2;
//
//Canvas
rect(rectX, rectY, rectWidth, rectHeight);
ellipse(faceX, faceY, faceeDiameter, faceDiameter);
ellipse(leftEyeX, LeftEyeY, eyeDiameter, eyeDiameter);
ellipse(rightEyeX, rightEyeY, eyeDiameter, eyeDiameter);
triangle(noseX1, noseY1, noseX2, noseY2, noseX3, noseY3);
line(mouthX1, mouthY1, mouthX2, mouthY2);
