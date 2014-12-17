class Pool {
  float h;
 Pool() {
    h=0;
  }
    // getting the water to add up at the bottom
    void Catcher() {
      fill(210, 100, 100, 100);
      if (loc.y>height-h) {
        h-=.01;
      }
      rect(0, height, width, h);
    }
  
}

