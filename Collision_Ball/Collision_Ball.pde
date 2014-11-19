PVector x, v, mouse;
float sz = 50;

void setup() {
  x = new PVector(width/2, height/2);
  v = PVector.random2D();
  mouse = new PVector(mouseX, mouseY);
  size(800, 800);
  colorMode(HSB, 360, 100, 100, 100);
}

void draw() {
  mouse.set(mouseX, mouseY);
  background(100, 100, 30);
  x.add(v);
  if (x.dist(mouse)<sz/2) {
    background(random(360), 100, 100);
    fill(360, 100, 100);
    v.mult(-1);
  } else {
    fill(90, 100, 100);
  }
  ellipse(x.x, x.y, sz, sz);
  if (x.x+sz/2>width || x.x-sz/2<0) {
    v.x*=-1;
  }
  if (x.y+sz/2>height || x.y-sz/2<0) {
    v.y*=-1;
  }
}

