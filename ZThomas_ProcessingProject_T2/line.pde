class Line {
  float x;
  float y;
  float a;
  float z;
  
  Line() {
    x = 0;
    y = 270;
    a = 600;
    z = 270;
  }
  Line (float tempX, float tempY, float tempA, float tempZ) {
    x = tempX;
    y = tempY;
    a = tempA;
    z = tempZ;
  }
  
  
  void display() {
    line(x,y,a,z);
  }
}
