PImage sc;
void setup(){
  size(633,622);
//size(200,200);
 //size(797,928);
  //size(633,622);
//size(200,200);
//size(960,957);
  //sc=loadImage("data/pika.jpg");
  //sc = loadImage("https://raw.githubusercontent.com/nikunj3011/blog/master/blog/fun/processing/image_copy_with_rgb/data/h2%20(2).jpg");
sc = loadImage("https://raw.githubusercontent.com/nikunj3011/blog/master/blog/fun/processing/image_copy_with_rgb/data/pika.jpg");
}

void draw(){
  background(0);
  //image(sc,0,0);
  loadPixels();
  sc.loadPixels();
 
   for(int x=0;x<width-3;x++){
    for(int y=0;y<height;y++){
   int loc1=x+y*width;
    int loc2=(x+3)+y*width;
   float b1 = brightness(sc.pixels[loc1]);
   float b2 = brightness(sc.pixels[loc2]);
  float diff = abs(b1-b2);
  //ellipse(x, y, x-(x/2), y-(y/2));
  //pixels[loc1]=color(diff);
  
  if(diff>20){
  pixels[loc1]=color(0);
    }
    else{
      pixels[loc1]=color(255);
    }
     }}
   updatePixels();
  }

  
