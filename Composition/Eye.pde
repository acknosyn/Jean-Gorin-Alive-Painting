class Eye {

  float H;
  float HALF_W, HALF_H;

  float x;
  float y;
  float w;
  float h;
  color c;

  float blink = 0;
  int n = 0;

  Eye(float x, float y, float w, float h, color c) {
    this.x = x;
    this.y = y;
    this.w = w;
    this.h = h;
    this.c = c;

    this.H = h;
    this.HALF_W = w * 0.5;
    this.HALF_H = h * 0.5;
  }

  void update() {
    if (n % 210 == 0) { //every however many frames, start blinking (reducing height)
      blink = -5;
    }
    if (h < 0) { //when height is 0, start opening  eye (increasing height)
      h = 0;

      blink = 5;
    }
    if (h > H) { //when eye's normal height is reached, stop opening eye
      h = H;

      blink = 0;
    }

    h += blink;
    n++;
  }

  void draw() {
    pushStyle();    
    fill(c);
    noStroke();

    pushMatrix();
    rectMode(CENTER);
    translate(x, y);
    rect(HALF_W, HALF_H, w, h);
    popMatrix();

    popStyle();
  }
}

