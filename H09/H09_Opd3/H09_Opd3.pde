int mijnGetal;

void setup(){
  mijnGetal = Gemiddelde(15, 25);
  println(mijnGetal);
}

void draw(){
  
}

int Gemiddelde(int getal, int getal2){
  int gemiddelde = (getal + getal2) / 2;
  return gemiddelde;
}
