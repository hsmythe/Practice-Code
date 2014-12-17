class GravityBall {
  PVector loc, acc, vel;
  float sz, alpha;
  PImage water;
  GravityBall(float x, float y) {
    //gravity 
    loc = new PVector(x, y);
    vel=PVector.random2D();
    acc=new PVector(0, .1);
    sz=30;
    alpha=100;
    imageMode(CENTER);
    water = loadImage("water.png");
  }
  //making image ball
  void display() {
    image(water, loc.x, loc.y, sz, sz);
  }
  //gravity
  void move() {
    vel.add(acc);
    loc.add(vel);
  }
}

