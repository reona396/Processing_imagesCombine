String fileName = "image";
String path = "./images/";

int imageWidth = 250;
int imageHeight;

int margin = 10;

int imageNum = 5;

int originImageWidth;
int originImageHeight;

int canvasWidth;
int canvasHeight;

PImage images[] = new PImage[imageNum];

void setup() {
  for (int i = 0; i < imageNum; i++) {
    images[i] = loadImage(path + fileName + nf(i, 2) + ".png");
  }

  originImageWidth = images[0].width;
  originImageHeight = images[0].height;

  imageHeight = originImageHeight * imageWidth / originImageWidth;

  canvasWidth = imageWidth;
  canvasHeight = (imageHeight + margin) * (imageNum-1) + imageHeight;

  surface.setSize(canvasWidth, canvasHeight);

  noLoop();
}

void draw() {
  background(255);

  for (int i = 0; i < imageNum; i++) {
    image(images[i], 0, (imageHeight+margin) * i, imageWidth, imageHeight);
  }

  save(fileName + "_combine.png");

  exit();
}