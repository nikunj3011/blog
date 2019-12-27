
float endX = 0;

void setup(){
  //only once
  size(600,300);
background(0); 
  background(50);
}
void draw(){
  //conti
  //background(random(0,255),random(0,255),random(0,255));
  stroke(255);
  strokeWeight(2);
  int x=0;
  while(x<endX){
    line(x,0,x,height);    
    x=x+30;
  }  
  endX=endX+1;
  if(endX>width){
    background(50);
    x=0;
    endX=0;
  }
  //delay(100);
   
}
void mousePressed(){
  //background(random(0,255),random(0,255),random(0,255));
}
