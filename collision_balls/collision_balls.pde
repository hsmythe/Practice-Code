PVector loc, vel, loc2, vel2;
float sz=150;
float sz2=100;
void setup() {
  size(800, 600);
  loc=new PVector(width/2, height/2); 
  vel=new PVector(2, 2);

  loc2=new PVector(200,200);
  vel2=new PVector(2, 2);
}


void draw() {

  background(0);

  loc.add(vel);
  loc2.add(vel2);
  ellipse(loc.x, loc.y, sz, sz);
  ellipse(loc2.x, loc2.y, sz2, sz2);
  if (loc.dist(loc2) < sz/2+sz2/2) {
    fill(200, 0, 0);
    if (loc.x<loc2.x) {
      vel.x=-abs(vel.x);
      vel2.x=abs(vel2.x);
    } else {
      vel.x=abs(vel.x);
      vel2.x=-abs(vel2.x);
    }
    if (loc.y<loc2.y) {
      vel.y=-abs(vel.y);
      vel2.y=abs(vel2.y);
    } else { 
      vel.y=abs(vel.y);
      vel2.y=-abs(vel2.y);
    }
  }

  if ((loc.x+sz/2)>width || (loc.x-sz/2)<0) {
    vel.x*=-1;
  }
   if ((loc2.x+sz2/2)>width || (loc2.x-sz2/2)<0) {
    vel2.x*=-1;
  }
  if ((loc.y+sz/2)>height || (loc.y-sz/2)<0) {
    vel.y*=-1;
  }
  if ((loc2.y+sz2/2)>height || (loc2.y-sz2/2)<0) {
    vel2.y*=-1;
  }
//  if (loc.dist(loc2)<sz/2) {
//    vel.mult(-1);
//  }
//  if (loc2.dist(loc)<sz/2) {
//    vel2.mult(-1);
//  }
  //  if (loc.x<mouse.x) {
  //    vel.x=-abs(vel.x);
  //  } else vel.x=abs(vel.x);
  //  if (loc.y<mouse.y) {
  //    vel.y=-abs(vel.y);
  //  } else vel.y=abs(vel.y);
}

