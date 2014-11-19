PVector x, v, a;
float sz = 50;

void setup() {
  x = new PVector(width/2, height/2);
  v = PVector.random2D();
  a = new PVector(0, 0);
  size(600, 600);
  colorMode(HSB, 360, 100, 100, 100);
}

void draw() {
  background(100,100,30);
  v.add(a);
  x.add(v);
  if(dist(mouseX,mouseY,x.x,x.y)<sz/2){
    background(random(360),100,100);
    fill(360,100,100);
  }
  else{
   fill(90,100,100); 
  }
  ellipse(x.x,x.y,sz,sz);
  if(x.x+sz/2>width || x.x-sz/2<0){
  v.x*=-1;
  }
  if(x.y+sz/2>height || x.y-sz/2<0){
  v.y*=-1;
  }
}

