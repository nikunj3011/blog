void setup(){
  size(600,400);
}
void draw(){
  background(0);
  loadPixels();
  /*
  for(int i=0;i<pixels.length;i++){
  pixels[i]=color(random(255),random(255),random(255));
  //pixel formula=x+y*6
  float d=dist(x,y,width/2,height/2);
  pixels[x+y*width]=color((x+y),y/2,x/2);
   pixels[x+y*width]=color(d,y,x);
}*/ 
  for(int x=0;x<width;x++){
    for(int y=0;y<height;y++){
  //pixels[i]=color(random(255),random(255),random(255));
  //pixel formula=x+y*6
  float d=dist(x,y,width/2,height/2);
  pixels[x+y*width]=color((x+y),y/2,x/2);
   pixels[x+y*width]=color(d,y,x);
  //pixels[x+y*width]=color(d);

}
 updatePixels();
}}
