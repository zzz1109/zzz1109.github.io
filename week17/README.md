17-1
void setup(){
  size(400,200);
  textSize(40);
}
String line="hello";
void draw(){
  background(#8FF0D3);
  text(line,100,100);//可以將字串LINE畫出來
  text("World",100,150);//也可以印出來
}
void setup(){
  size(400,200);
  textSize(40);
}
String line="hello";
char c='9';
void draw(){
  background(#8FF0D3);
  text(line+c+100,100,100);//可以將字串LINE畫出來
  text("World:"+key,100,150);//也可以印出來
}//這裡發現 字串的+其實是越加越長
//key會對應你最後按下的(字母.數字.符號)
17-3
void setup(){
  size(400,200);
  textSize(40);
}
char c='9';
int win=0;
void draw(){
  background(#8FF0D3);
  text("Pressed:"+c,100,100);
  text("You :"+key,100,150);
  if(c==key) win=1;
  else win=0;
  
  if(win==1) text("You win!",100,50);
}
17-4
void setup(){
  size(400,200);
  textSize(40);
}
char c='9';
String ans = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ";
int win=0;
void draw(){
  background(#8FF0D3);
  text("Pressed:"+c,100,100);
  text("You :"+key,100,150);
  if(c==key) win=1;
  else win=0;
  
  if(win==1){
  text("You win!",100,50);
  int i = int(random(26+26));
  c = ans.charAt(i);
  }
 }
17-5
void setup(){
  size(400,200);
   textSize(40);
}
int x=100,y=100;
void draw(){
  background(#8FF0D3);
  rect(x,y,50,50);
}
void keyPressed(){
   if(keyCode==LEFT) x-=10;
   if(keyCode==RIGHT)x+=10;
 }
17-6
void setup(){
  size(400,200);
   textSize(40);
}
int x=100,y=100,vx=0,vy=0;
void draw(){
  background(#8FF0D3);
  rect(x,y,50,50);
  x += vx;
}
void keyPressed(){
   if(keyCode==LEFT) vx=-1;
   if(keyCode==RIGHT)vx=+1;
 }
 void keyReleased(){
   vx=0;
 }
17-7
String A="mother";
String line="";

void setup(){
  size(400,300);
  textSize(40);
}
void draw(){
  background(0);
  text(A,100,100);
  text(line +"|",100,150);
}
void keyPressed(){
  line = line + key;
}
17-8
String A="mother";
String line="";

void setup(){
  size(400,300);
  textSize(40);
}
void draw(){
  background(0);
  text(A,100,100);
  text(line +"|",100,150);
}
void keyPressed(){
  int len = line.length();
  if(key>='a' && key<='z')line = line + key;
  if(key>='A' && key<='Z')line = line + key;
  if(key==ENTER){    }
  if(key==BACKSPACE && len>0) line = line.substring(0, len-1);
}
