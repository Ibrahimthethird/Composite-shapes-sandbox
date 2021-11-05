//Measles
//
float rectX, rectY, rectWidth, rectHeight;
float faceX, faceY, faceeDiameter, faceDiameter;
float noseX1, noseY1, noseX2, noseY2, noseX3, noseY3;
float leftEyeX, LeftEyeY, eyeDiameter;
float rightEyeX, rightEyeY;
float mouthX1, mouthY1, mouthX2, mouthY2;
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
faceDiameter= displayHeight;
leftEyeX = displayWidth*1/4;
LeftEyeY = displayHeight*1/4;
eyeDiameter = displayWidth*1/8 ;
rightEyeX = displayWidth*3/4;
rightEyeY = displayHeight*1/4;
//eyeDiameter = ;
//eyeDiameter = ;
noseX1 = displayWidth*1/2;
noseY1 = displayHeight*3/8;
noseX2 = displayWidth*3/8;
noseY2 = displayHeight*1/2;
noseX3 = displayWidth*5/8;
noseY3 = displayHeight*1/2;
mouthX1 = displayWidth*1/4;
mouthY1 = displayHeight*3/4;
mouthX2 = displayWidth*3/4;
mouthY2 = displayHeight*3/4;
//
//Canvas
rect(rectX, rectY, rectWidth, rectHeight);
ellipse(faceX, faceY, faceDiameter, faceDiameter);
ellipse(leftEyeX, LeftEyeY, eyeDiameter, eyeDiameter);
ellipse(rightEyeX, rightEyeY, eyeDiameter, eyeDiameter);
triangle(noseX1, noseY1, noseX2, noseY2, noseX3, noseY3);
line(mouthX1, mouthY1, mouthX2, mouthY2);
