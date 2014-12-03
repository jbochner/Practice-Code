int number = 12000;
Ball[] BRUNO = new Ball[number];

void setup() {
  size(700, 800);
  noStroke();
  for (int i=0; i<BRUNO.length; i++) {
    BRUNO[i] = new Ball(3);
  }
}

void draw() {
  background (0);
  colorMode(HSB, 360, 100, 100, 100);
  for (int i=0; i<BRUNO.length; i++) {
    BRUNO[i].display();
    BRUNO[i].move();
    BRUNO[i].bounce();
  }
}

class Ball {
  PVector x, v, a;
  float sz, tempsz;

  Ball() {
    x = new PVector(random(sz, width-sz), 20);
    v = new PVector(0, 0.1);
    a = new PVector (random(-0.01,0.01), random(0.02, 0.07));
    sz = 20;
    
  }
  
  Ball(float tempsz){
    x = new PVector(random(sz, width-sz), 20);
    v = new PVector(0, 0.1);
    a = new PVector (random(-0.01,0.01), random(0.02, 0.07));
    sz = tempsz;
  }

  void display() {
    if (v.y<0) {
      fill(100, 0, 100, 0) ;
    } else {
      fill(360, (100*x.y)/width, 100-(x.y/height), 100);
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
    if (x.x+sz/2>width || x.x-sz/2<0) {
      v.x*=-1;
    }
  }
}

