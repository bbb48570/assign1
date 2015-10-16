PImage fighter;
PImage backgroungImg;
PImage backgroungImg1;
PImage enemy;
PImage hp;
PImage treasure;

int x;
int y;
int hpp;
int z; //treasure x
int x1;
int x2;

/* please implement your assign1 code in this file. */

void setup () {
  hpp=floor(random(100,255));
  x=1;
  y=floor(random(20,450));
  z=floor(random(20,400));
  size(640,480) ;  // must use this size.
  
  x1=1;
  x2=-639;
  
  
  
  backgroungImg=loadImage("img/bg1.png");
  backgroungImg1=loadImage("img/bg2.png");
  fighter=loadImage("img/fighter.png");
  enemy=loadImage("img/enemy.png");
  hp=loadImage("img/hp.png");
  treasure=loadImage("img/treasure.png");
  // your code
}

void draw() {
  
  
  
  x%=640;
  
  if(x2==639){
    x2=-639;
  }
  
  if(x1==639){
  x1=-639;
  }
  
  image(backgroungImg,x2=x2+1,0);
  
  image(backgroungImg1,x1=x1+1,0);

  
  image(fighter,550,240);
  
  image(enemy,x=x+4,random);
  
  image(treasure,z,y);
  
  rectMode(CORNERS);
  
  fill(255,0,0);
  rect(55,20,hpp,50);
  
  image(hp,50,20);
  
  
  // your code
}
