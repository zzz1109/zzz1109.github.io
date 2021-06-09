int []a=new int[47];
void setup() {
  size(500, 200);
  textSize(30);
  for (int i=0; i<47; i++) a[i]=i;
  for (int i=0; i<1000; i++) {
    int i1=(int)random(47);
    int i2=(int)random(47);
    int temp=a[i1]; 
    a[i1]=a[i2];
    a[i2]=temp;
  }
}
int N=0;
void draw() {
  textAlign(CENTER, CENTER);
  background(#F52B0C);
  for (int i=0; i<N; i++) {
    fill(255); ellipse(i*80+40,100,55,55);
    fill(128); text(a[i],i*80+40+2,100+2);
    fill(0); text (a[i], i*80+40, 100);
  }
}
void mousePressed() {
  N++;
}
