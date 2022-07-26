class rain {
  float x=random(width);
  float y=random(-400, -50);
  float z= random(0, 20);
  float size=map(z, 0, 20, 10, 20);
  float yvel=map(z, 0, 20, 1, 20);
  float weight=map(z, 0, 20, 0.5, 2);
  float inc=1;
  void rainfall() {
    y+=yvel;
    float gravity=map(z, 0, 20, 0.1, 0.2);
    yvel+=gravity;
  }
  void display() {
    strokeWeight(weight);
    textSize(size);
    text('h', x, y);
    text('e', x, y+50*inc);
    text('l', x, y+100*inc);
    text('l', x, y+150*inc);
    text('o', x, y+200*inc);

  }
  void edges() {
    if (y>height) {
      y=random(-800, -300);
      yvel=map(z, 0, 20, 3, 8);
    }
  }
}
