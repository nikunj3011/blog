
float endX = 0;
int x=0;
int y=0;
void setup(){
  //only once
  size(600,300);
//background(0); 
  background(50);
}
void draw(){
  //conti
  //background(random(0,255),random(0,255),random(0,255));
  stroke(255);
  strokeWeight(2);
  fill(120);
  
  
  
  delay(100);
   
}
void mousePressed(){
  for(x=0;x<width;x=x+100){
   
  for(y=0;y<width;y=y+100){
    fill(random(255),random(255),random(255));
    rect(x,y,100,100);
  }  
  }
}
