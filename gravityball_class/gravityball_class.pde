GravityBall ball;
void setup() {
  size(800, 800);
  ball=new GravityBall();
}


void draw() {
  background(0);
  ball.display();
  ball.move();
  ball.bounce();
}


class GravityBall {
  PVector loc, acc, vel;
  float sz;
  GravityBall() {
    loc=new PVector(width/2, height/2);
    vel=PVector.random2D();
    acc=new PVector(0, .1);
    sz=20;
  }
  void display() {
    ellipse(loc.x, loc.y, sz, sz);
  }
  void move() {
    vel.add(acc);
    loc.add(vel);
  }
  void bounce() { 
    if (loc.x+sz/2> width || loc.x - sz/2 < 0) {
      vel.x *= -1;
    }
    if (loc.y + sz/2 > height || loc.y - sz/2 < 0) {
      vel.y *= -1;
    }
  }
}

