int seconden;

int tijd;

boolean racing = true;

void setup(){
  size(500,500);
}



void draw(){
  background(255,255,255);
  
  
  if(racing){
  seconden = millis()/1000;
  racing = true;
  
  }
  tijd = 0 + seconden;
  ;
  fill(0,0,0);
  text("Seconds: " + tijd, 200,200);
}


void keyPressed(){
  if(keyCode == 32){
    racing = false;
    
  }
}
