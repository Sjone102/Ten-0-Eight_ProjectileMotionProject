class Box {
  float x;
  float y;
  float w;
  float l;
  PVector locationb = new PVector(250,200);
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
  
  
  //boolean overlaps(Line other) {
    //float d = dist(b1.locationb.x, b1.locationb.y, other.x, other.y);
    //if (d < 1) {
      //return true;
    //} else {
    //  return false;
    //}
  //}
  void motion2() {
    
    //locationb.add(velocity);
    //if ((locationb.x > width) || (locationb.x < 0)) {
      //velocity.x = velocity.x * -1;
    //}
    //if ((locationb.y > height) || (locationb.y < 0)) {
      //velocity.y = velocity.y * -1;
    //}
    
      locationb.add(velocity2);
      //velocity2.sub(acceleration);
      //velocity2.limit(6);
      if ((locationb.x >= width) || (locationb.x <= 0)) {
        velocity2.x = velocity2.x * -1;
      }
      if (b1.overlaps(c1)) {
        velocity2.x = velocity2.x * -1;
      }
      //if (b1.locationb.x >= width) {
        //acceleration = acceleration.mult(-1);
      //}
  }
    void decelerate() {
        velocity2.x = velocity2.x - 0.15;
        if (velocity2.x <= 0) {
          velocity2.x = 0;
        }
        if (c1.overlaps(b1)) {
          velocity2.x = 6;
          collided = true;
        }
        
        
        
        //if ((b1.locationb.x >= width) || (locationb.x <= 0)) {
        //b1.velocity2.x = b1.velocity2.x * -1;
        //}
    }
      
      
      //b1.locationb.x = b1.locationb.x +8;
      //for(int x = 250; x < width; x = x + 10) { 
      //ellipse(x,200,70,70);
      
   //void bounce() {
     //if (collided == true) {
       //velocity2.add(deceleration);
     //}
   //}
      
    
  
  
  
  //boolean collided = false
  //if (c1.overlaps(b1)) {
    //collided = true;
  //}
    
  
  
  
  
  
  void display() {
    rect(locationb.x, locationb.y,w,l);
  }
}
