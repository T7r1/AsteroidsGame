Star[] nightSky = new Star[500];
Spaceship bob = new Spaceship();
ArrayList <Asteroid> dwayne = new ArrayList <Asteroid>();
ArrayList <Bullet> shot = new ArrayList <Bullet>();
boolean turnLeft, turnRight, moveForward, moveBackward;
public void setup() 
{
  size(750,750);
  for(int i = 0; i < nightSky.length; i++){
    nightSky[i] = new Star();
  }
  for(int i = 0; i < 20; i++){
    dwayne.add(0, new Asteroid());
  }
}
public void draw(){
  background(0);
  for(int i = 0; i < nightSky.length; i++){
   nightSky[i].show();  
  }
  for(int i = 0; i < dwayne.size(); i++){
   dwayne.get(i).move();
   dwayne.get(i).show();
   float dShip = dist((float)bob.getX(), (float)bob.getY(), (float)dwayne.get(i).getX(), (float)dwayne.get(i).getY());
   if(dShip < 40){
     dwayne.remove(i);
   }
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
  for(int i = 0; i < shot.size(); i++){
    shot.get(i).move();
    shot.get(i).show();
  }
  for(int i = 0; i < shot.size(); i++){
    for(int j = 0; j < dwayne.size(); j++){
      float dBullet = dist((float)shot.get(i).getX(), (float)shot.get(i).getY(), (float)dwayne.get(j).getX(), (float)dwayne.get(j).getY());
      if(dBullet < 75){
        shot.remove(i);
        dwayne.remove(j);
        break;
      }
    }
  }
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
 if(key == ' '){
   shot.add(new Bullet(bob));
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
