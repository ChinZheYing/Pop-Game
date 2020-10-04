int numberofballs = 20;
Ball[] ball = new Ball[numberofballs];
int ballsleft = numberofballs;
int starttime = millis();
int totaltime = 0;
int timecounted = 0;

void setup(){
  size(500,500);
  for(int i = 0;i < numberofballs;i++)ball[i] = new Ball();
  for(int i = 0;i < numberofballs;i++)ball[i].spawn();
}

void draw(){
  background(0);
  if(ballsleft > 0){
    for(int i = 0;i < numberofballs;i++)ball[i].move();
  }
  else{
   if(timecounted == 0){
     totaltime = millis() - starttime;
     timecounted = 1;
   }
   textSize(20);
   text("Game Over",200,220); 
   text(totaltime/1000 + "s",230,240); 
   
  }
}

void mousePressed(){
  for(int i = 0;i < numberofballs;i++){
    if(mouseX > (ball[i].x - (ball[i].diameter/2)) && mouseX < (ball[i].x + (ball[i].diameter/2)) && mouseY > (ball[i].y - (ball[i].diameter/2)) && mouseY < (ball[i].y + (ball[i].diameter/2))){
      ball[i].state = -1;
      ballsleft--;
    }
  }
}