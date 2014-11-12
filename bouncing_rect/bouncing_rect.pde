int x;
int dx;
float y;
float dy;

void setup(){
  size(510,510);
  frameRate(100);
  rectMode (CENTER);
  x = 0;
  dx = 1;
  y = 150;
  dy = 1.8;
  textSize(30);
}

void draw(){
  background(255);
  rect(x,y,50,50);
  fill(0);
  x = x + dx;
  if (x > width) {
  dx = -1 ;
  }
  if (x < 0) {
  dx = 1 ;
  }
  y = y + dy;
   if (y > height) {
  dy = -1.8 ;
  }
  if (y < 0) {
  dy = 1.8 ;
  }
}

void mousePressed() {
  if (mouseX < 500 && mouseY < 500) {
    text("yay", height-50, width-50);
    noLoop();
  }
}
  
  
  
  
  
  
