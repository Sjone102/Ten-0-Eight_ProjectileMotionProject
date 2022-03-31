Box b1;
Circle c1;

PVector velocity;
  PVector locationb;
  boolean collided = false;
  


void setup() {
  size(600,500);
  b1 = new Box(250,200,90,90);
  c1 = new Circle(300,100,70,70);
 
  
  
}
void draw() {
  background(0);
  b1.display();
  c1.display();
  c1.motion();
 
  if (c1.overlaps(b1)) {
    collided = true;
  }
  if (collided == true) {
    b1.motion2();
  }
  
  }
  
