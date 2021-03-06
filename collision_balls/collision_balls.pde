int count=20;
float[] sz = new float[count];
PVector[] loc=new PVector[count];
PVector[] vel=new PVector[count];
PVector[] acc = new PVector[count];
float[] mass = new float[count];
int minDiam = 10;
int maxDiam = 60;
void setup() {
  size(800, 600);
colorMode(HSB, 360, 100, 100, 100);
  for (int i = 0; i < count; i++) {
    loc[i] = new PVector(random(sz[i]+20, width-sz[i]-20), random(sz[i]+20, height-sz[i]-20));
    vel[i] = PVector.random2D();
    sz[i] = random(minDiam, maxDiam);
    acc[i] = new PVector(0, 0);
    mass[i] = map(sz[i], minDiam, maxDiam, .1, 1.5);
  }
}

void draw() {

  background(0);
  for (int i=0; i<count; i++) 
  {
    vel[i].add(acc[i]);
    loc[i].add(vel[i]);

    for (int j=0; j<count; j++)
    {
      if (i!=j) {
        if (loc[i].dist(loc[j]) < sz[i]/2 + sz[j]/2) { 
          print("hit ");



          if (loc[i].dist(loc[j]) < sz[i]/2+sz[j]/2); 
          {
            //            if (loc[i].x<loc[j].x) {
            //              vel[i].x=-abs(vel[i].x);
            //              vel[j].x = abs(vel[j].x);
            //            } else {
            //              vel[i].x=abs(vel[i].x);
            //              vel[j].x = -abs(vel[j].x);
            //            }
            //            if (loc[i].y<loc[j].y) {
            //              vel[i].y=-abs(vel[i].y);
            //              vel[j].y = abs(vel[j].y);
            //            } else { 
            //              vel[i].y=abs(vel[i].y);
            //              vel[j].y = -abs(vel[j].y);
            //            }
            vel[i] = PVector.sub(loc[i], loc[j]);
            vel[i].normalize(); 
            vel[i].div(mass[i]);
          }
        }
        fill(frameCount%360, 100, 83, 99);
        ellipse(loc[i].x, loc[i].y, sz[i], sz[i]);
        if ((loc[i].x+sz[i]/2)>width || (loc[i].x-sz[i]/2)<0) {
          vel[i].x*=-1;
        }
        //   if ((loc2.x+sz2/2)>width || (loc2.x-sz2/2)<0) {
        //    vel2.x*=-1;
        //  }
        if ((loc[i].y+sz[i]/2)>height || (loc[i].y-sz[i]/2)<0) {
          vel[i].y*=-1;
        }
        //  if ((loc2.y+sz2/2)>height || (loc2.y-sz2/2)<0) {
        //    vel2.y*=-1;
        //  }
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
    }
  }
}

