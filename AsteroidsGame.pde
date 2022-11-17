Star[] nightSky = new Star[500];
Spaceship bob = new Spaceship();
boolean turnLeft, turnRight, moveForward, moveBackward;
public void setup() 
{
  size(750,750);
  for(int i = 0; i < nightSky.length; i++){
    nightSky[i] = new Star();
  }
}
public void draw(){
  background(0);
  for(int i = 0; i < nightSky.length; i++){
   nightSky[i].show();  
  }
  if(turnRight == true){
    bob.turn(5);
  } else {
    bob.turn(0);
  }
  if(turnLeft == true){
    bob.turn(-5);
  } else {
    bob.turn(0);
  }
  if(moveForward == true){
    bob.accelerate(0.1);
  } else {
    bob.accelerate(0);
  }
  if(moveBackward == true){
    bob.accelerate(-0.1);
  } else {
    bob.accelerate(0);
  }
  bob.move();
  bob.show();
}

public void keyPressed(){
 if(key == 'r'){
   bob.hyperspace();
 }
 if(key == 'd'){
   turnRight = true;
 }
 if(key == 'a'){
   turnLeft = true;
 }
 if(key == 'w'){
   moveForward = true;
 }
 if(key == 's'){
   moveBackward = true;
 }
}

public void keyReleased(){
  if(key == 'd'){
    turnRight = false;
  }
  if(key == 'a'){
    turnLeft = false;
  }
  if(key == 'w'){
    moveForward = false;
  }
  if(key == 's'){
    moveBackward = false;
  }
}
