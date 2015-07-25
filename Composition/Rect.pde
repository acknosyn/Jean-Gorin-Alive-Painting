class Rect {

  float x;
  float y;
  float w;
  float h;
  color c;

  Rect(float x, float y, float w, float h, color c) {
    this.x = x;
    this.y = y;
    this.w = w;
    this.h = h;
    this.c = c;
  }

  void draw() {
    pushStyle();    
    fill(c);
    noStroke();
    pushMatrix();
    translate(x, y);
    rect(0, 0, w, h);
    popMatrix();
    popStyle();
  }
}

