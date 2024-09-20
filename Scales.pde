void setup() {
  size(400,400);
}

void draw() {
  for(int y = 40; y<400; y +=160) {
    for(int x = 0; x<400; x +=80) {
      Tshell(x,y);
    }
  }
  for(int y = -40; y<400; y+=160) {
    for(int x = -40; x<400; x+=80) {
       Tshell(x,y);
    }
  }
}

void Tshell(int x, int y) {
  stroke(30,52,1);
  //tortoise shell
  fill(49,83,0);
  beginShape();
    vertex(x,y);
    vertex(x+40,y-40);
    vertex(x+80,y);
    vertex(x+80,y+40);
    vertex(x+40,y+80);
    vertex(x,y+40);
  endShape(CLOSE);
  
  //gradient
  noStroke();
  int diam = 0;
  float r = 0;
  noFill();
  while(diam<77) {
    stroke(r+149,r+183,r+100);
    ellipse(x+40,y+20,diam,diam+10);
    diam++;
    if(r>-100) {
    r-=1.8;
    }
  }
}
