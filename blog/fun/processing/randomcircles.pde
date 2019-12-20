float circleX;
float circleY;
void setup(){
  //only once
  size(640,360);

  background(50);
}
void draw(){
  //conti
  //background(50);
  stroke(0,0,255);
  fill(255,0,0);
  circleX=random(width);
  circleY=random(height);
  ellipse(circleX,circleY,20,20);
  println("CircleX: " +circleX);

}
