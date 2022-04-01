class PVector {
  
  float Initial_x;
  float Initial_y;
  
  float x;
  float y;
  //Constructor to set initial velocity
  PVector(float x_, float y_){
   x = x_;
   y = y_;    
   Initial_x = x;
   Initial_y = y;
  }
 
 //function to simulate gravity
 void Gravity(){
     //Gravitational Force
    y += 0.1; 
 }
 
 //Reset the particle velocity so that the particles don't keep their acceleration.
  void Path_Velocity_Reset(){
   x = Initial_x;
   y = Initial_y;
  }


}
