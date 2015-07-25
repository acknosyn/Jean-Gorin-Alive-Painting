class Heart {
  float EXPANSION = 100;
  float MAX_W, MAX_H;
  float MIN_W, MIN_H;
  float HALF_W, HALF_H;

  float x, y;
  float w, h;
  color c;

  float inflate = 0;
  int n = 0;

  Heart(float x, float y, float w, float h, color c) {
    this.x = x;
    this.y = y;
    this.w = w;
    this.h = h;
    this.c = c;
    
    this.MAX_W = w + EXPANSION;
    this.MAX_H = h + EXPANSION;
    this.MIN_W = w - EXPANSION;
    this.MIN_H = h - EXPANSION;
    this.HALF_W = w * 0.5;
    this.HALF_H = h * 0.5;
  }

  void update() {
    if (n % 60 == 0) { //every however many frames, start expanding
      inflate = 25;
    }
    if (w > MAX_W) { //when a max size is reached, start contracting
      w = MAX_W;
      h = MAX_H;

      inflate = -3;
    }
    if (w < MIN_W) { //when a min size is reached, stop contracting
      w = MIN_W;
      h = MIN_H;
      
      inflate = 0;
    }

    w += inflate;
    h += inflate;

    n++;
  }

  void draw() {
    pushStyle();    
    fill(c);
    noStroke();

    pushMatrix();
    rectMode(CENTER); //cnetered so rect can scale from center instead of top left corner
    translate(x, y);
    rect(HALF_W, HALF_H, w, h); //origin at half width and hight. Static value so it doesn't update with w and h if it was w/2, h/2
    popMatrix();

    popStyle();
  }
}

