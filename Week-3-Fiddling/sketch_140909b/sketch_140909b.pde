// Global variables
color black = #000000;
color[] palette = {#1FA8BF, #15707F, #2AE0FF, #0A3840, #26C9E5};
float x;

// setup()
void setup() {
  // size and background color
  size(800, 600);

  // local variable
  background(black);
}


// draw()
void draw() {
  x+=1;
  int c = (int)random(5);

  // continous drawing
  noFill();
  strokeWeight(random(20));
  stroke(palette[c]);
  rect(x, random(height), random(250), random(250));

  println(x);
  x = constrain(x, 0, width + 20);
}

