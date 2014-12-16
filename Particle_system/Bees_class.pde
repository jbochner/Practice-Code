class bees {
  PVector x, v, a;
  float loc, mouseloc;
  PImage BEEE;

  bees() {
    x = new PVector (0, random(50, height-50));
    v = new PVector (.7, cos(frameCount%PI));
    a = new PVector (0.01, 0);
    BEEE = loadImage("BEEE.png");
  }

  void display() {
    image(BEEE, x.x, x.y, BEEE.width*.2, BEEE.height*.2);
  }

  void move() {
    v.add(a);
    x.add(v);
  }

  boolean offScreen() {
    if (x.x>width) {
      return true;
    } else {
      return false;
    }
  }
}

