ArrayList<GravityBall> ball= new ArrayList<GravityBall>();
int max= 100;
void setup() {
  colorMode(HSB, 360, 100, 100, 100);
  size(800, 800);
  //  for (int i=0; i<ball.size(); i++) 
  //  {
  //    ball=new GravityBall(random(360));
  //  }
}


void draw() {
    background(255);
  ball.add(new GravityBall(200));
  for (int i=0; i<ball.size (); i++) 
  {
    GravityBall b=ball.get(i);
    b.display();
    b.move();
    b.bounce();
    for (int j=0; j<ball.size (); j++) 
    {
      if (i!=j) {
        GravityBall b2=ball.get(j);
        b.collideWith(b2);
      }
    }
  }
}

