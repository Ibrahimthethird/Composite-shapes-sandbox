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
float measleX1, measleY1, measleDiameter1; 
color measleColour=#ED1111, resetColour=#FFFFFF;
float buttonX, buttonY, buttonWidth, buttonHeight;
color  buttonColor, yellow=#FFF700, purple=#E334F7, white=#FFFFFF, resetColor=white, red=#FF0009;

// 
void setup() {
  //Geometry
  fullScreen();
  //population
  rectX = displayWidth*1/2 - displayHeight*1/2;
  rectY = displayHeight*0;
  rectWidth =displayHeight;
  rectHeight = displayHeight;
  buttonX = displayWidth*124/128;
  buttonY = displayHeight*0/128;
  buttonWidth = displayWidth*128/128;
  buttonHeight = displayHeight*4/128;
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
  ellipse(measleX1, measleY1, measleDiameter1, measleDiameter1);
  fill(resetColour);
  //Population that changes
  measleX = random(displayWidth*5/16, displayWidth*11/16);
  measleY = random(displayHeight*2/16, displayHeight*7/8);
  measleDiameter = displayWidth*1/60;
  measleX1 = random(displayWidth*2/8, displayWidth*6/8);
  measleY1 = random(displayHeight*6/16, displayHeight*6/8);
  measleDiameter1 = displayWidth*1/60;
  //
  println(mouseX, mouseY);
  if (mouseX >= buttonX && mouseY >= buttonY && mouseX <= buttonX+buttonWidth &&  mouseY <= buttonY+buttonHeight) {
    buttonColor = red; //color(random(255), random(255), random(255));
  } else {
    buttonColor = white;
  }//End IF Button Colour
  fill(buttonColor);
  rect(buttonX, buttonY, buttonWidth, buttonHeight);
  fill(resetColor);
  //
}//End draw()
//
void mousePressed() {
  if (mouseX >= buttonX && mouseY >= buttonY && mouseX <= buttonX+buttonWidth &&  mouseY <= buttonY+buttonHeight) exit();
}//End mousePressed()
