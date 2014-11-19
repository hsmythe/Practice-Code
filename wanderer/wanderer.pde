PVector loc;
PVector vel;
PVector acc;
int sz=60;


void setup(){
  size(800,800);
  background(0);
  colorMode(HSB, 360, 100, 100, 100);
  noStroke();
  loc = new PVector(width/2, height/2);
  vel = new PVector(0, 0);
 
}

void draw(){
   acc = new PVector(random(-1,1), random(-1,1));
  fill(frameCount%360,100,100,100);
  loc.add(vel);
  vel.add(acc);
  vel.limit(3);
  ellipse(loc.x,loc.y,sz,sz);
  if (loc.x - sz/2 > width) {      
    loc.x = -sz/2;                
  }
  if (loc.x + sz/2 < 0) {         
    loc.x = width + sz/2;         
  }
  if (loc.y - sz/2 > height) {     
    loc.y = -sz/2;                 
  }
  if (loc.y + sz/2 < 0) {          
    loc.y = height + sz/2;        
  }
  
}
