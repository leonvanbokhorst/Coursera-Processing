// drawing points, lines, ellipses and arcs

// setup
size(600, 400);
background(#E8E8E8);

// rect
stroke(#B5EA18);
strokeWeight(5);
fill(#E3EACE);
rect(100, 200, 50, 50);
rect(200, 200, 50, 50);
rect(300, 200, 50, 50);
rect(400, 200, 50, 50);

// quad
stroke(#F29027);
strokeWeight(3);
fill(#938271);
quad(38, 31, 86, 20,69, 63, 30, 76);

// triangle
stroke(#041B5D);
strokeWeight(2);
fill(#6CADC6);
triangle(150, 195, 178, 140, 206, 195);

// polygon
beginShape();
vertex(230, 220);
vertex(285, 220);
vertex(385, 240);
vertex(285, 275);
vertex(230, 275);
endShape();
