int x, y, sz, xspeed, yspeed;
int run = 1;
int pausedAt;
int threshold = 1000;

void setup() {
  size(400, 300);
  x = width/2;
  y = height/2;
  sz = 20;
  xspeed = 1;
  yspeed = 1;
}

void draw() {
  background(0);
  ellipse(x, y, sz, sz);
  if (run == 0) {
    text("Hi", width/2, height/2);
    if (millis()-pausedAt>=threshold) {
      run = 1;
    }
  }
  if (run == 1) {
    x+=xspeed;
    y+=yspeed;
  }
  if (x > width || x < 0) {
    xspeed *= -1;
  }
  if (y > height || y < 0) {
    yspeed *= -1;
  }
  if (mousePressed) {
    run = 0;
    pausedAt = millis();
  }
}

