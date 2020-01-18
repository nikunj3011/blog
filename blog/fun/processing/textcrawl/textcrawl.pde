float textY;
String crawl;

void setup() {
  size(800, 450, P3D);
  crawl = "       Yahu Helly yuhu \n\n ^_^ :-) :D @_@ +_+  \n x-axis and rtos and ogggggg is wwww e w\n\nHyYH lalalal ulalala recon onnggg victory shall be our. \n\nu dare attack me u dare defy me oiiiiiiiiiiiiiiiiiii have a great year to me \n oha aho mew mew wew on the pew pew pew dew gew vew brew on the dew \n suna muna duna guna tuna huna yuna luna runa \n ha smug face ^_^ ";
}

void draw() {
  background(0);
  fill(255,255,0);
  translate(width/2-400, height);
  rotateX(PI/3.0);
  textSize(80);
  text(crawl, 0, textY, 1100, 3600);
  textY -= 1;
}
