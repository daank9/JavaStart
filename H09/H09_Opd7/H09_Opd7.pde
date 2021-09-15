

void setup(){
mijnMethode();
}

void draw(){
  
}

void mijnMethode(){
  


int BLOCKX = 20;
int BLOCKY = 20;

fill(255,0,0);
for (int i = 0; i <20; i++){
  for (int j = 0; j < 20; j++){
    if ((i + j + 1) % 2 == 0){
    
    }
    rect(i * BLOCKX, j * BLOCKY, 20, 20);
  }
}
}
