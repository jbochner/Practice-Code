void setup() {
  noLoop();
}

void draw() {
  println(quadratic(1, 0, -1));
}

float[] quadratic(float a, float b, float c) {
  float[]answer = new float[2];
  answer[0] = ((b*-1)+sqrt((b*b)-(4*a*c)))/(2*a);
  answer[1] = ((b*-1)-sqrt((b*b)-(4*a*c)))/(2*a);
  return answer;
}

