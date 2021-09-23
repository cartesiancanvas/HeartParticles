class atom {
  float inc=0.05;
  float r;
  float theta;
  float delta;
  float af = random(0.5, 2);
  float sw= random(1, 3);

  atom(float scaling) {
    r=scaling;
    theta=random(2*PI);
    delta=0.01;
  }
  void display() {
    float x=r*16*pow(sin(theta), 3);
    float y=-r*(13*cos(theta)-5*cos(2*theta)-2*cos(3*theta)-cos(4*theta));
    strokeWeight(sw);
    fill(255,af*90);
    textSize(10);
    text('h', x, y);
    text('a', x+inc, y+inc);
    text('p', x+3*inc, y+3*inc);
    text('p', x+4*inc, y+4*inc);
    text('y', x+5*inc, y+5*inc);
  }
  void update() {
    theta+=delta;
  }
}
