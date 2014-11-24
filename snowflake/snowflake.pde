int number=10000;
PVector[] x = new PVector[number];
PVector[] v = new PVector[number];
PVector[] a = new PVector[number];
float[] sz = new float[number];


void setup() {
  size(displayWidth, displayHeight);
  for (int i=0; i<number; i++) {
    sz[i] = random(1, 2);
    x[i] = new PVector(random(0, width), random(-200, height));
    v[i] = new PVector(0, random(0, .1));
    a[i] = new PVector(0, .03);
  }
  noStroke();
  fill(255);
}

void draw() {
  background(0, 0, 25);
  for (int i=0; i<number; i++) {
    v[i].add(a[i]);
    x[i].add(v[i]);
    ellipse(x[i].x, x[i].y, sz[i], sz[i]);
    a[i].x=random(-.1, .1);
    if (x[i].y>height) {
      x[i].y = -100;
      v[i] = (PVector.random2D());
    }
  }
}

