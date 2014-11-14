float x;
float y;
float sz;
float vy;
float ay;

void setup() {
  size(700, 800);
  noStroke();
  x = width/2;
  y = 100;
  sz = 40;
  vy = 1;
  ay = 0.05;
}

void draw() {
  background (0);
  ellipse(x, y, sz, sz);
  vy+=ay;
  y+=vy;
  if (y + sz/2>height) {
    y = height-sz/2;
    vy = -vy;
  }
}

