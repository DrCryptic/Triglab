int theta = 0;



void setup() {
  size(900, 600);
  ellipseMode(RADIUS);
  background(0); //background color
}

void draw() {
  background(0); //background color
  fill(255, 255, 0);
  ellipse(width/2, height/2, 100, 100);
  fill(255, 255, 0);
  circle(width/2, height/2);
  theta++;
}

void circle(float a, float b) {
  fill(255, 0, 0);
  ellipse(a+200*cos(radians(theta)), b-200*sin(radians(theta)), 50, 50);
  ellipse(a-200*cos(radians(theta)), b+200*sin(radians(theta)), 50, 50);
  ellipse(a-200*cos(radians(theta)), b-200*sin(radians(theta)), 50, 50);
  ellipse(a+200*cos(radians(theta)), b+200*sin(radians(theta)), 50, 50);
}