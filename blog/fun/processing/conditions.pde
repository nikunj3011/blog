
void setup(){
  //only once
  size(600,300);

  //background(50);
}
void draw(){
  //conti
  background(50);
  
  
  if((mouseX>300) && (mouseY>150) ){
    //fourth
    background(0,0,255);
    fill(0,255,0);
    rect(400,200,50,50);
    
  }
  
   else if((mouseX>300) && (mouseY<150)){
    //second
     background(0,255,0);
    fill(0,0,255);
     rect(400,50,50,50);
  }
  
    else if((mouseX>0) && (mouseY>150)){
      //third
    background(255,222,0);
    fill(255,0,0);
     rect(100,200,50,50);
  }
  /*
  
    else if(!((mouseX>0) && (mouseY>150))){
      //third
    background(255,222,0);
    fill(255,0,0);
     rect(100,200,50,50);
  }
  
    else if((mouseX>0) || (mouseY>150)){
      //third
    background(255,222,0);
    fill(255,0,0);
     rect(100,200,50,50);
  }
  */
    else{
      //first
    background(255,100,0);
    fill(255,255,0);
     rect(100,50,50,50);
  }
  stroke(255);
  line(width/2,0,width/2,height);
  line(0,height/2,width,height/2);

}
