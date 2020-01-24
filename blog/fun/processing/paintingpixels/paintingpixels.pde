PImage sc;
void setup(){
 size(710,1040);
  //size(797,928);
  //size(633,622);
//size(200,200);
//size(960,957);
  //sc=loadImage("data/pika.jpg");
  sc = loadImage("https://raw.githubusercontent.com/nikunj3011/blog/master/blog/fun/processing/image_copy_with_rgb/data/h2%20(2).jpg");
//sc = loadImage("https://raw.githubusercontent.com/nikunj3011/blog/master/blog/fun/processing/image_copy_with_rgb/data/h%20(2).jpg");

  background(0);
}

void draw(){
  //background(0);
  //image(sc,0,0);
  //loadPixels();
  //sc.loadPixels();
 for(int i=0;i<50;i++){
  float x=random(width);
  float y=random(height);
  color c= sc.get(int(x),int(y));
  
  fill(c);
  noStroke();
  ellipse(x,y,7,7);
  //ellipse(x, y, i-(i/2), i-(i/2));
  
  }}

  
