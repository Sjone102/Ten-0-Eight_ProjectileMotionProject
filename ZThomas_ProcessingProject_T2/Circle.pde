  class Circle {
  float x;
  float y;
  float r;
  float s;
  PVector location = new PVector(10, 200);
  PVector velocity = new PVector(2, 3);
  PVector locationb = new PVector(300,200);
  



  Circle(float tempX , float tempY, float tempR, float tempS) {
    location.x = tempX;
    location.y = tempY;
    r = tempR;
    s = tempS;
  }
  
  boolean overlaps(Box other) {
    float d = dist(c1.location.x, c1.location.y, other.locationb.x, other.locationb.y);
    if (d < 45) {
      return true;
    } else {
      return false;
    }
  }


  void motion() {
    location.add(velocity);
    if ((location.x > width) || (location.x < 0)) {
      velocity.x = velocity.x * -1;
    }
    if ((location.y > height) || (location.y < 0)) {
      velocity.y = velocity.y * -1;
    }
    if (c1.overlaps(b1)) {
      c1.velocity.x = c1.velocity.x * -1;
      c1.velocity.y = c1.velocity.y * -1;
    
  }
  }
  
  
  //void motion2() {
    //location.add(velocity2);
    //if ((location.x > width) || (location.x < 0)) {
      //velocity2.x = velocity2.x * -1;
    //}
    //if ((location.y > height) || (location.y < 0)) {
      //velocity2.y = velocity2.y * -1;
    //}
  //}
  
  
  
 

  void display() {
    ellipse(location.x, location.y, r, s);
  }
  }
  
