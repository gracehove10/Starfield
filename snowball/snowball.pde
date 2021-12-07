PImage img;
ArrayList <Star> sList = new ArrayList <Star> ();
int sNum = 500;
int gcl, rcl,wcl;
void setup() {
   gcl = color(0,255,0);
    rcl = color(225,0,0);
    wcl = color(255,255,255);
  size(500, 500);
  img =loadImage ("santa.jpeg");
  for (int i = 0; i<sNum; i++) {
    sList.add(new Star());
  }
  sList.add((int)(Math.random()*sNum),new Ship());
 sList.add((int)(Math.random()*sNum),new Ship());
 sList.add((int)(Math.random()*sNum),new Ship());
}

void draw() {
  background(0);
  for (Star s : sList) {
    s.move();
    s.show();
  }
}
