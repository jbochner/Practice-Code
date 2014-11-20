int number=1000;
PVector[] x = new PVector[number];
PVector[] v = new PVector[number];
PVector[] a = new PVector[number];
float[] sz = new float[number];
float[] colors = new float[number];


void setup() {
  size(displayWidth, displayHeight);

  for (int i=0; i<number; i++) {
    sz[i] = random(3, 9);
    x[i] = new PVector(random(sz[i], width-sz[i]), random(sz[i], height-sz[i]));
    v[i] = (PVector.random2D());
    a[i] = new PVector(0, 0);
    colors[i] = random(0, 360);
  }

  colorMode(HSB, 360, 100, 100, 100);
}

void draw() {

  for (int i=0; i<number; i++) {
    v[i].add(a[i]);
    x[i].add(v[i]);

    for (int j = 0; j<number; j++) {
      if (i!=j) {
        if (x[i].dist(x[j])< sz[i]/2 + sz[j]/2) {
          if (x[i].x<x[j].x) {
            v[i].x = -abs(v[i].x);
            v[j].x = abs(v[j].x);
          } else {
            v[i].x = abs(v[i].x);
            v[j].x = -abs(v[j].x);
          }
          if (x[i].y<x[j].y) {
            v[i].y = -abs(v[i].y);
            v[j].y = abs(v[j].y);
          } else {
            v[i].y = abs(v[i].y);
            v[j].y = -abs(v[j].y);
          }
        }
      }
    }
    fill(colors[i], 100, 100, 100);
    ellipse(x[i].x, x[i].y, sz[i], sz[i]);

    if (x[i].x + sz[i]/2 > width || x[i].x - sz[i]/2 <0 ) {
      v[i].x*=-1;
    }
    if (x[i].y + sz[i]/2 > height || x[i].y - sz[i]/2 < 0) {
      v[i].y*=-1;
    }
  }
}


void mousePressed() {
  x[1].set(mouseX, mouseY);
}

