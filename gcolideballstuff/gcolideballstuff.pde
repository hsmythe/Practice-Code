GravityBall[] ball= new GravityBall[0];
void setup() {
  colorMode(HSB, 360, 100, 100, 100);
  size(800, 800);
  for (int i=0; i<ball.length; i++) 
  {
    ball[i]=new GravityBall(random(360));
  }
}


void draw() {
  background(255);
  for (int i=0; i<ball.length; i++) 
  {
    ball[i].display();
    ball[i].move();
    ball[i].bounce();
    for (int j=0; j<ball.length; j++)
    {
      if (i!=j) {
        ball[i].collideWith(ball[j]);
      }
    }
  }
}





