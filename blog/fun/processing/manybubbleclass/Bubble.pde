class Bubble {

  float x;
  float y;
  float diameter;
  float yspeed;

  Bubble(float tempD) {
    x = random(width);
    y = height;
    diameter = tempD;
    yspeed = random(0.5, 2.5);
  }

  void ascend() {
    y = y - yspeed;
    x = x + random(-2,2);
  }

  void display() {
    stroke(0);
    noFill();
    fill(127,100);
    ellipse(x, y, diameter, diameter);
    rect(x-200,y,diameter,diameter);
  }

  void top() {
    if (y < -diameter/2) {
      y = height+diameter/2;
    }
  }
}
