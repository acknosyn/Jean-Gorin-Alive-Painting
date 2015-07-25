Lung lung;
Heart beatingHeart;
Eye left;
Mouth mouth;
Rect blueRect;
Rect yellowRect;
Rect blackRect;
Rect white2Rect;
Rect white3Rect;
Rect white4Rect;

void setup() {
  size(800, 800);

  lung = new Lung(400, 370, 500, color (0));
  beatingHeart = new Heart(480, 268, 270, 260, color (202, 0, 14));
  left = new Eye(296, 313, 26, 26, color (255));
  mouth = new Mouth(223, 648, 350, 10, color (195, 119, 108));
  blueRect = new Rect(39, 420, 262, 78, color (34, 64, 150));
  yellowRect = new Rect(337, 170, 8, 400, color (255, 217, 20));
  blackRect = new Rect(50, 635, 711, 48, color (0));
  white2Rect = new Rect(322, 268, 6, 325, color (255));
  white3Rect = new Rect(129, 468, 539, 8, color (255));
  white4Rect = new Rect(183, 511, 297, 6, color (255));

  textSize(32);
}

void draw() {
  background(255);

  lung.update();
  beatingHeart.update();
  left.update();
  mouth.update();

  lung.draw();
  beatingHeart.draw();
  left.draw();  
  blueRect.draw();
  blackRect.draw();
  mouth.draw();
  white2Rect.draw();
  white3Rect.draw();
  white4Rect.draw();
  yellowRect.draw();
}

