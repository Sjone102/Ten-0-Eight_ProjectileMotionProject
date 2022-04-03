//Initialize a random number of particles
int NumOfParticles = round(random(50, 100));
//Intialize array of partices
Particle[] Particles = new Particle[NumOfParticles];
Box b1;

PVector Position;
boolean contacts;

void setup() {
  size(900, 900, P2D);

  b1 = new Box(500, 500, 100, 1.5);

  //Instantiate and fill the array
  for (int x = 0; x < NumOfParticles; x++) {
    Particles[x] = new Particle(10);
  }
}



void draw() {
  background(255);
  b1.Display();

  //Update the particles every frame
  for (int x = 0; x <  NumOfParticles; x++) {
    Particles[x].Display();
    Particles[x].Move();
    Particles[x].Bottom();
    Particles[x].Contact();
  }
}
