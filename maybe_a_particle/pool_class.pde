class Pool {

  float h;
          
  Pool() {

    h=0;
  }
  // getting the water to add up at the bottom
  void display() {
    fill(210, 100, 100, 100);
    rect(0, height, width, h);
  }
  boolean caught(GravityBall b) {
    if (b.loc.y>height-h) {
      h-=.5;
      return true;
    } else { 
      return false;
    }
  }
  //drain after filled with button
  void drain() {
    textSize(50);
    fill(0,0, 100, 100);
    if ( h<= -height) {
      rect(0,height/2-40,width,80);
      fill(0, 100, 100, 100);
      text("click to drain", 95, height/2);
      if (mouseX>0 && mouseX<width && mouseY>height/2-40 && mouseY <height/2-40+80){
      if (mousePressed) {
        h=0;
      }
      }
    }
  }
}

