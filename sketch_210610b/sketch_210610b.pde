void setup() {
  size(400, 200);
}
float start=0, v, x=0;
void mousePressed() {
  v=random(1);
}
void draw() {
  background(#0C33C9);
  if (v>0.001) {
    start +=v;
    v*=0.99;
    x+=v*2;
  }
  rect(x, 150, 50, 50);
  fill(255); 
  text(start, 200, 150); 
  text(v, 200, 170);
  //float start=mouseX/50.0;
  for (int i=0; i<24; i++) {
    float shift=i*PI/12;
    if (i%3==0) fill(0);
    if (i%3==1) fill(#FFF86C);
    if (i%3==2) fill(255);
    if (i==0) fill(#FA761E);
    arc(100, 100, 180, 180, shift+0+start, shift+PI/12+start);
  }
}
