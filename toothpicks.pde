import java.util.*;

LinkedList<Point> available = new LinkedList<Point>();

int length = 31;
Toothpick p;
int level = 1;

void setup() {
  background(51);
  stroke(255);
  size(600,600);
  p = new Toothpick(0,0,true);
}

void draw() {
  translate(width/2,height/2);
  scale(0.5);
  p.woohoo(level);
  p.show();
  noLoop();
}

void keyPressed() {
  if (key == ' ') {
    level++;
    redraw();
  }
  
}
