int number = 200;
Ball[] BRUNO = new Ball[number];

void setup() {
  size(700, 800);
  noStroke();
  for (int i=0; i<BRUNO.length; i++) {
    BRUNO[i] = new Ball();
  }
}

void draw() {
  background (0);
  colorMode(RGB, 255, 255, 255, 100);
  for (int i=0; i<BRUNO.length; i++) {
    BRUNO[i].display();
    BRUNO[i].move();
    BRUNO[i].bounce();
  }
}

class Ball {
  PVector x, v, a;
  float sz;

  Ball() {
    x = new PVector(random(sz, width-sz), 20);
    v = new PVector(0, 0);
    a = new PVector (0, random(0.02,0.07));
    sz = 20;
  }

  void display() {
    if (v.y<0) {
      fill(255, 255, 255, 30) ;
    } else {
      fill(255, 255, 255, 100);
    }
    ellipse(x.x, x.y, sz, sz);
  }

  void move() {
    v.add(a);
    x.add(v);
  }
  void bounce() {
    if (x.y>height-sz/2) {
      x.y = height-sz/2;
      v.y = -abs(v.y);
    }
  }
}

