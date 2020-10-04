class Ball{
  float diameter = random(15,25);
  float x = random(0+diameter,500-diameter);
  float y = random(0+diameter,500-diameter);
  float deltaX = random(-2,2);
  float deltaY = random(-2,2);
  float state;
  
  void spawn(){
    ellipse(x,y,20,20);
  }
  
  void move(){
    if(state != -1){
    x = x + deltaX;
    y = y + deltaY;
    if((x >= 500-diameter) || (x <= 0+diameter)){
      deltaX = deltaX*(-1) + random(-0.5,0.6);
      x = x + deltaX;
    }
    if((y >= 500-diameter) || (y <= 0+diameter)){
      deltaY = deltaY*(-1) + random(-0.5,0.5);
      y = y + deltaY;
    }
    }
    if(state == -1){
     x = 1000;
     y = 1000;
    }
    ellipse(x,y,diameter,diameter);
  } 
  
}