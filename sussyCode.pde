int squarenum = 1000;
int squareCount = 0;
int mouselayer = 0;
int cr=255;
int cg=255;
int cb=255;
int csr=255;
int csg=255;
int csb=255;
int cfr=255;
int cfg=255;
int cfb=255;
int cshape=1;
int cshift=0;
int cxs = 50;
int cys = 50;
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
 
  background(0,0,0);
  for(int i = 0; i < squarenum; i++){
  squarearray[i].drawsquare();
}
}
void mouseReleased(){
if(squareCount<squarenum){
 squarearray[squareCount] = new square(mouseX, mouseY);
 squareCount++;
 }
}

class square{
  int x=mouseX;
  int y=mouseY;
int squarelayer=squareCount;
int shape=cshape;
int shift=cshift;
 int r=cr;
 int g=cg;
 int b=cb;
 int fr=cfr;
 int fg=cfg;
 int fb=cfb;
 int sr=csr;
 int sg=csg;
 int sb=csb;
 int xs=cxs;
 int ys=cys;
int taco=0;
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
if(squarelayer>mouselayer){
  mouselayer=squarelayer;}
if(mouselayer==squarelayer){



  if(keyPressed){
if(key == 'r'){
fr+=5;
if(fr>255){fr=255;}
}
if(key == 't'){
fr-=5;
if(fr<0){fr=0;}
}
if(key == 'g'){
fg+=5;
if(fg>255){fg=255;}
}
if(key == 'h'){
fg-=5;
if(fg<0){fg=0;}
}
if(key == 'b'){
fb+=5;
if(fb>255){fb=255;}
}
if(key == 'n'){
fb-=5;
if(fb<0){fb=0;}
}
if(key == 'y'){
sr+=5;
if(sr>255){sr=255;}
}
if(key == 'u'){
sr-=5;
if(sr<0){sr=0;}
}
if(key == 'j'){
sg+=5;
if(sg>255){sg=255;}
}
if(key == 'k'){
sg-=5;
if(sg<0){sg=0;}
}
if(key == 'm'){
sb+=5;
if(sb>255){sb=255;}
}
if(key == ','){
sb-=5;
if(sb<0){sb=0;}
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
if(key == 'v'){
cr=255;
cg=255;
cb=255;
csr=255;
csg=255;
csb=255;
cfr=255;
cfg=255;
cfb=255;
cshape=1;
cshift=0;
cxs = 50;
cys = 50;
}
if(key == 'c'){
cshape=shape;
cr=r;
cg=g;
cb=b;
csr=sr;
csg=sg;
csb=sb;
cfr=fr;
 cfg=fg;
 cfb=fb;
cxs=xs;
cys=ys;
cshift=shift;
}
if(key == '8'){
  shift=2;
}
if(key == '9'){
  shift=1;
}
if(key == '0'){
  shift=0;
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
else{if(mouselayer==squarelayer)
{mouselayer-=1;}
}
if (shift==0){r=fr; b=fb; g=fg;}
if (shift==2){
if (taco==0){
if (fr>sr && r>sr){r-=3;}
if (fr<sr && r<sr){r+=3;}
if (fg>sg && g>sg){g-=3;}
if (fg<sg && g<sg){g+=3;}
if (fb>sb && b>sb){b-=3;}
if (fb<sb && b<sb){b+=3;}
if ((r==sr || r==sr+1 || r==sr-1) && (g==sg || g==sg+1 || g==sg-1) && (b==sb || b==sb+1 || b==sb-1)){taco=1;}
}
if (taco==1){
if (sr>fr && r>fr){r-=3;}
if (sr<fr && r<fr){r+=3;}
if (sg>fg && g>fg){g-=3;}
if (sg<fg && g<fg){g+=3;}
if (sb>fb && b>fb){b-=3;}
if (sb<fb && b<fb){b+=3;}
if ((r==fr || r==fr+1 || r==fr-1) && (g==fg || g==fg+1 || g==fg-1) && (b==fb || b==fb+1 || b==fb-1)){taco=0;}
}
}
    if(shift==1){
     if(g < 255 && !(r < 1) && b < 1){
       g+=5;
     }
     if(g > 254 && r>0){
       r-=5;
     }
     if(r < 1 && b < 255){
       b+=8;
     }
     if(b > 254 && g >0){
       g-=8;
     }
     if(g < 1 && b > 0 && r < 255){
       
       r+=5;
     }
     if(g < 1 && b > 0 && r > 254){
       b-=5;
       
     }
     if(g > 0 && b > 0 && r > 0){
       b=0;
       g=0;
     }
  }
}

}
