class Particle {
 float x;
 float y;
 float r;
 
 PVector Path;
 
 
 //Constructor to initialize position
 Particle(float r_size){
    r = r_size;
     
      x = mouseX;
      y = mouseY;
  
    Path = new PVector(random(2,4),random(-6,1));
   
  
 }
 
 //Function to display the particles
 void Display(){
   stroke(0);
    fill(mouseX/4,mouseY/4,y);
    ellipse(x,y,r*2,r*2);   
 }
 
 //Function to move the particles
 void Move(){
   
    Path.Gravity();
    
    //Cool effect to switch the direction of the burst -----------
    if(mouseX < width/2)
    x += Path.x;
    
    else{
     x += -Path.x; 
    }
    //-------------------
    
    y += Path.y; 
    
 
}
//If the particles reach the bottom of the page reset their position and velocity.
void Bottom(){
  if(y > height){
    y = mouseY;
    x = mouseX;
    //Reset the Velocity for this path.
    Path.Path_Velocity_Reset();
  }

}

}
