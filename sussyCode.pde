int squarenum = 200;
int squareCount = 0;
square redsquare;
 square[] squarearray = new square[squarenum];
 
 int name = 0; 
 void setup(){
 frameRate(50);
   size(2000,1000);
for(int i = 0; i < squarenum; i++){
  squarearray[i] = new square(6000, 6000);
}
}
void draw(){
 
  background(0,0,255);
  for(int i = 0; i < squarenum; i++){
  squarearray[i].drawsquare();
}
}
void mouseReleased(){
if(squareCount<200){
 squarearray[squareCount] = new square(mouseX, mouseY);
 squareCount++;
 }
}

class square{
  int x=mouseX;
  int y=mouseY;
int shape=1;
 int r=0;
 int g=0;
 int b=0;
 int xs=50;
 int ys=50;
  square(int tx, int ty){
    x=tx;
    y=ty;
}
void drawsquare(){
 fill(r,g,b);
if(shape==1){ rect(x-25,y-25, xs, ys); }
if(shape==2){ ellipse(x, y, xs, ys); }
 noStroke();

if((shape==1 && (mouseX > x-25) && (mouseX<x+xs-25) && (mouseY > y-25) && (mouseY<y+ys-25)) || (shape==2 && (mouseX > x-(xs/2)) && (mouseX<x+(xs/2)) && (mouseY > y-(ys/2)) && (mouseY<y+(ys/2)))){
  if(keyPressed){
if(key == 'r'){
r+=5;
}
if(key == 't'){
r-=5;
}
if(key == 'g'){
g+=5;
}
if(key == 'h'){
g-=5;
}
if(key == 'b'){
b+=5;
}
if(key == 'n'){
b-=5;
}
if(key == 'w'){
y-=5;
}
if(key == 's'){
y+=5;
}
if(key == 'a'){
x-=5;
}
if(key == 'd'){
x+=5;
}
if(key == '1'){
shape=1;
}
if(key == '2'){
shape=2;
}
if(key == BACKSPACE){
x=10000; y=10000;
}
if(key == ENTER){
if(shape==1){
  x=int(mouseX-(0.5*xs)+25); y=int(mouseY-(0.5*ys)+25);
}
else{
x=mouseX; y=mouseY;
}

}
  if(key == CODED){
if(keyCode == UP){
ys-=2;
}
if(keyCode == DOWN){
ys+=2;
}
if(keyCode == LEFT){
xs-=2;
}
if(keyCode == RIGHT){
xs+=2;
}
}
}
}
}
}
