//based on https://www.openprocessing.org/sketch/816944
//somewhat inspired by https://codepen.io/al-ro/pen/BaaBage?editors=1010
//resources http://mathworld.wolfram.com/HeartCurve.html
ArrayList<Node> arrayNodes = new ArrayList<Node>();
float scaleDiv = 50; //scale the size of the heart
void setup() {
  size(720, 720);
  colorMode(HSB, 100);
  strokeWeight(2);
  translate(width/2, height/2);
  //load Nodes
  for (int angle = 0; angle < 360; angle += 2) {
    arrayNodes.add(
      new Node(
      16*pow(sin(radians(angle)), 3) * width/scaleDiv, 
      (-1*(13*cos(radians(angle))-5*cos(radians(2*angle))-2*cos(radians(3*angle))-cos(radians(4*angle)))*width/scaleDiv), 
      angle)
    );
  }
}
void draw() {
  background(0);
  //some gray lines on background
  stroke(100, 10);
  for (int i = 0; i < arrayNodes.size(); i += 1) {
    if (random(1)> 0.9) continue;
    line(0, height*i/arrayNodes.size(), width, height*i/arrayNodes.size());
  }
  translate(width/2, height/2);
  int div = arrayNodes.size()/2;
  //display Nodes
  for (int i = 0; i < arrayNodes.size(); i += 1) {
    //float hue = map(i, 0, arrayNodes.size(), 0, 100);
    stroke(100);
    if (i < (floor(frameCount/2) % arrayNodes.size()) * 3) {
    if (random(1)> 0.75) continue;
      int offsetIndex = (i + floor(frameCount/2)) % arrayNodes.size();
      line(arrayNodes.get(i).x, arrayNodes.get(i).y, arrayNodes.get(offsetIndex).x, arrayNodes.get(offsetIndex).y);
    }
    if (random(1)> 0.75) continue;
    int nextIndex = (i + 1) % div;// if div = arrayNodes.size() the heart will have boundary but not line scribbles
    //rotate(PI/1.5);// some afterthoughts
    line(arrayNodes.get(i).x, arrayNodes.get(i).y, arrayNodes.get(nextIndex).x, arrayNodes.get(nextIndex).y);
    arrayNodes.get(i).move();
  }  
  //println(frameRate);
}

class Node {
  public float x;
  public float y;
  public float i;
  public float a;

  Node(float x, float y, float a) {
    this.x = x;
    this.y = y;
    this.a = a;
    this.i = a;//initial angle I guess
  }

  void move() {
    this.x += 16*pow(sin(radians(this.a + this.i)), 3)/scaleDiv;
    this.y -= ( 13*cos(radians(this.a + this.i))
      -5*cos(radians(2*(this.a + this.i)))
      -2*cos(radians(3*(this.a + this.i)))
      -cos(radians(4*(this.a + this.i))) )/scaleDiv;
    this.a+=10;
  }
}
