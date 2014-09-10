// This work is based on a beautiful poem by Jane Tyson Clement - "There are things..."
// It is a slowly evolving space with a continuous rhythmic sequence of the last verse.
// Each sentence is clearly stated, before it gently fades away.
//

String[] poem = {
  "It is foolish to have wisdom", 
  "and folly to be blind", 
  "to see and take and question", 
  "must nourish any mind", 
  "reserve a quiet judgement", 
  "until the heart is old", 
  "when fewer words are needed", 
  "before the tale is told"
};

color[] colors = {
  #757575, 
  #363636, 
  #B5B5B5, 
  #292929, 
  #9C9C9C, 
  #88A2D8, 
  #2E374A, 
  #485672, 
  #7085B2
};

color bgColor = #666666;
color textColor = #EAEAE8;
int counter = 0;
int lineNumber = 0;
int fontSizeMax = 68;
int fontSizeMin = 42;
int numLines = 8;
int numColors = 9;

void setup() {
  size(1280, 720);
  background(bgColor);
  text("", -1, -1); // kludge to hide glitchy loading of font
}

void draw() {
  int speed = 30;

  for (int i = 0; i < speed; i++) {
    drawBox();
    counter++;
  }

  if (counter > 300 * speed) {  
    drawNextLine();
    counter = 0;
  }
}

void drawNextLine() {
  textSize(random(fontSizeMin, fontSizeMax));
  textAlign(CENTER);
  fill(textColor);
  
  text(poem[lineNumber], width / 2 + random(- width / 6, width / 6), random(height - 200) + 100);
  incLineNumber();
}

void incLineNumber() {
  lineNumber++;

  if (lineNumber >= numLines) {
    lineNumber = 0;
  }
}

void drawBox()
{
  noFill();
  strokeWeight(random(0.1));

  float x1 = random(width / 2);
  float y1 = random(height);
  float x2 = random(width);
  float y2 = (height);

  stroke(colors[int(random(numColors))]);
  rect(int(x1 - 100), int(y1 - 100), int(x2), int(y2) - (height / 2));
}

