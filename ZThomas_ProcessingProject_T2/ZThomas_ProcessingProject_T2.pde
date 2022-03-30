Box b1;
Circle c1;
//Line l1;
//Line l2;
PVector velocity;
  PVector locationb;
  boolean collided = false;
  boolean friction = false;


void setup() {
  size(600,500);
  b1 = new Box(250,200,90,90);
  c1 = new Circle(300,100,70,70);
 // l1 = new Line();
  //l2 = new Line(600,0,600,500);
  
  
}
void draw() {
  background(0);
  b1.display();
  c1.display();
  c1.motion();
  //l1.display();
  //l2.display();
  
  
  if (c1.overlaps(b1)) {
    friction = true;
  }
  if (friction == true) {
    b1.decelerate();
  }
 
 
  if (c1.overlaps(b1)) {
    collided = true;
  }
  if (collided == true) {
    //background(0,200,0);
    b1.motion2();
  }
  //for (locationb.x; locationb.x < width; locationb.x + 1) {
   // rect(locationb.x,locationb.y,70,70);
  }
  
