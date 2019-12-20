float circleX;
float circleY;
void setup(){
  //only once
  size(640,360);
  circleX=random(0,width);
  //circleY=random(0,width);
  //background(50);
}
void draw(){
  //conti
  background(50);
  stroke(0,0,255);
  fill(255,0,0);
  
  ellipse(circleX,circleY,50,50);
  circleX=circleX+ 0.5;
  circleY=circleY+ random(-3,3);
  ellipse(circleX,50,50,50);
  rect(200,circleY,50,50);
}
