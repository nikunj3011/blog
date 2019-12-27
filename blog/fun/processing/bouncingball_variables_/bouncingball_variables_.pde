float circleX;
boolean going = false;
float xspeed=2;
void setup(){
  //only once
  size(600,300);
  circleX=0;

  //background(50);
}
void draw(){
  //conti
  background(51);  
  fill(100);
  stroke(255);
  
  ellipse(circleX,height/2,32,32);
  if(going){
    circleX=circleX+xspeed;
    if(circleX>=width || circleX<0){
    xspeed=xspeed*-1.2;
    }
    /*
    if(circleX<0){
    xspeed=2;
    }
    */
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
