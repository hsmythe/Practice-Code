ArrayList<GravityBall> ball=new ArrayList<GravityBall>();
int  max; 
Pool p;
PImage light;


void setup() {
  colorMode(HSB, 360, 100, 100, 100);
  size(533, 800);
  max=100;
  p=new Pool();
  noStroke();
  light = loadImage("light.jpg");
}


void draw() {
  background(light);
  ball.add(new GravityBall(mouseX, mouseY));
  p.display();
 
  for (int i=0; i<ball.size (); i++) 
  {
    GravityBall b=ball.get(i);
    b.display();
    b.move();
    p.drain();
    if (p.caught(b)==true) {
        ball.remove(i);
    }
  } 
}
void mouseDragged() {
  ball.add(new GravityBall(mouseX, mouseY));
}

