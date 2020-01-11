PImage img;
void setup(){
  size(600,400);
  img=loadImage("h.png");
}
void draw(){
background(0);
tint(255,mouseY,mouseY-mouseX);
image(img,0,0,mouseX,mouseY);

//fill(0,255,0);
//ellipse(300,200,mouseX,mouseY);
}
