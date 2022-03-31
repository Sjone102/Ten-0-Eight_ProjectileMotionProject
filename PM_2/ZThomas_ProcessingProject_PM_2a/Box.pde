class Box {
  float x;
  float y;
  float w;
  float l;
  PVector locationb = new PVector(320,200);
  PVector velocity2 = new PVector(6,0);
  PVector acceleration = new PVector(.5,0);
  
  
  Box(float tempX, float tempY, float tempW, float tempL) {
    x = tempX;
    y = tempY;
    tempX = locationb.x;
    tempY = locationb.y;
    w = tempW;
    l = tempL;
  }
  
  
  boolean overlaps(Circle other) {
    float d = dist(b1.locationb.x, b1.locationb.y, other.location.x, other.location.y);
    if (d < 45) {
      return true;
    } else {
      return false;
    }
  }
  
  
  
  void motion2() {
      locationb.add(velocity2);
  }
    
  
  
  void display() {
    rect(locationb.x, locationb.y,w,l);
  }
}
