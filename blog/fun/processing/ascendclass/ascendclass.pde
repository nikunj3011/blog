Bubble b;
void setup(){
  size(600,300);
  b= new Bubble();
}
void draw(){
  background(255);
  b.ascend();
  b.display();
}
void mousePressed(){
  b.pop();
}
void keyPressed() {
  if (key == CODED) {
    if (keyCode == UP) {
      b.changeColor();
    } else if (keyCode == DOWN) {
      b.changeBackground();
    } 
  } else {
    b.changeColor();
  }
}
