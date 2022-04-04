class PVector {
 float x;
 float y; 
   
 PVector(float t, float b){  
 x = t;
 y = b;
 }
 
 void PathGravity(){
    y += 0.54; 
 }
 
 void Add(PVector v){ 
  x += v.x;
  y += v.y;
 }
  
}
