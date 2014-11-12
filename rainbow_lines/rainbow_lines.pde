
int z=0;
int dz = 1;
int a=0;
int da = 1;
int b=a-100;
void setup() {
  size(800, 600);
  frameRate(150);
  colorMode(HSB, 100);
}
void draw() {
  background(0);
  for (int x = 0; x < width; x+=20) {
    stroke(x/8, z/8, a/8);
    line(x, b, z, a);
  }
  int db=da;
  b = b+db;
  z=z+dz;
  a = a+da;
  if (z>width) {
    dz = -dz;
  }
  if (z<0) {
    dz = -dz;
  }

  if (a>height) {
    da = -da;
  }
  if (a<0) {
    da = -da;
  }
}

