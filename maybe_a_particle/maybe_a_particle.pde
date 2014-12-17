ArrayList<GravityBall> ball=new ArrayList<GravityBall>();
int  max; 
float h;

void setup() {
  colorMode(HSB, 360, 100, 100, 100);
  size(800, 800);
  max=100;
  h=0;
  noStroke();
  for (int i=0; i<ball.size (); i++) {
  }
}


void draw() {
  background(0);
//  fill(200, 100, 100, 100);
//  rect(0,height,width,h);
//if (>height-h){
//      h-=.4;
//    }
  ball.add(new GravityBall(mouseX, mouseY));
  for (int i=0; i<ball.size (); i++) 
  {
    GravityBall b=ball.get(i);
    b.display();
    b.move();
    b.pool(i);
//    if (ball.size() >max) {
//      ball.remove(i);
//    }
  }
}
void mouseDragged() {
  ball.add(new GravityBall(mouseX, mouseY));
}

