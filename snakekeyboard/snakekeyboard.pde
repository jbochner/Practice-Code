int numberofcircles = 80;
float [] x = new float[numberofcircles];
float [] y = new float[numberofcircles];
float [] Hvalue = new float[numberofcircles];
float colorvalue;

void setup() {
  colorMode(HSB, 100, 100, 100, 100);
  size(displayWidth, displayHeight);
  for (int i=0; i<numberofcircles; i++) {
    x[i] = 10000;
    y[i] = 10000;
    if (numberofcircles<=100) {
      colorvalue = i*(100/numberofcircles);
    }
    if(numberofcircles>100) {
      colorvalue = (i*100)/numberofcircles;
    }
    Hvalue[i] = colorvalue;
  }
}

void draw() {
  background(0);
  for (int i =0; i< (numberofcircles-1); i++) {
    x[i] = x[i+1];
    y[i] = y[i+1];
  }
  x[numberofcircles-1] = mouseX;
  y[numberofcircles-1] = mouseY;
  for (int i = numberofcircles-1; i>-1; i--) {
    fill(Hvalue[i], 100, 100);
    ellipse(x[i], y[i], i*2+20, i*2+20);
  }
}

