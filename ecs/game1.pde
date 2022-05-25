int x, y, score;

void setup() {
  size(500, 500);
  background(200);
  x = 100;
  y = 100;
  score = 0;
}

void draw() {
  background(200);
  score();
  fill(0, 200, 0);
  ellipse(x, y, 20, 20);
  if (keyPressed) {
    if (key == 'w' || key == 'W') {
      y-=10;
    } else if (key == 's' || key == 'S') {
      y+=10;
    } else if (key == 'a' || key == 'A') {
      x+=10;
    } else if (key == 'd' || key == 'D') {
      x-=10;
      // x +=10;
    }
  }
}
void keyPressed() {
  if (key == CODED) {
    if (keyCode == UP) {
      y -=10;
    } else if (keyCode == DOWN) {
      y+=10;
    } else if (keyCode == LEFT) {
      x-=10;
    } else if (keyCode == RIGHT) {
      x+=10;
    }
  }
}

void score() {
  fill(128, 128);
  noStroke();
  rect(0, 0, width, 20);
  fill(0);
  text("Score:", 10, 16);
}

void target() {
}
