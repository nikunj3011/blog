void setup(){
  //only once
  size(640,360);
  //background(50);
}
void draw(){
  //conti
  background(50);
  stroke(0,0,255);
  fill(255,0,0);
  rectMode(CENTER);
  rect(width-mouseX,height-mouseY,30,30);

}
