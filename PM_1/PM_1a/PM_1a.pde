int x = 100;
int y = 100;

int pathy = -30;
void setup (){
 size(300,300);
    
}

void draw (){
 background(255,255,255);
  //Gravity
  y += 1;
  pathy += 1;
  //Forward Motion
  x += 2;
  
  
  ellipse(x,y+pathy,10,10);
  
}
