ArrayList<GravityBall> ball=new ArrayList<GravityBall>();
int  max; 
Pool p;


void setup() {
  colorMode(HSB, 360, 100, 100, 100);
  size(800, 800);
  max=100;
  p=new Pool();
  noStroke();
}


void draw() {
  background(0);
  ball.add(new GravityBall(mouseX, mouseY));
  p.display();
  for (int i=0; i<ball.size (); i++) 
  {
    GravityBall b=ball.get(i);
    b.display();
    b.move();
    
    if (p.caught(b)==true) {
        ball.remove(i);
    }
  }
}
void mouseDragged() {
  ball.add(new GravityBall(mouseX, mouseY));
}

