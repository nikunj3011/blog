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


Bubble[] bubbles = new Bubble[100];
int total = 10;
void setup() {
  size(640, 360);
  for (int i = 0; i < bubbles.length; i++) {
    bubbles[i] = new Bubble(random(60));
  }
}
void mousePressed() {
  total = total + 1;
}

void keyPressed() {
  total = total - 1;
}

void draw() {
  background(255);
  for (int i = 0; i < total; i++) {
    bubbles[i].ascend();
    bubbles[i].display();
    bubbles[i].top();
  }
}
