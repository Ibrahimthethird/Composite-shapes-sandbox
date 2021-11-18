//Measles
//
//Global Variables 
float rectX, rectY, rectWidth, rectHeight;
float faceX, faceY, faceDiameter;
float noseX1, noseY1, noseX2, noseY2, noseX3, noseY3;
float leftEyeX, LeftEyeY, eyeDiameter;
float rightEyeX, rightEyeY;
float mouthX1, mouthY1, mouthX2, mouthY2;
float reset, mouthThick; 
float measleX, measleY, measleDiameter; 
color measleColour=#ED1111, resetColour=#FFFFFF;
// 
void setup() {
  //Geometry
  fullScreen();
  //population
  rectX = displayWidth*1/2 - displayHeight*1/2;
  rectY = displayHeight*0;
  rectWidth =displayHeight;
  rectHeight = displayHeight;
  faceX = displayWidth*1/2;
  faceY = displayHeight*1/2; //184;
  faceDiameter= displayHeight;
  leftEyeX = displayWidth*3/8;
  LeftEyeY = displayHeight*1/4;
  eyeDiameter = displayWidth*1/12 ;
  rightEyeX = displayWidth*5/8;
  rightEyeY = displayHeight*1/4;
  noseX1 = displayWidth*1/2;
  noseY1 = displayHeight*3/8;
  noseX2 = displayWidth*7/16;
  noseY2 = displayHeight*1/2;
  noseX3 = displayWidth*9/16;
  noseY3 = displayHeight*1/2;
  mouthX1 = displayWidth*5/8;
  mouthY1 = displayHeight*3/4;
  mouthX2 = displayWidth*3/8;
  mouthY2 = displayHeight*3/4;
  mouthThick = 13;
  reset = 1;
  ellipse(faceX, faceY, faceDiameter, faceDiameter);
}//End setup()
//
void draw() {
  //Canvas
  triangle(noseX1, noseY1, noseX2, noseY2, noseX3, noseY3);
  ellipse(leftEyeX, LeftEyeY, eyeDiameter, eyeDiameter);
  ellipse(rightEyeX, rightEyeY, eyeDiameter, eyeDiameter);
  triangle(noseX1, noseY1, noseX2, noseY2, noseX3, noseY3);
  strokeWeight(mouthThick);
  line(mouthX1, mouthY1, mouthX2, mouthY2);
  strokeWeight(reset);
  fill(measleColour);
  ellipse(measleX, measleY, measleDiameter, measleDiameter);
  fill(resetColour);
  //Population that changes
  measleX = random(displayWidth*2/8, displayWidth*6/8);
  measleY = random(displayHeight);
  measleDiameter =random(displayWidth*1/30, displayWidth*1/10);
  //
}//End draw()
