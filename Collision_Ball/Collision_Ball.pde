int number=1000;
PVector[] x = new PVector[number];
PVector[] v = new PVector[number];
PVector[] a = new PVector[number];
float[] sz = new float[number];
float[] colors = new float[number];
float[] mass = new float[number];
float minsz = 3;
float maxsz = 9;


void setup() {
  size(displayWidth, displayHeight);
  noStroke();
  for (int i=0; i<number; i++) {
    sz[i] = random(minsz, maxsz);
    x[i] = new PVector(random(sz[i], width-sz[i]), random(sz[i], height-sz[i]));
    v[i] = (PVector.random2D());
    a[i] = new PVector(0, .1);
    colors[i] = random(0, 360);
    mass[i] = map(sz[i], minsz, maxsz, 10, 1);
  }

  colorMode(HSB, 360, 100, 100, 100);
}

void draw() {
  background(0);
  for (int i=0; i<number; i++) {
    v[i].add(a[i]);
    if(v[i].x>0){
      v[i].x-=.05;
    }
    else{
     v[i].x+=.05; 
    }
    if(v[i].y>0){
      v[i].y-=.05;
    }
    else{
     v[i].y+=.05; 
    }
    x[i].add(v[i]);
    for (int j = 0; j<number; j++) {
      if (i!=j) {
        if (x[i].dist(x[j])< sz[i]/2 + sz[j]/2) {
          v[i] = PVector.sub(x[i], x[j]);
          v[i].setMag(mass[i]);
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

