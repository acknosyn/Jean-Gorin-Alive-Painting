class Lung {
  float x, y;
  float size;
  color c;

  float targetSize = 700.0;

  float easingSize = 0.025;

  Lung(float x, float y, float size, color c) {
    this.x = x;
    this.y = y;
    this.size = size;
    this.c = c;
  }

  void update() {

    if (size > 690) { //when a max target size is reached
      targetSize = 300; //target size is made smaller so it aims for a smaller size
    } 
    else if (size < 310) { //when a min target size is reached
      targetSize = 700; //target size is made larger so it aims for a larger size
    }
    
    size += (targetSize - size) * easingSize;
  }

  void draw() {   
    pushStyle();
    fill(c);
    noStroke();

    pushMatrix();
    translate(x, y);
    ellipse(0, 0, size, size);
    popMatrix();

    popStyle();
  }
}

