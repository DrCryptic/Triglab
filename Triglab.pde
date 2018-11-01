int theta = 0;
int moonTheta = 0;
float earth1X;
float earth1Y;
float earth2X;
float earth2Y;
float earth3X;
float earth3Y;
float earth4X;
float earth4Y;


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
  moons();
  theta++;
  moonTheta--;
}

void circle(float a, float b) {
  fill(255, 0, 0);
  earth1X =a+200*cos(radians(theta));
  earth1Y =b-200*sin(radians(theta));
  earth2X =a-200*cos(radians(theta));
  earth2Y =b+200*sin(radians(theta));
  earth3X =a-200*cos(radians(theta));
  earth3Y =b-200*sin(radians(theta));
  earth4X =a+200*cos(radians(theta));
  earth4Y =b+200*sin(radians(theta));
  ellipse(earth1X, earth1Y, 50, 50);
  ellipse(earth2X, earth2Y, 50, 50);
  ellipse(earth3X, earth3Y, 50, 50);
  ellipse(earth4X, earth4Y, 50, 50);
}
void moons(){
  ellipse(earth1X+100*cos(radians(moonTheta)), earth1Y-100*sin(radians(moonTheta)), 10, 10);
  ellipse(earth2X-100*cos(radians(moonTheta)), earth2Y+100*sin(radians(moonTheta)), 10, 10);
  ellipse(earth3X-100*cos(radians(moonTheta)), earth3Y-100*sin(radians(moonTheta)), 10, 10);
  ellipse(earth4X+100*cos(radians(moonTheta)), earth4Y+100*sin(radians(moonTheta)), 10, 10);
}