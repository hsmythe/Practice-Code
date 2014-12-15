class GravityBall {
  PVector loc, acc, vel;
  float sz;
  GravityBall(float x, float y) {
    loc = new PVector(x, y);
    vel=PVector.random2D();
    acc=new PVector(0, .7);
    sz=30;
    alpha=100;
  }
  void display() {
    fill(200,100,100,alpha);
    alpha--;
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

