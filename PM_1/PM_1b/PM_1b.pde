boolean MouseClicked;
PVector location;
PVector path;

String Instructions = "Press the mouse button";

void setup (){
 size(300,300);
    location = new PVector(50,100);
    path = new PVector(2,-10);
}

void draw (){
 background(255,255,255);
  
  
   if(MouseClicked){  
  ellipse(location.x,location.y,10,10);
  path.y += 0.54;
  location.x += path.x;
  location.y += path.y;
  }
  
  if(location.y > height - 10){
   location.y = height -10; 
  }
  
  //Text and effects
  textSize(14);
  fill(255,128,0);
  for(int t = 0; t < Instructions.length();t++)
  text(Instructions,location.x+10,location.y+10);
  

  

}


void mousePressed(){
 MouseClicked = true;  
}
