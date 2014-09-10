int x = 25;
int y = 25;
float bgcolor = #081121;
color[] palette = {
  #F1F3F5, #245D70, #F1E5B4, #F58906, #964A02
};

void setup() {
  size(880, 600);
  background(bgcolor);
  noLoop();
}

void draw() {
  for (int x = 25; x < width; x += 50) {
    for (int y = 25; y < height; y += 50) {
      float r = random(1, 5);
      strokeWeight(10);
      stroke(palette[int(r)]);
      noFill();
      ellipse(x, y, 40, 40);
    }
  }
}

