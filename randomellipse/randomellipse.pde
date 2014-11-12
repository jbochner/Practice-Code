int x;
float y;

void setup(){
  size(510,510);
  background(random(255),random(255),random(255));
  frameRate(1000);
  x = 0;
  y = 0;
}

void draw(){
  fill(x/2,mouseX/2,y/2);
  ellipse(x,y,random(20,50),random(20,50));
  x = x + 1;
  if (x > width) {
  x = 0;
  }
  y = y + 0.04;
  if (y > height) {
  noLoop();
  }
}
