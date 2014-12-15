ArrayList<GravityBall> ball=new ArrayList<GravityBall>();
int alpha, max, life;
void setup() {
  colorMode(HSB, 360,100,100,100);
  size(800, 800);
  max=200;
  for (int i=0; i<ball.size (); i++) {
   
  }
}


void draw() {
  background(0);
  fill(200, 100, 100, alpha);
  ball.add(new GravityBall(mouseX, mouseY));
  for (int i=0; i<ball.size (); i++) 
  {
    GravityBall b=ball.get(i);
    b.display();
    b.move();
    b.bounce();
  }
    if (ball.size() > max) {
    ball.remove(0);
  }
}
void mouseDragged(){
  ball.add(new GravityBall(mouseX, mouseY));
}


