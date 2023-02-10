/*================================
  When run, this program should display an image and
  modify it according to the following keyboard commands:

  `r`: reset back to the original image.
  `g`: grayScale the image
  `e`: perform edge detection on the image
================================*/

//To start leave these values alone.
//You may want to change the THRESHHOLD value after you
//run & test edge detection.
//You can use a different image if you'd like.
float THRESHHOLD = 15;
String PICFILE = "boats.jpg";
PImage art;

/*================================
  You should leave setup alone, with the exception
  of changing the size if not using the provided boats.jpg
  imgage.
================================*/
void setup() {
  size(519, 360);
  art = loadImage(PICFILE);
  art.loadPixels();

  //This section used to test some of the helper methods
  color c = color(150, 200, 25);
  //correct output: 125
  println("gray value of " + hex(c) + ": " + calculateGray(c));
  //correct output: 236787
  println("index of (123, 456): " + getIndexFromXY(123, 456, art));

  color[] n = getNeighborColors(art, 100, 100);
  //correct output: 0: FF66819F 1: FF65809E 2: FF65809D 3: FF65809E
  printColorArray(n);
  n = getNeighborColors(art, 0, 0);
  //correct output: 0: 00000000 1: FF63809E 2: 00000000 3: FF63809E
  printColorArray(n);
  n = getNeighborColors(art, art.width-1, art.height-1);
  //correct output: 0: FF36404A 1: 00000000 2: FF35424B 3: 00000000
  printColorArray(n);
}//setup

/*================================
  You should leave draw alone.
================================*/
void draw() {
  background(0);
  image(art, 0, 0);
}//draw


/*================================
  keyPressed
  `r`: reset back to the original image.
  `g`: grayScale the image
  `e`: perform edge detection on the image (this will be added tomorrow)
================================*/
void keyPressed() {
  if (key == 'g') {
    art = grayscale(art);
  }//grayscale
  if (key == 'e') {
    art = edgeDetect(art, THRESHHOLD);
  }//edge detect
  else if (key == 'r') {
    art = loadImage(PICFILE);
    art.loadPixels();
  }//reset image
}//keyPressed


/*================================
  Return the grayscale value of the parameter color.

  Note this method returns an int, not a color.
================================*/
int calculateGray(color c) {
  int g = 0;

  return g;
}//calculateGray


/*================================
  Return a new PImage based on the parameter but
  translated to grayScale.

  You should use calculateGray in this method.
================================*/
PImage grayscale(PImage img) {
  return img;
}//grayscale

/*================================
  Returns the correct pixel index for img based
  on the provided x and y values.
================================*/
int getIndexFromXY(int x, int y, PImage img) {
  int p = 0;

  return p;
}//getIndexFromXY


/*================================
  Returns an array of colors representing the 4
  "ordinal" (up, down, left, right) neighbors of the pixel
  at (x, y) in img.

  If a neighbor for a particular pixel does not exist, then
  the value for that color in the array should be 0 (not the
  color 0).
================================*/
color[] getNeighborColors(PImage img, int x, int y) {
  color[] neighborhood = new color[4];

  return neighborhood;
}//getNeighborColors

/*================================
  Returns the average difference between each of the
  colors in colors and c. Base the difference on the
  gray value.

  If the value of any of the colors is 0, then that
  means there is no valid neighbor color at that index.
  Do not include it in the difference calculation.
================================*/
float getDifference(color[] colors, color c) {
  float difference = 0;

  return difference;
}//getDifference

/*================================
  Return a new PImage based on the parameter but modified by edge detection.

  You must use the helper functions above.
  The edge detection algorithm:
  For every pixel
    Collect the colors of all neighboring pixels.
    Get the difference between the pixel's color and its neighbors.
    If the difference is above the threshold parameter, the pixel
    is an edge, set it to your edge color in the new image.
    Otherwise, set the pixel to your non-edge color in the
    new image.
================================*/
PImage edgeDetect(PImage img, float t) {

  return img;
}//edgeDetect




/*================================
  Used to help test getNeighborColors.
  You should not modify this method.
================================*/
void printColorArray(color[] cs) {
  for (int i=0; i<cs.length; i++) {
    print(i + ": " + hex(cs[i]) + " ");
  }//array loop
  println();
}//printColorArray
