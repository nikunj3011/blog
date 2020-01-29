float a, b, x, y, d, h=600/2, r, s, shrink=0.94;
void setup() {
  size(600, 600);
}
void draw() {
  background(100);
  translate(h, h);
  for (s=600*2; s>1; s*=shrink) {
    d=norm(s, 0, 600*2);
    fill(0, (1-d)*20);
    strokeWeight(d*15);
    r = d*50*shrink;
    x=cos((b*d*100*(1-shrink))+a)*r;
    y=sin((b*d*100*(1-shrink))+a)*r;
    circle(x, y, s);
    b+=d;
  }
  a+=.1;
  fill(0);
  circle(cos(b+a)*5, 0, 40);
  b=0;
}
