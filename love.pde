
void setup() {
  fullScreen();
  noStroke();
	background(#262526);
}

void draw() {
  background(#2f3640,.5);
  translate(width/2, height/2 - 50);
  fill(#8e44ad, 255);
  for (float angle = 0; angle < 180; angle += 0.2) {
    for (float q = 1; q < 2.2; q += .2) {
      float a = q*180;
      float t = angle+frameCount*2.5+a;
      float x = 20*pow(sin(radians(t)), 3);
      float y = -17*cos(radians(t)) + 5*cos(radians(2*t)) + 2*cos(radians(3*t)) + cos(radians(4*t));
      float s = cos(radians(angle))*q*7;
      ellipse(x*q*8, y*q*8, s, s);
    }
  }
}
