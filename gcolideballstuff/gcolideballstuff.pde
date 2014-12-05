GravityBall[] ball= new GravityBall[10];
void setup() {
  colorMode(HSB, 360, 100, 100, 100);
  size(800, 800);
  for (int i=0; i<ball.length; i++) 
  {
    ball[i]=new GravityBall(random (5, 50), random(.5, 10));
    //    (30, random(360));
  }
  //  ball2=new GravityBall(79,random(360));
  //  ball3=new GravityBall(34,random(360));
}


void draw() {
  background(0);
  for (int i=0; i<ball.length; i++) 
  {
    ball[i].display();
    ball[i].move();
    ball[i].bounce();
    for (int j=0; j<ball.length; j++)
    {
      if (i!=j) {
        ball[i].collideWith(ball[j]);
      }
    }
  }
}
//  ball2.display();
//  ball2.move();
//  ball2.bounce();
//  ball3.display();
//  ball3.move();
//  ball3.bounce();




class GravityBall {
  PVector loc, acc, vel;
  float sz, h, s, b, t;
  
  //  GravityBall(float h) {
  //    loc=new PVector(width/2, height/2);
  //    vel=PVector.random2D();
  //    acc=new PVector(0,.1);
  //    sz=20;
  //    h=random(360);
  //    s=30;
  //    b=100;
  //    t=80;
  //  }
  GravityBall(float tempsz, float temph) {
    sz=tempsz;
    loc=new PVector(width/2, height/2);
    vel=PVector.random2D();
    acc=new PVector(0, .1);
    h=temph;
    s=30;
    b=100;
    t=50;
//    vel[i] = sub(loc[i], loc[j]);
//    vel[i].normalize();
  }
  void display() {
    fill(h, s, b, t);
    ellipse(loc.x, loc.y, sz, sz);
  }
  void move() {
    loc.add(vel);
    vel.add(acc);
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
//      if (loc[i].dist(loc[j]) < sz[i]/2+sz[j]/2); 
//      {
        vel = PVector.sub(loc, other.loc);
        vel.normalize();
      }
    }
  }


