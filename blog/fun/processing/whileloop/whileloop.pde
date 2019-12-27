float x = 0;

void setup(){
  //only once
  size(600,300);


  //background(50);
}
void draw(){
  //conti
  background(51); 
  x=0;
  while(x<width){
    if(mouseX<1){
      x=x+1;
    }
    else{
      x=x+mouseX;
    }
  fill(100);
  stroke(255);
  
  ellipse(x,150,32,32);
  }
 
   
}
