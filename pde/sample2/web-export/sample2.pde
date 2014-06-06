int fps = 50;
int radius = 50;
int cycle = 5;
int speed = 5;

int degree = 360 / (cycle * fps);

void setup() {
  size(200, 200);
  frameRate(fps);
  colorMode(HSB, 360, 100, 100);
}

void draw() {
  
  float rad = radians(degree * frameCount);
  float x = width/2 + radius * cos(rad);
  float y = height/2 + radius * sin(rad);
  
  color c = color(frameCount % 360, 100, 80);
  
  float k = sin(radians(speed * frameCount % 90));
  
  smooth();
  noStroke();
  background(360, 0, 100);
  
  //wave
  fill(c, 50-50*k);
  ellipse(x, y, width*k, width*k);
  
  //
  fill(c);
  ellipse(x, y, 20, 20);
}


