//Initialize a random number of particles
int NumOfParticles = round(random(50,100));
//Intialize array of partices
Particle[] Particles = new Particle[NumOfParticles];


PVector Position;


void setup() {
  size(1000,1000, P2D);
  
  

//Instantiate and fill the array
for(int x = 0; x < NumOfParticles;x++){
  Particles[x] = new Particle(10);
}

}



void draw(){
  background(255);


//Update the particles every frame
  for(int x = 0; x <  NumOfParticles;x++){
  Particles[x].Display();
  Particles[x].Move();
  Particles[x].Bottom();


}



}
  
