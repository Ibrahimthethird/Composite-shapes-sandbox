//Measles
//
float rectX, rectY, rectWidth, rectHeight;
float circleX, circleY, circleDiameter;
float x1, y1, x2, y2, x3, y3;
//Geometry
fullScreen();
//
//population
rectX = displayWidth*1/2 - displayHeight*1/2;
rectY = displayHeight*0;
rectWidth =displayHeight;
rectHeight = displayHeight;
circleX = displayWidth*1/2;
circleY = displayHeight*1/2; //184;
circleDiameter= height;
x1 = displayWidth*1/2;
y1 = displayHeight*1/2;
x2 = displayWidth;
y2 = displayHeight;
x3 = displayWidth*-1/2;
y3 = displayHeight*-1/2;
//
//Canvas
rect(rectX, rectY, rectWidth, rectHeight);
ellipse(circleX, circleY, circleDiameter, circleDiameter);
triangle(x1, y1, x2, y2, x3, y3);
