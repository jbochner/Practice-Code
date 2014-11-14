float x;
float y;
float sz;
float vy;
float ay;

void setup() {
  size(700, 800);
  noStroke();
  x = width/2; //x position
  y = 100;     //y position
  sz = 40;     //size of ball
  vy = 1;      //velocity
  ay = 0.05;   //acceleration (gravity)
}

void draw() {
  background (0);
  ellipse(x, y, sz, sz);
  vy+=ay;      //increase velocity by acceleration
  y+=vy;       //increase y position by velocty
  if (y + sz/2>height) { //if the ball goes off the screen
    y = height-sz/2;     //start the ball at the bottom
    vy = -vy;            //reverse the velocity
  }
}

