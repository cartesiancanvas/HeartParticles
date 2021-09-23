float r_min=15;
float scaling;
float size_diff=0.01;
int n=1000;
int m=100;
atom[] atoms;
rain[] drops;
void setup() {
  fullScreen();
  colorMode(HSB);
  atoms =new atom[n];
  for (int i=0; i<atoms.length; i++) {
    scaling=r_min+i*size_diff;
    atoms[i]=new atom(scaling);
  }
  drops=new rain[m];
  for (int j=0; j<drops.length; j++) {
    drops[j]=new rain();
  }
}
void draw() {
  background(0);
  pushMatrix();
  translate(width/2, height/2);
  for (int i=0; i<atoms.length; i++) {
    atoms[i].display();
    atoms[i].update();
  }
  popMatrix();
  for (int j=0; j<drops.length; j++) {
    drops[j].rainfall();
    drops[j].display();
    drops[j].edges();
  }
}
