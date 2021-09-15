size(200,200);
background(255,255,255);
size(150,150);



int BLOCKX = 10;
int BLOCKY = 10;


for (int i = 0; i <10; i++){
  for (int j = 0; j < 10; j++){
    if ((i + j + 1) % 2 == 0){
      fill(255,255,255);
    }else{
      fill (0,0,0);
    }
    rect(i * BLOCKX+20, j * BLOCKY+20, 10, 10);
  }
}
