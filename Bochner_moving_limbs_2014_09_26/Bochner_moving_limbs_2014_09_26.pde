//Moving Character by Josh Bochner
//variable definition
int x = 80;
int y = 0;
int dx = 2;
int dy = 4;
int z = x;
int dz = dx;

//canvas setup
void setup() {
  size(500, 500);
  noCursor();
  frameRate(30);
}

void draw() {
  background(157, 210, 255);
  /*follow mouse code
   x=mouseX;
   y=mouseY;
   */

  //bouncing code
  z = z + dz;
  x = x + dx;
  if ((x+80) > width) {
    dx = -dx ;
  }
  if ((x-80) < 0) {
    dx = -dx ;
  }
  y = y + dy;
  if ((y+110) > height) {
    dy = -dy ;
  }
  if (y < 0) {
    dy = -dy ;
  }


  //line color
  stroke(180, 255, 180);

  //neck
  line(x, y+40, x, y+60);

  //body fill color
  fill(58, 193, 49);

  //body
  rect(x-30, y+60, 60, 30);

  //head fill color
  fill(255, 80, 140);

  //head
  ellipse(x, y+20, 20, 40);

  //arms
  line(x-50, y+60, x-30, y+60);
  line(x+30, y+60, x+50, y+60);
  line(x-50, y+80, x-30, y+80);
  line(x+30, y+80, x+50, y+80);

  //"hands"
  line(z-80, y+30, x-50, y+60);
  line(z-80, y+110, x-50, y+80);
  line(z+80, y+30, x+50, y+60);
  line(x+50, y+80, z+80, y+110);

  if (mousePressed==true) {
    z = z+10;
    if (z<=(x-11)) {
      z = z;
    }
    if (z>=(x+11)) {
      z = z-20;
    }
  }
  if(mousePressed==false){
    z = x;
  }
}

