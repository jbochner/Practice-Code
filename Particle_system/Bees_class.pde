class bees {
  PVector x, v, a;
  PImage BEEE;
  float timeReleased;
  float timeSwarm;
  float periodController;


  bees() {
    x = new PVector (random(-20, -10), random(50, height-50));
    a = new PVector (0, 0);
    BEEE = loadImage("BEEE.png");
    timeReleased = frameCount;
    periodController = random(0.03, 0.08);
  }

  void display() {
    image(BEEE, x.x, x.y, BEEE.width*.2, BEEE.height*.2);
  }

  void move() {
    if (keyPressed) {
      timeSwarm = frameCount;
      a.set(-(x.x-mouseX)/7000, -(x.y-mouseY)/7000);
      if (x.x-mouseX < 100) {
        
      }
    } else {
      v = new PVector (.7, random(1.5, 3)*cos(periodController*(frameCount-timeReleased)));
    }
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

