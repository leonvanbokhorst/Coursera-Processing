// drawing points, lines, ellipses and arcs

// setup
size(600, 400);
background(#E8E8E8);
smooth();

// point
stroke(#FF0011);
strokeWeight(5);
point(100, 100);

// line
stroke(#1E18EA);
strokeWeight(3);
line(100, 300, 500, 100);

// ellipse
fill(#18C2EA);
ellipse(500, 300, 100, 100);

// arc
noFill();
arc(400, 300, 100, 100, 3.14, 6.28);
