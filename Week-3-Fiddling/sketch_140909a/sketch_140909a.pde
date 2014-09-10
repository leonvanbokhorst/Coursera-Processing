size(800, 600);
background(#000000);

float s = random(72);

PFont font = loadFont("ACaslonPro-BoldItalic-48.vlw");

textFont(font);
fill(#BF19CB);
textSize(s);
textAlign(CENTER);
text("Hello World! " + s, width/2, height/2);


