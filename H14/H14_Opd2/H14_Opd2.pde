
PImage img;
int x;
int y;

void setup(){
  size(1000,1000);
  img = loadImage("images/Fotopdracht.jpg");

}

void draw(){

image(img,x,y, width, height);

}
