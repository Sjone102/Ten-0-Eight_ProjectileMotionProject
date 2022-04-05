Ball b1;
int value = 0;

void setup() {
  size(640, 360);
  b1 = new Ball();
}

void draw() {
  background(255);
  b1.display();
  b1.bounce();
}
  void mouseClicked() {
     if (value == 0) {
    value = 15;
  } else {
    value = 0;
  }
}
