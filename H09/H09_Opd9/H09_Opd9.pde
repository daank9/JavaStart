void setup(){
  Punten(35,50,30,50, 25,50,50,5,80,50);
}
void draw(){
}

void Punten(int s1, int s2, int s3, int s4, int d1, int d2, int d3, int d4, int d5, int d6){
  fill(148,37,37);
  rect(s1,s2,s3,s4);
  fill(0,255,0);
  triangle(d1,d2,d3,d4,d5,d6);
}
