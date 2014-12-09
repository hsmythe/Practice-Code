class GravityBall {
  PVector loc, acc, vel;
  float sz, h, s, b, t;
  
 
  GravityBall( float temph) {
   sz=random(10,30);
    loc=new PVector(random(sz,width-sz),random(sz,height-sz));
    vel=PVector.random2D();
//    acc=new PVector(0, .1);
    h=temph;
    s=100;
    b=100;
    t=50;

  }
  void display() {
    fill(h, s, b, t);
    ellipse(loc.x, loc.y, sz, sz);
  }
  void move() {
    loc.add(vel);
 //  vel.add(acc);
  }
  void bounce() { 
    if (loc.x+sz/2> width || loc.x - sz/2 < 0) {
      vel.x *= -1;
    }
    if (loc.y + sz/2 > height || loc.y - sz/2 < 0) {
      vel.y *= -1;
    }
  }
  void collideWith(GravityBall other) {
    if (loc.dist(other.loc) < sz/2 + other.sz/2) {
    {
        vel = PVector.sub(loc, other.loc);
        vel.normalize();
      }
    }
  }
}

