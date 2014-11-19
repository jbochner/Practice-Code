PVector x, v, a;
PVector x2, v2, a2;
float sz = 50;
float sz2 = 100;

void setup() {
  x = new PVector(width/2, height/2);
  v = PVector.random2D();
  a = new PVector(0, 0);
  x2 = new PVector(width*.25, height*.25);
  v2 = PVector.random2D();
  a2 = new PVector(0, 0);
  size(800, 800);
  colorMode(HSB, 360, 100, 100, 100);
}

void draw() {
  background(100, 100, 30);
  v.add(a);
  x.add(v);
  v2.add(a2);
  x2.add(v2);
  if (x.dist(x2)<sz/2 + sz2/2) {
  }
  ellipse(x.x, x.y, sz, sz);
    ellipse(x2.x, x2.y, sz2, sz2);

  if (x.x+sz/2>width || x.x-sz/2<0) {
    v.x*=-1;
  }
  if (x.y+sz/2>height || x.y-sz/2<0) {
    v.y*=-1;
  }
  if (x2.x+sz/2>width || x2.x-sz/2<0) {
    v2.x*=-1;
  }
  if (x2.y+sz/2>height || x2.y-sz/2<0) {
    v2.y*=-1;
  }
}

