BouncyBall[] balls = new BouncyBall[50];
BlackHole h;


void setup() {
  noStroke();
  size(800, 600);
  colorMode(HSB, 360, 100, 100, 100);
  h = new BlackHole();
  for (int i = 0; i < balls.length; i++) {
    balls[i] = new BouncyBall(random(5, 20), random(.1, 10));
  }
}

void draw() {
  background(0, 0, 100);

  for (int i = 0; i < balls.length; i++) {
    h.consumes(balls[i]);
    balls[i].display();
    balls[i].isSuckedIn(h);
    balls[i].move();
    balls[i].wallBounce();
   
  }
  h.display();
}
void mousePressed(){
  
  
}
