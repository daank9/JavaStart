size(150,150);
background(255,255,255);

int sizeC = 100;

for(int i = 0; i < 5; i++){
  ellipse(180 - sizeC/2, 75, sizeC,sizeC);
  sizeC-=10;
}
