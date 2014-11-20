PVector loc;
float sz=30;
void setup(){
  size(800,600);
  loc=new PVector(width/2, height/2); 
  
}


void draw(){
  ellipse(loc.x,loc.y,sz,sz);
  if (dist(mouseX,mouseY,loc.x,loc.y)< sz/2){
    fill(200,0,0);
   loc.x= random(width);
   loc.y=random(height);
  }
  else fill(0,0,200);
  
  
  
}
