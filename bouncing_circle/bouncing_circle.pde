int x;
int dx;
float y;
float dy;
int z;
int g;

void setup(){
  size(510,510);
  frameRate(100);
  ellipseMode (CENTER);
  x = 0;
  dx = 8;
  y = 150;
  dy = 18;
  z = 0;
  g = 2;
  textSize(30);
  textAlign(CENTER);
}

void draw(){
  background(255);
  ellipse(x,y,50,50);
  fill(0);
  x = x + dx;
  if (x > width) {
  dx = -8 ;
  }
  if (x < 0) {
  dx = 8 ;
  }
  y = y + dy;
   if (y > height) {
  dy = -dy ;
  }
  if (y < 0) {
  dy = -dy ;
  }
   text("Click to pause",width/2,height/2); 
}

void mousePressed() {
  if(z<g){
    noLoop();
    background(random(255),random(255),random(255));
    text("Press any key",width/2,height/2);
  }
  if (z>=g){
    background(random(255),random(255),random(255));
    text("Stahp!",width/2,height/2);
    noLoop();
    
  }
}

void keyPressed() {
  if(z < g){
    loop();
  z = z + 1;
  }
   if (key == ESC){
     key = 0;
     background(255);
     text("GO AWAY JOHANN",width/2,height/2);
     noLoop();
}
}


  
  
  
  
  
  
