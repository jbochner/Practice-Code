ArrayList<bees> beeMeUp = new ArrayList<bees>();
PVector wid;
float temploc;

void setup() {
  size(displayWidth, displayHeight);
  colorMode(HSB, 360, 100, 100, 100);
  PVector wid = new PVector(0, 0);
}

void draw() {
  background(250, 60, 65);
  for (int i = 0; i<beeMeUp.size (); i++) {
    bees b = beeMeUp.get(i);
    b.display();
    b.move();
    if (b.offScreen()) {
      beeMeUp.remove(0);
    }
  }
}


void mousePressed() {
  for (int i = 0; i<random (0, 3); i++) {
    beeMeUp.add(new bees());
  }
}

