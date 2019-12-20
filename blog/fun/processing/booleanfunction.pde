float x = 100;
boolean going = false;

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
    if(x>600){
    x=0;
    
  }
  }
}

void mousePressed(){
 /* if(!going){
  going= true;
  }
  else{
  going = false;
  }
  or
  */
  going=!going;
}
/*
void keyPressed(){
 going = false;
}

*/
