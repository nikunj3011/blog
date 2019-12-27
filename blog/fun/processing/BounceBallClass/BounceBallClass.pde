BounceBall b;

void setup(){
  //only once
  size(600,300);
  b = new BounceBall();
  

  //background(50);
}
void draw(){
  //conti
  background(51);  
  b.displayBall();
  b.moveBall();
  b.checkEdges();
    
}
