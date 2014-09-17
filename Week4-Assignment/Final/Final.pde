////////////////////////////////////////////////////////
// SYNCHRONOUS DRAWINGBOARD
// For this assignment I created a synchronous drawing 
// board mirroring everything you draw. Find beauty in 
// the symmetry, like watching through a kaleidoscope.

////////////////////////////////////////////////////////
//
// KEY FUNCTIONS:
//   - Press S to save image
//   - Press C to clear the drawing
//   - Press R to switch to the next color palette
//   - Press and hold E to use the mouse as an eraser
//
/////////////////////////////////////////////////////////


// Global variables
int colorIndex = 0;
float objectSize = 1;
int maxObjectSize = 48; 
int maxCounter = 12;
boolean eraserMode = false;
color bgColor = #666666;
float sizeFactor = 32;
int colorChoice = 1;


// Palettes
color[] colors1 = { #FF9900, #FF6600, #990000, #996633, #CC9966, 
  #5C0000, #7D3200, #875100, #5C3D1F, #5E472F };

color[] colors2 = { #333333, #ffffff, #666666, #996633, #000000, 
  #dddddd, #cccccc, #666666, #5C3D1F, #111111};

color[][] colors = { colors1, colors2 };


void setup() {
  size(1280, 720);
  background(bgColor);
  strokeWeight(3);
}


void draw() {
  // only draw when mouse is pressed
}


void keyPressed() {
  if (key == 's' || key == 'S') {
    saveCurrentFrame();
  } else if (key == 'c' || key == 'C') {
    clearDrawing();
  } else if (key == 'e' || key == 'E') {
    setEraserMode(true);
    objectSize = maxObjectSize;
  } else if (key == 'r' || key == 'R') {
    setColors();
  }
}


void keyReleased() {
  if (key == 'e' || key == 'E') {
    setEraserMode(false);
  }
}


void mouseDragged() {
  if (!eraserMode) {
    noFill();
    stroke(colors[colorChoice][nextIndex()]);
  } else {
    noStroke();
    fill(bgColor);
  }

  for (int i=0; i < 9; i++) {
    float centerpoint = objectSize / sizeFactor * i / 1.1;
    strokeWeight(.05 * i);

    ellipse(mouseX - centerpoint, mouseY - centerpoint, objectSize, objectSize);
    ellipse(width - mouseX - centerpoint, height - mouseY - centerpoint, objectSize, objectSize);
    ellipse(width - mouseX - centerpoint, mouseY - centerpoint, objectSize, objectSize);
    ellipse(mouseX - centerpoint, height - mouseY - centerpoint, objectSize, objectSize);
  }

  setObjectSize();
}


void setColors()
{
  if (colorChoice == 0)
    colorChoice = 1;
  else
    colorChoice = 0;
}


// Save image
void saveCurrentFrame() {
  saveFrame();
}


// Gets the next index for the pallete
int nextIndex() {
  colorIndex++;

  if (colorIndex >= colors[0].length) {
    colorIndex = 0;
  }

  return colorIndex;
}


// Gradualy increasing the object size
void setObjectSize() {
  objectSize = random(maxObjectSize);
}


// Erase the drawing
void clearDrawing() {
  background(#666666);
}


void setEraserMode(boolean value) {
  eraserMode = value;
}



