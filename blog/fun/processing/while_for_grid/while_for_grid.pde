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
  while(x<width){
    rect(100,x/2,100,x);
    x=x+spacing;
  }
  for(float y=0;y<height;y=y+spacing){  
    line(100,y,width/2,y);    
  }
}
void mousePressed(){
  //background(random(0,255),random(0,255),random(0,255));
}
