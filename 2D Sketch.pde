PShape fatur;
float angle = 0;
float posY = 0;
float posX = 0;
float scalfaturactor = 1.0;
boolean mirrorX = false;
boolean mirrorY = false;

void setup() {
  size(1000, 1000);
  fatur = createShape();
  fatur.beginShape();
  fatur.vertex(100, 900);
  fatur.vertex(100, 400);
  fatur.vertex(350, 400);
  fatur.vertex(350, 500);
  fatur.vertex(200, 500);
  fatur.vertex(200, 600);
  fatur.vertex(350, 600);
  fatur.vertex(350, 700);
  fatur.vertex(200, 700);
  fatur.vertex(200, 900);
  fatur.endShape(CLOSE);
}

void draw() {
  background(255);
  translate(width / 2 + posX, height / 2 + posY);
  
  rotate(radians(angle));
  
  scale(scalfaturactor);
  
  scale(mirrorX ? -1 : 1, mirrorY ? -1 : 1);
  
  shape(fatur, -200, -650);
}

void keyPressed() {
  if (key == 'W') {
    angle += 5;
  } else if (key == 'C') {
    angle -= 5;
  } else if (key == '<') {
    mirrorX = !mirrorX;
  } else if (key == '>') {
    mirrorY = !mirrorY;
  } else if (keyCode == UP) {
    posY -= 5;
  } else if (keyCode == DOWN) {
    posY += 5;
  } else if (keyCode == RIGHT) {
    posX += 5;
  } else if (keyCode == LEFT) {
    posX -= 5;
  } else if (key == '+') {
    scalfaturactor += 0.1;
  } else if (key == '-') {
    scalfaturactor -= 0.1;
  }
}
