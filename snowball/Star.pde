class Star {
  int sz, cl;
  double x, y, an, sp;
  Star() {
    sz = 8;
    x = width/2;
    y= height/2;
    an= Math.random()*2*Math.PI;
    sp= Math.random()*10;
    cl=(int)(Math.random()*3);
  }
  void move() {
    //x+= (int) (Math.random()*11)-5;
    //y+= (int) (Math.random()*11)-5;
    x+=Math.cos(an)*sp;
    y+=Math.sin(an)*sp;
  }
  void show() {
    if (cl==0) {
      fill(gcl);
    } else if (cl==1) {
      fill(rcl);
    } else if (cl==2) {
      fill(wcl);
    }
    ellipse((float)x, (float) y, (float) sz, (float)sz);
  }
}
class Ship extends Star {
  PImage myImg;
  Ship() {
    myImg = img;
    sz = 100;
    sp = 4;
  }
  void show(){
    ellipse((float) x, (float) y, (float) sz, (float) sz);
    image(myImg, (float) x-sz/2, (float) y-sz/2, (float)sz, (float)sz);
  }
}
