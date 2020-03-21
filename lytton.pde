// earth
color lightGreen = color(85, 255, 85);
color darkGreen = color(0, 170, 0);

// traffic lights
color clrTrafRed = color(66, 0, 0);
color clrTrafGreen = color(0, 66, 0);

// where to place city block BG tiles on the screen
int bgTopY = -52;
int bgMidY = 40;
int bgBotY = 132;
int bg0X = -60;
int bg1X = 56;
int bg2X = 172;
int bg3X = 288;

PImage bg;
PImage blockBg;


/****************************************************************** METHODS */

void DrawTopTile(int x, int y) {
  String name = "botBlock0" + (int)random(4) + ".png";
  PImage img = loadImage(name);
  
  push();
  translate(0, img.height);
  scale(1, -1);
  image(img, x, -y);
  pop();
  
  return;
}


void DrawLeftTile(int x, int y) {
  String name = "sideBlock0" + (int)random(6) + ".png";
  PImage img = loadImage(name);
  image(img, x, y);
  
  return;
}


void DrawMiddleTile(int x, int y) {
  String name = "midBlock0" + (int)random(6) + ".png";
  PImage img = loadImage(name);
  image(img, x, y);
  
  return;
}


void DrawRightTile(int x, int y) {
  String name = "sideBlock0" + (int)random(6) + ".png";
  PImage img = loadImage(name);
  
  push();
  translate(img.width, 0);
  scale(-1, 1);
  image(img, -x, y);
  pop();
  
  return;
}


void DrawBottomTile(int x, int y) {
  String name = "botBlock0" + (int)random(4) + ".png";
  PImage img = loadImage(name);
  image(img, x, y);
  
  return;
}


void DrawBackgroundTile(PImage img, int x, int y) {
  color clr = lightGreen;
  if(50 < random(100)) {
    clr = darkGreen;
  }
  
  tint(clr);
  image(img, x, y);
  tint(color(255));
  
  return;
}


/****************************************************************** MAIN PROCESSING */

void setup() {
  size(320, 168);
  bg = loadImage("bgEmpty.png");
  blockBg = loadImage("blockBgWhite.png");
  
  //noLoop();
  frameRate(1);
  
  return;
}


void draw() {
  image(bg, 0, 0);
  
  // draw the background "earth" layers
  DrawTopTile(bg0X, bgTopY);
  DrawTopTile(bg1X, bgTopY);
  DrawTopTile(bg2X, bgTopY);
  DrawTopTile(bg3X, bgTopY);
  
  DrawLeftTile(bg0X, bgMidY);
  DrawMiddleTile(bg1X, bgMidY);
  DrawMiddleTile(bg2X, bgMidY);
  DrawRightTile(bg3X, bgMidY);
  
  DrawBottomTile(bg0X, bgBotY);
  DrawBottomTile(bg1X, bgBotY);
  DrawBottomTile(bg2X, bgBotY);
  DrawBottomTile(bg3X, bgBotY);
  
  return;
}
