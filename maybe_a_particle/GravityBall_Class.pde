class GravityBall {
  PVector loc, acc, vel;
  float sz, alpha,l;
  PImage water;
  GravityBall(float x, float y) {
    loc = new PVector(x, y);
    vel=PVector.random2D();
    acc=new PVector(0, .1);
    sz=30;
    alpha=100;
    imageMode(CENTER);
    water = loadImage("water.png");
  }
  void display() {
    image(water, loc.x, loc.y, sz, sz);
  }
  void move() {
    vel.add(acc);
    loc.add(vel);
  }
  void pool(float l) {
    fill(210, 100, 100, 100);
    if (loc.y>height-h) {
      h-=.01;
      ball.remove(l);
    }
     rect(0, height, width, h);
  }
}

