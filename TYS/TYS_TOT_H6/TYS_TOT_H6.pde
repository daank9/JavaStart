size(500,500);

background(255,255,255);



float gewicht = 121;

float lengte = 1.64;

int leeftijd = 17;

float keerlengte = lengte * lengte;


float BMI = gewicht / keerlengte;

BMI *= 10;
BMI = (int) BMI;
BMI /= 10;

rect(60,200,100,25);

rect(330, 200,100,25);

rect(195,100,100,25);

fill(0,0,0);
text("Gewicht = " + gewicht + "KG", 60,220);

text("Lengte = " + lengte + "M", 335, 220);

text("Leeftijd = " + leeftijd + "Jaar", 196, 120);



if(leeftijd < 70){
  if(BMI < 18.5){
    fill(255,255,0);
  }else if(BMI < 25){
    fill(0,255,0);
  }else if(BMI < 30){
    fill(255,255,0);
  }else{
    fill(255,0,0);
  }
}else{
  if(BMI < 22){
    fill(255,255,0);
  }else if(BMI < 28){
    fill(0,255,0);
  }else if(BMI < 30){
    fill(255,255,0);
  }else{
    fill(255,0,0);
  }
}
  

textSize(60);


text("BMI: " + BMI, 150, 400);
