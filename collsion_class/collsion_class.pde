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

class Ball {
  PVector x, v, a;
  float sz, tempsz, speed, tempspeed;


  Ball(float tempsz, float tempspeed) {
    x = new PVector(random(tempsz/2, width), random(tempsz/2, height));
    v = PVector.random2D();
    a = new PVector (0, 0);
    sz = tempsz;
    speed = tempspeed;
    v.mult(speed);
  }

  void display() {
    if (v.y<0) {
      fill(100, 0, 100, 0) ;
    } else {
      fill(360, (100*x.y)/height, 100-(x.y/height), 100);
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
    if (x.y+sz/2>height || x.y-sz/2<0) {
      v.y*=-1;
    }
  }

  void collide(Ball BRUNOOOOOOO) {
    if (x.dist(BRUNOOOOOOO.x)<sz/2 + BRUNOOOOOOO.sz/2) {
      v = PVector.sub(x, BRUNOOOOOOO.x);
      v.normalize();
      v.setMag(speed);
    }
  }
}

