float H = 10;
float S = 100;
float B = 100;
float dH = .2;

void setup() {
  size(600, 600);
  colorMode (HSB, 100, 100, 100, 100);
  noCursor();
}

void draw() {
  for (int x = 0; x<=width; x+=20) {
    float Hfill = H-20;
    for (int y = 0; y<=height; y+=20) {
      fill(Hfill, S, B);
      if (mouseX>=x && mouseX<x+20 && mouseY>=y && mouseY<y+20) {
        fill(H, S, B);
        H = H+dH;
        if (H<0) {
          dH = -dH;
        }
        if (H>=100) {
          dH = -dH;
        }
      }
      rect(x, y, 20, 20);
    }
  }
}

