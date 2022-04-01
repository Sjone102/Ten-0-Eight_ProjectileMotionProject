class Particle {
 float x;
 float y;
 float r;
 
 PVector Path;
 
 
 //Constructor to initialize position
 Particle(float r_size){
    r = r_size;
     
      x = 20;
      y = 200;
  
    Path = new PVector(random(2,4),random(-6,1));
   
  
 }
 
 //Function to display the particles
 void Display(){
   stroke(0);
    fill(100,175);
    ellipse(x,y,r*2,r*2);   
 }
 
 //Function to move the particles
 void Move(){
   
    Path.Gravity();    
    y += Path.y; 
    x += Path.x;
 
}
//If the particles reach the bottom of the page reset their position and velocity.
void Bottom(){
  if(y > height){
    y = 200;
    x = 20;
    //Reset the Velocity for this path.
    Path.Path_Velocity_Reset();
  }

}

}
