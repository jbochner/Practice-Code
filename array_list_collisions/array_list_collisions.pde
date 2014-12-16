ArrayList<Ball> balls = new ArrayList<Ball>();
int number;

void setup() {
  size(displayWidth, displayHeight);
  colorMode(HSB, 360, 100, 100, 100);
  number=500;
}

void draw() {
  if (mousePressed && frameCount%10==1) {
    balls.add(new Ball(20, 2));
  }
  background(100, 100, 100);
  fill(340, 100, 100, 80);
  for (int i = 0; i<balls.size (); i++) {
    Ball b = balls.get(i);
    b.display();
    b.move();
    b.bounce();
    for (int j=0; j<balls.size (); j++) {
      Ball c = balls.get(j);
      if (i!=j) {
        b.collide(c);
      }
    }
  }

  if (keyPressed && balls.size()>0 && frameCount%10==1) {
    balls.remove(0);
  }
}
