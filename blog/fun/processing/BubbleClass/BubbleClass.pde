class Particle {
  float x, y;
  float r;
  Particle(float x_, float y_, float r_) {
    x = x_;
    y = y_;
    r = r_;
  }

  void display() {
    stroke(255);
    noFill();
    ellipse(x, y, r*2, r*2);
  }

  boolean overlaps(Particle other) {
    float d = dist(x, y, other.x, other.y);
    if (d < r + other.r) {
      return true;
    } else {
      return false;
    }
  }
}


Particle p1;
Particle p2;

void setup() {
  size(600,400);
  p1 = new Particle(100,100,50);
  p2 = new Particle(500,200,100);
}

void draw() {
  background(0);
  if (p2.overlaps(p1)) {
    background(255,0,0); 
  }

  p2.x = mouseX;
  p2.y = mouseY;
  
  p1.display();
  p2.display();
}
