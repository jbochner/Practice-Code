int number = 1200;
Ball[] BRUYESSSSSSSSSSSSSSSS = new Ball[number];

void setup() {
  frameRate(200);
  size(displayWidth, displayHeight);
  noStroke();
  for (int i=0; i<BRUYESSSSSSSSSSSSSSSS.length; i++) {
    BRUYESSSSSSSSSSSSSSSS[i] = new Ball(50,3);
  }
}

void draw() {
  background (0);
  colorMode(HSB, 360, 100, 100, 100);
  for (int i=0; i<BRUYESSSSSSSSSSSSSSSS.length; i++) {
    BRUYESSSSSSSSSSSSSSSS[i].display();
    BRUYESSSSSSSSSSSSSSSS[i].move();
    BRUYESSSSSSSSSSSSSSSS[i].bounce();
    for (int j=0; j<BRUYESSSSSSSSSSSSSSSS.length; j++) {
      if (i!=j) {
        BRUYESSSSSSSSSSSSSSSS[i].collide(BRUYESSSSSSSSSSSSSSSS[j]);
      }
    }
  }
}


