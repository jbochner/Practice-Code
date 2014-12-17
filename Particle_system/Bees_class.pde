class bees {
  PVector x, v, a;
  PImage BEEE;
  float sinceReleased;
  float periodController;


  bees() {
    x = new PVector (random(-20,-10), random(50, height-50));
    a = new PVector (0.01, 0);
    BEEE = loadImage("BEEE.png");
    sinceReleased = frameCount;
    periodController = random(0.03,0.08);
  }

  void display() {
    image(BEEE, x.x, x.y, BEEE.width*.2, BEEE.height*.2);
  }

  void move() {
    v = new PVector (.7, random(1.5,3)*cos(periodController*(frameCount-sinceReleased)));
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

