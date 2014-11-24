int number=100;
PVector[] x = new PVector[number];
PVector[] v = new PVector[number];
PVector[] a = new PVector[number];
float[] sz = new float[number];
PImage snowflake;
PImage Adel;


void setup() {
  snowflake = loadImage("snowflake.png");
  Adel = loadImage("adel.jpg");

  size(Adel.width, Adel.height);
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
  background(Adel);
  for (int i=0; i<number; i++) {
    v[i].add(a[i]);
    x[i].add(v[i]);
    image(snowflake, x[i].x, x[i].y, snowflake.width*.05, snowflake.height*.05);
    a[i].x=random(-.1, .1);
    if (x[i].y>height) {
      x[i].y = -100;
      v[i] = (PVector.random2D());
    }
  }
}

