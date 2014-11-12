int ballCount = 500;
float[] x = new float[ballCount];
float[] y = new float[ballCount];
float[] dx = new float[ballCount];
float[] dy = new float[ballCount];
float[] sz = new float[ballCount];
float[] dsz = new float[ballCount];
float[] colors = new float[ballCount];


void setup() {
  size(displayWidth, displayHeight);
  colorMode(HSB, 360, 100, 100, 100);
  for (int i = 0; i<ballCount; i++) {
    x[i] = random(0, width);
    y[i] = random(0, height);
    sz[i] = random(5, 50);
    dsz[i] = random(0, 1);
    dx[i] = random(-7, 7);
    dy[i] = random(-7, 7);
    colors[i] = random(0, 360);
  }
}

void draw() {
  background(200, 50, 80);
  for (int i = 0; i<x.length; i+=1) {
    fill(colors[i], 100, 100, 50);
    ellipse(x[i], y[i], sz[i], sz[i]);
    x[i]+=dx[i];
    y[i]+=dy[i];
    sz[i]+=dsz[i];
    if (sz[i]>50 || sz[i]<5) {
      dsz[i]*=-1;
    }
    if (x[i]>width || x[i]<0) {
      dx[i]*=-1;
    }
    if (y[i]>height || y[i]<0) {
      dy[i]*=-1;
    }
  }
}

