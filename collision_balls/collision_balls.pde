PVector loc, vel, mouse,acc;
float sz=30;
void setup() {
  size(800, 600);
  loc=new PVector(width/2, height/2); 
  vel=new PVector(2, 2);
  mouse=new PVector(mouseX, mouseY);
  acc=new PVector(.1,.1);
}


void draw() {
  mouse=new PVector(mouseX, mouseY);
  background(0);
 vel.add(acc);
  loc.add(vel);
  ellipse(loc.x, loc.y, sz, sz);
  if (dist(mouse.x, mouse.y, loc.x, loc.y)<= sz/2) {
    fill(200, 0, 0);
    if (loc.x<mouse.x) {
      vel.x=-abs(vel.x);
    } else {
      vel.x=abs(vel.x);
    }
    if (loc.y<mouse.y) {
      vel.y=-abs(vel.y);
    } else { 
      vel.y=abs(vel.y);
    }

    }

    if ((loc.x+sz/2)>width || (loc.x-sz/2)<0) {
      vel.x*=-1;
    }
    if ((loc.y+sz/2)>height || (loc.y-sz/2)<0) {
      vel.y*=-1;
    }
    if (loc.dist(mouse)<sz/2) {
      vel.mult(-1);
    }
    //  if (loc.x<mouse.x) {
    //    vel.x=-abs(vel.x);
    //  } else vel.x=abs(vel.x);
    //  if (loc.y<mouse.y) {
    //    vel.y=-abs(vel.y);
    //  } else vel.y=abs(vel.y);
  }

