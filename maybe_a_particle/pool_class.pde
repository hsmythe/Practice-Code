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
      h-=.01;
      return true;
    } else { 
      return false;
    }
  }
}

