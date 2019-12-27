float x = 0;
float y =0;
float spacing = 50;
void setup(){
  //only once
  size(600,300);
background(0); 
  //background(50);
}
void draw(){
  //conti
  background(random(0,255),random(0,255),random(0,255));
  spacing=spacing+random(-2,2);
  stroke(255);
  strokeWeight(2);
  x=0;
  y=0;
  while(x<mouseX && y<mouseY){
    line(x,0,mouseY,height);
    line(0,y,width,mouseY);
    x=x+spacing;
    y=y+spacing;
  }  
  delay(100);
   
}
void mousePressed(){
  //background(random(0,255),random(0,255),random(0,255));
}
