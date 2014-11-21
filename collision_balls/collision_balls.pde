int count=2;
float[] sz = new float[count];
PVector[] loc=new PVector[count];
PVector[] vel=new PVector[count];


void setup() {
  size(800, 600);
  //  loc=new PVector(width/2, height/2); 
  //  vel=new PVector(2, 2);
  //
  //  loc2=new PVector(200,200);
  //  vel2=new PVector(2, 2);
  for (int i = 0; i < count; i++) {
    loc[i] = new PVector(random(sz[i], width-sz[i]), random(sz[i], height-sz[i]));
    vel[i] = PVector.random2D();
    sz[i] = random(20, 40);
  }
}

void draw() {

  background(0);
  for (int i=0; i<count; i++) 
  {
    loc[i].add(vel[i]);
    for (int j=0; j<count; j++)
    {
      if (i!=j) {
        if (loc[i].dist(loc[j]) < sz[i]/2 + sz[j]/2) { //...if it is...
          print("COLLISION DETECTED    ");


    
          if (loc[i].dist(loc[i+1]) < sz[i]/2+sz[i+1]/2); 
          {
            if (loc[i].x<loc[i+1].x) {
              vel[i].x=-abs(vel[i].x);
             vel[j].x = abs(vel[j].x);
            } else {
              vel[i].x=abs(vel[i].x);
              vel[j].x = -abs(vel[j].x);
            }
            if (loc[i].y<loc[i+1].y) {
              vel[i].y=-abs(vel[i].y);
             vel[j].y = abs(vel[j].y);
            } else { 
              vel[i].y=abs(vel[i].y);
              vel[j].y = -abs(vel[j].y);
            }
           ellipse(loc[i].x, loc[i].y, sz[i], sz[i]);
          }

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
}

