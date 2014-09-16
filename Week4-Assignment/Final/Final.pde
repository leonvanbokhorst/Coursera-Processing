// KALEIDOSCOPE DRAWINGBOARD
// s1
// s2

////////////////////////////////////////////////////////
//
// KEY FUNCTIONS:
//   - Press S to save image
//   - Press C to clear the drawing
//   - Press R to switch to a second color palette
//   - Press and hold E to use the mouse as an eraser
//
/////////////////////////////////////////////////////////


// Global variables
int colorIndex = 0;
float baseObjectSize = 12;
float objectSize = baseObjectSize;
int maxObjectSize = 33; 
int counter = 0;
int maxCounter = 100;
boolean eraserMode = false;
color bgColor = #666666;
float sizeFactor = 24;
int colorChoice = 0;


// Palettes
color[] colors1 = {
  #FF9900, 
  #FF6600, 
  #990000, 
  #996633, 
  #CC9966, 
  #5C0000, 
  #7D3200, 
  #875100, 
  #5C3D1F, 
  #5E472F
};

color[] colors2 = {
  #333333, 
  #ffffff,
  #666666, 
  #996633, 
  #000000, 
  #dddddd, 
  #cccccc, 
  #666666, 
  #5C3D1F, 
  #111111
};

color[][] colors = {colors1, colors2};


void setup() {
  size(1280, 720);
  background(bgColor);
  initObjectSize();
  strokeWeight(3);
}


void draw() {
}


void keyPressed() {
  if (key == 's' || key == 'S') {
    saveCurrentFrame();
  } else if (key == 'c' || key == 'C') {
    clearDrawing();
  } else if (key == 'e' || key == 'E') {
    setEraserMode(true);
    objectSize = maxObjectSize;
  }  else if (key == 'r' || key == 'R') {
    setColors();
  }
}


void keyReleased() {
  if (key == 'e' || key == 'E') {
    setEraserMode(false);
    objectSize = baseObjectSize;
  }
}


// mouse input
void mousePressed() {
  // mouseX, mouseY
}


void mouseDragged() {
  if (!eraserMode) {
    noFill();
    stroke(colors[colorChoice][nextIndex()]);
  } else {
    noStroke();
    fill(bgColor);
  }

  for(int i=0; i < 12; i++) {
    float centerpoint = objectSize / sizeFactor * i / 1.1;
    strokeWeight(.1 * i);
  
    rect(mouseX - centerpoint, mouseY - centerpoint, objectSize, objectSize);
    rect(width - mouseX - centerpoint, height - mouseY - centerpoint, objectSize, objectSize);
    rect(width - mouseX - centerpoint, mouseY - centerpoint, objectSize, objectSize);
    rect(mouseX - centerpoint, height - mouseY - centerpoint, objectSize, objectSize);
  }

  setObjectSize();
}


void setColors()
{
  if(colorChoice == 0)
    colorChoice = 1;
  else
    colorChoice = 0;
}

 
void mouseReleased() {
  objectSize = baseObjectSize;
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
  counter++;

  if (counter < maxCounter) {
    if (objectSize <= maxObjectSize) {
      objectSize += .01;
    } 
  } else {
    counter = 0;
  }
}


// Erase the drawing
void clearDrawing() {
  background(#666666);
}


void setEraserMode(boolean value) {
  eraserMode = value;
}


void initObjectSize(){
  float objectSize = baseObjectSize;
}

