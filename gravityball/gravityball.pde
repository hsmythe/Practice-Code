float x=300;
float y= 20;
float sz=20;
float velx=2;
float vely=3;
float gravity=1;
float ax=0;

void setup() {
  size (600, 600);
}
void draw() {
  background(0);
  velx+=ax;
  vely+=gravity;
  x+=velx;
  y+=vely;
  ellipse(x, y, sz, sz);

  if (y + sz/2 > height) { 
    y = height - sz/2;
    vely*=-.95;
    velx*=.95;
  }
  if (x+sz/2>width) { 
    x = width - sz/2;
    velx*=-.95;
  }
  if (x-sz/2<0) { 
    x = sz/2;
    velx*=-.95;
  }
  if (y+sz/2<0) { 
    y = height + sz/2;
    vely*=-.95;
  }
}

