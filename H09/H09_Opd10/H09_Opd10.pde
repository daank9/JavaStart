void setup(){
  Punten(35,50,30,50, 25,50,50,5,80,50, 15, 25, 45, 55, 5, 15, 35, 45, 30, 40, 60, 70, 100);
}
void draw(){
}

void Punten(int s1, int s2, int s3, int s4, int d1, int d2, int d3, int d4, int d5, int d6, int ss1, int ss2, int ss3, int ss4, int dd1, int dd2, int dd3, int dd4, int a1, int a2, int a3, int a4, int p1){
  fill(148,37,37);
  rect(ss1,s2,s3,s4);
  fill(0,255,0);
  triangle(dd1,d2,a1,d4,d5,d6);
  
  fill(148,37,37);
  rect(ss2,s2,s3,s4);
  fill(0,255,0);
  triangle(dd2,d2,a2,d4,d5,d6);
  
  
  fill(148,37,37);
  rect(s1,s2,s3,s4);
  fill(0,255,0);
  triangle(d1,d2,d3,d4,d5,d6);
  
  fill(148,37,37);
  rect(ss3,s2,s3,s4);
  fill(0,255,0);
  triangle(dd3,d2,a3,d4,d5,d6);
  
  fill(148,37,37);
  rect(ss4,s2,s3,s4);
  fill(0,255,0);
  triangle(dd4  ,d2,a4,d4,p1,d6);
}
