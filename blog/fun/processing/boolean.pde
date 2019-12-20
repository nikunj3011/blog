float x = 100;
//boolean going = false;

void setup(){
  //only once
  size(600,300);

  //background(50);
}
void draw(){
  //conti
  background(0);
  
  fill(255);
  
  ellipse(x,150,50,50);
  if(going){
    x=x+2;
  }
}

void mousePressed(){
  going= true;
}
