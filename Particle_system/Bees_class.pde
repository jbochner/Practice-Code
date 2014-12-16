class bees {
  PVector x, v, a;
  float sz, tempsz, loc, mouseloc;

  bees(float tempsz) {
    sz = tempsz;
    x = new PVector (sz/2, random(sz/2, height-sz/2));
    v = new PVector (.7, 0);
    a = new PVector (0.01, 0);
  }

  void display() {
    ellipse(x.x, x.y, sz, sz);
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

