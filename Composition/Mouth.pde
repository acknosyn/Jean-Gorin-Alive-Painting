class Mouth {

  float MAX_H = 40;
  float MIN_H;

  float x;
  float y;
  float w;
  float h;
  color c;

  float smile = 0;
  int n = 0;

  Mouth(float x, float y, float w, float h, color c) {
    this.x = x;
    this.y = y;
    this.w = w;
    this.h = h;
    this.c = c;

    this.MIN_H = h;
  }

  void update() {
    if (n % 500 == 499) { //every however many frames, start opening mouth (smiling)
      smile = 1;
    }
    if (h > MAX_H) { //when height is max, start closing mouth
      h = MAX_H;

      smile = 0;
    }
    if (n % 500 == 200) { //every however many frames, start opening mouth (smiling)
      smile = -1;
    }
    if (h < MIN_H) { //when mouth is normal height, stop closing eye
      h = MIN_H;

      smile = 0;
    }

    h += smile;
    n++;
  }

  void draw() {
    pushStyle(); //extends black box for more room for mouth
    fill(0);
    noStroke();
    rect(50, 660, 711, h);
    popStyle();
    
    pushStyle(); //mouth
    fill(c);
    noStroke();
    pushMatrix();
    translate(x, y);
    rect(0, 0, w, h);
    popMatrix();
    popStyle();
    
    pushStyle(); //tongue
    noStroke();
    fill(177, 47, 45);
    pushMatrix();
    translate(x, y);
    rect(w/2 - 40 , 0, 80, h);
    popMatrix();
    popStyle();
    
    pushStyle(); //bottom teeth
    fill(255);
    noStroke();
    pushMatrix();
    translate(x, 638 + h);
    rect(0, 0, w, 10);
    popMatrix();
    popStyle();
    
    pushStyle(); //top teeth (rect to cover mouth rect when it's not down)
    noStroke();
    fill(255);
    rect(223, 648, 350, 10);
    popStyle();
  }
}

