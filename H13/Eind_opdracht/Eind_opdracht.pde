Ball ball;
Pong pongLeft;
Pong pongRight;

int scoreLeft = 0;
int scoreRight = 0;


void setup(){
  size(800,800);
  ball = new Ball(width/2, height/2, 50);
  ball.speedX = 5;
  ball.speedY = random(-3,3);
  pongLeft = new Pong(15, height/2, 30,200);
  pongRight = new Pong(width-15, height/2, 30,200);
  

}


void draw(){
  background(0,0,0); 
  pongLeft.move();
  pongLeft.display();
  pongRight.move();
  pongRight.display();
  ball.move();
  ball.display();
   if (ball.right() > width){
  ball.speedX = -ball.speedX;
  }
  
  if (ball.left() < 0) {
    ball.speedX = -ball.speedX;
  }
  
  if (ball.bottom() > height) {
    ball.speedY = -ball.speedY;
  }
  
  if (ball.top() < 0) {
    ball.speedY = -ball.speedY;
  }
  
  if (pongLeft.bottom() > height) {
    pongLeft.y = height-pongLeft.h/2;
  }
  
  if (pongLeft.top() < 0) {
    pongLeft.y = pongLeft.h/2;
  }
  
  if (pongRight.bottom() >  height) {
    pongRight.y = height-pongRight.h/2;
    
  }
  
  if (pongRight.top() < 0) { 
    pongRight.y = pongRight.h/2;
  }
  
  if ( ball.left() < pongLeft.right() && ball.y > pongLeft.top() && ball.y < pongLeft.bottom()){
    ball.speedX = -ball.speedX;
    ball.speedY = map(ball.y - pongLeft.y, -pongLeft.h/2, pongLeft.h/2, -10, 10);
  }
  
  if ( ball.right() > pongRight.left() && ball.y > pongRight.top() && ball.y < pongRight.bottom()) {
    ball.speedX = -ball.speedX;
    ball.speedY = map(ball.y - pongRight.y, -pongRight.h/2, pongRight.h/2, 0,10);
  }
  
  if (ball.right() > width) {
    scoreLeft = scoreLeft + 1;
    ball.x = width/2;
    ball.y = height/2;
  }
  if (ball.left() < 0) {
    scoreRight = scoreRight + 1;
    ball.x = width/2;
    ball.y = height/2;
  }
  
  
 


  
  textSize(40);
  textAlign(CENTER);
  
  text(scoreRight, width/2+30,30);
  text(scoreLeft,width/2-30,30);
  
  
}

void keyPressed(){
  if(keyCode == UP){
    pongRight.speedY=-7;
  }
  if(keyCode == DOWN){
    pongRight.speedY=7;
  }
  if(key == 'w'){
    pongLeft.speedY= -7;
  }
  if(key == 's'){
    pongLeft.speedY=7;
  }
  
}

void keyReleased(){
  if(keyCode == UP){
    pongRight.speedY=0;
  }
  if(keyCode == DOWN){
    pongRight.speedY=0;
  }
  if(key == 'w'){
    pongLeft.speedY=0;
  }
  if(key == 's'){
    pongLeft.speedY=0;
  }
}
  


class Ball { 
  float x;
  float y;
  float speedX;
  float speedY;
  float diameter;
  color c;
  
  Ball(float tempX, float tempY, float tempDiameter) {
    x = tempX;
    y = tempY;
    diameter = tempDiameter;
    speedX = 0;
    speedY = 0;
    c = (225); 
  }

  void move() {
    y = y + speedY;
    x = x + speedX;
  }
  
  void display() {
    fill(c);
    ellipse(x,y,diameter,diameter);
  }

  float left(){
    return x-diameter/2;
  }
  float right(){
    return x+diameter/2;
  }
  float top(){
    return y-diameter/2;
  }
  float bottom(){
    return y+diameter/2;
  }
}


class Pong{
  float x;
  float y;
  float w;
  float h;
  float speedY;
  float speedX;
  color c;
  
  Pong(float tempX, float tempY, float tempW, float tempH){
    x = tempX;
    y = tempY;
    w = tempW;
    h = tempH;
    speedY = 0;
    speedX = 0;
    c=(255);
    
  }
  
  void move(){
    y += speedY;
    x += speedX;
  }
  
  void display(){
    fill(c);
    rect(x-w/2,y-h/2,w,h);
  }
  
  float left(){
    return x-w/2;
  }
  float right(){
    return x+w/2;
  }
  float top(){
    return y-h/2;
  }
  float bottom(){
    return y+h/2;
  }
}
   
  
