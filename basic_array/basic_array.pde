String aaa[] = {"a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"};

void setup() {
  size (500, 500);
  background(0);
}

void draw() {
  for (int de = 0; de < 26; de++) {
    text(aaa[de], 10, 20+10*de);
  }
}

