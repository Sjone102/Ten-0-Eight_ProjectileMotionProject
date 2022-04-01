class Box {
 float x;
 float y;
 float r;
 
 PVector Path;
 boolean InRangeOfParticle;
 
 //Constructor to initialize position
 Box(float xpos, float ypos, float r_size, float xmove_direction){
    r = r_size;
     
      x = xpos;
      y = ypos;
    InRangeOfParticle = false;
    Path = new PVector(xmove_direction,0);
   
  
 }
 
 //Function to display the particles
 void Display(){
   stroke(0);
    fill(100,175);
    square(x,y,r);   
   
 }
 
 //Function to move the particles
 void Move(){
  if(InRangeOfParticle){
   x += Path.x;
  }
  
  if (x+r > width){
   x = width-r; 
  }
}


}
