/*================================
  When run, this program should display an image and
  modify it according to the following keyboard commands:

  `r`: reset back to the original image.
  `g`: grayScale the image
  `e`: perform edge detection on the image (this will be added tomorrow)
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
  //should print 125
  println("gray value of " + hex(c) + ": " + calculateGray(c));
  //should print 236787
  println("index of (123, 456): " + getIndexFromXY(123, 456, art));

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
  colors in colors and c.

  If the value of any of the colors is 0, then that
  means there is no valid neighbor color at that index.
  Do not include it in the difference calculation.
================================*/
float getDifference(color[] colors, color c) {
  float difference = 0;

  return difference;
}//getDifference

PImage edgeDetect(PImage img, float t) {

  return img;
}//edgeDetect
