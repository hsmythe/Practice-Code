int count=60;
float[] x= new float[count];
float[] y= new float[count];

void setup() {
  size(800,800);
  for (int i=0; i<count; i++) {
    x[i]=width/2;
    y[i]=height/2;
  }
  noStroke();
  fill(random(255),random(255),random(255),30);
}

void draw() {background(20);
  x[count-1]=mouseX;
  y[count-1]=mouseY;
  for (int i=0; i<count-1; i++) {
    x[i]=x[i+1];
    y[i]=y[i+1];
  }
  for (int i=0; i<count; i++) {
    ellipse(x[i], y[i], 5+i*2, 5+i*2);
  }
}

