float theta;



void setup() {
  size(900, 600);
  ellipseMode(RADIUS);
  background(0); //background color
}

void draw() {
   background(0); //background color
  
  ellipse(width/2, height/2,50,50);
}

void circle(){
  
  ellipse(a+200 cos(radians(theta)), b+200 sin(radians(theta)) );
  }