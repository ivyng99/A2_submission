//Create a perfectly looping animated video or gif. This work could utilise
//either recursive functions or Object oriented programming.

void setup() {
  size(500,500);
  rectMode(CENTER);
 
}

float rsize = 150;
float rt = 0;
float sv;
int num = 20;
int y = 0;
int x = 0;
  
void draw() {
  background(0);
 
for(int i = 0; i < num; i++){
  
  noFill();
  stroke(random(255),random(255),random(255));
  strokeWeight(5);
  sv = sin(rt*0.01);
  pushMatrix();
  translate(width/2,height/2);
  rotate(radians(rt+(i*sv)*50));
  rect(0,0,rsize-(i*30),rsize-(i*30));
  popMatrix();
 
stroke(255);
strokeWeight(2);
line(0,y,width,y);
y+=10;

if(y>height){
  y=0;
}

stroke(0);
fill(255);
ellipse(width/2,height/2,random(50),random(50));

}

  rt+=1;
  
  if(radians(rt) >= TWO_PI & sv >=0){
    noLoop();
  }
  saveFrame("####+out.png");
}
