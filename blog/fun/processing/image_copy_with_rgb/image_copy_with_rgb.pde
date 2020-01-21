PImage sc;
void setup(){
  size(633,622);

  sc=loadImage("data/pika.jpg");
}

void draw(){
  background(0);
  //image(sc,0,0);
  loadPixels();
  sc.loadPixels();
 
 
  //image copy
  
    for(int x=0;x<width;x++){
    for(int y=0;y<height;y++){
   int loc=x+y*width;
   float r= red(sc.pixels[loc]);
   float g= green(sc.pixels[loc]); 
   float b= blue(sc.pixels[loc]);
   float d=dist(width/2,height/2,x,y);
   float factor=map(d,0,200,0,2);
  //pixels[loc]=sc.pixels[loc]/2;
    pixels[loc]=color(r*factor,g*0.05*mouseX,b*0.05*mouseY);
  

    }
   updatePixels();
  }

}
