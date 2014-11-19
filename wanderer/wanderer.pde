float y=height/2;
float x=width/2;
float vely=1;
float velx=1;
float accx= 0;
float accy=0;
int sz=60;


void setup(){
  size(800,800);
  background(0);
  colorMode(HSB, 360, 100, 100, 100);
  noStroke();
  
}

void draw(){
  fill(frameCount%360,100,100,100);
  accy=random(-4,4);
  accx=random(-4,4);
  x+=velx;
  y+=vely;
  vely+=accy;
  velx+=accx;
  ellipse(x,y,sz,sz);
  if (x - sz/2 > width) {      
    x = -sz/2;                
  }
  if (x + sz/2 < 0) {         
    x = width + sz/2;         
  }
  if (y - sz/2 > height) {     
    y = -sz/2;                 
  }
  if (y + sz/2 < 0) {          
    y = height + sz/2;        
  }
  
}
