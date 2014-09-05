// Flag Day Scheveningen. I tried to create an abstract representation of a large sail exhibition I attended last year. 
// Twelve quad structures form the boats that mask out the underlying rectangles outlining the elements of nature.
//
// Thanks for watching. Leon van Bokhorst

size(1140, 740);

int colb = #DDDDDD;
int col0 = #610094;
int col1 = #CDFF19;
int col2 = #8CB300;
int col5 = #9B16E0;
int sw1 = 3;

background(colb);
strokeWeight(sw1);

// kader
fill(colb);
strokeWeight(13);
stroke(#CFCFCF);
rect(160, 75, 802, 563);

//////////////////////////////////////

strokeWeight(sw1);
fill(col2);
stroke(col2);
rect(200, 523, 717, 36);

fill(col1);
stroke(col1);
rect(203, 485, 686, 32);

fill(#30E7F2);
stroke(#30E7F2);
rect(203, 168, 717, 42);

//////////////////////////////////////

fill(#BF8B26);
stroke(#BF8B26);
rect(203, 315, 680, 42);

fill(#734F0B);
stroke(#734F0B);
rect(203, 363, 700, 8);

//////////////////////////////////////

fill(col0);
stroke(colb);

quad(200, 200, 280, 200, 280, 110.0, 200, 280);
quad(360, 200, 440, 200, 440, 110.0, 360, 280);
quad(520, 200, 600, 200, 600, 110.0, 520, 280);
quad(680, 200, 760, 200, 760, 110.0, 680, 280);
quad(840, 200, 920, 200, 920, 110.0, 840, 280);

fill(col5);
quad(200, 360, 280, 360, 280, 198.0, 200, 440);
quad(360, 360, 440, 360, 440, 198.0, 360, 440);
quad(520, 360, 600, 360, 600, 198.0, 520, 440);
quad(680, 360, 760, 360, 760, 198.0, 680, 440);
quad(840, 360, 920, 360, 920, 198.0, 840, 440);

fill(col0);
quad(200, 520, 280, 520, 280, 286.0, 200, 600);
quad(360, 520, 440, 520, 440, 286.0, 360, 600);
quad(520, 520, 600, 520, 600, 286.0, 520, 600);
quad(680, 520, 760, 520, 760, 286.0, 680, 600);
quad(840, 520, 920, 520, 920, 286.0, 840, 600);
