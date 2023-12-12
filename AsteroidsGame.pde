//your variable declarations here
Spaceship bob = new Spaceship();
Star [] bom=new Star [500];
ArrayList <Bullet> oob=new ArrayList <Bullet>();
ArrayList <Asteroid> boo=new ArrayList <Asteroid>();

boolean move, turnr, turnl =false;
int score=0;
int hp=100;
public void setup() 
{
  size(1000, 1000);
  for (int i=0; i<100; i++) {
    boo.add(new Asteroid());
  }
  //for(int i=0;i<boo.size();i++)
  //  boo[i]=new Asteroid();
  for (int i=0; i<bom.length; i++)
    bom[i]=new Star();
  //   bob.show();
  //your code here
}
public void draw() 
{
  loop();

  background(0);
  fill(255, 255, 0);

  rect(790, 10, hp*2, 30);
  fill(0);
  text(hp+"/100", (790*2+hp*2)/2-20, 30);  

  //Asteroid
  fill(255);
  for (int i=boo.size()-1; i>=0; i--) {
    boo.get(i).show();
    boo.get(i).move();
    //ship collision
    if (sqrt((float)(((boo.get(i).getcenx()-bob.getcenx()))*((boo.get(i).getcenx()-bob.getcenx()))+((boo.get(i).getceny()-bob.getceny()))*((boo.get(i).getceny()-bob.getceny()))))<12) {
      boo.remove(i);
      boo.add(new Asteroid());

      hp--;
      //system.out.println("HP:"+ hp);
    }
    //bullet collison
    for (int u=oob.size()-1; u>=0; u--) {
      if (sqrt((float)(((boo.get(i).getcenx()-oob.get(u).getcenx()))*((boo.get(i).getcenx()-oob.get(u).getcenx()))+((boo.get(i).getceny()-oob.get(u).getceny()))*((boo.get(i).getceny()-oob.get(u).getceny()))))<10) {
        oob.remove(u);
        boo.add(new Asteroid());
        score++;
        //system.out.println("score: "+score);

        boo.remove(i);
      }

      // //system.out.println(boo.size());
    }
  }
  //if (boo.size()<100)

  //star
  for (int i=0; i<bom.length; i++)
    bom[i].show();
  //bullet
  for (int i=0; i<oob.size(); i++) {
    oob.get(i).show();
    oob.get(i).move();
    if (oob.get(i).getcenx()>=width||
      oob.get(i).getcenx()<=0||
      oob.get(i).getceny()>=height||
      oob.get(i).getceny()<=0) {
      oob.remove(i);
    }
  }
  //Spaceship
  bob.show();
  bob.move();

  //IFFFFFFFFFFFS


  if (move==true)
    bob.accelerate(.2);
  if (turnr==true)
    bob.turn(7);
  if (turnl==true)
    bob.turn(-7);

  //your code here
}
void mousePressed() {
 //
  oob.add(new Bullet(bob));
}
public void keyPressed() {
  if (key == ' ') {
    bob.hyperspace();

    //bob.setspeedx(0);
    //bob.setspeedy(0);
    //bob.setcx();
    //bob.setcy();
  }
  if (key == 'w') {
    move=true;
  }
  if (key == 'd') {
    turnr=true;  
    //bob.setspeedx(Math.cos(-bob.getDirection()*(Math.PI/180))*5);
    //bob.setspeedy(-Math.sin(-bob.getDirection()*(Math.PI/180))*5);

    ////system.out.println(-bob.myPointDirection);
    //  //system.out.println(bob.myYspeed);
    //          //system.out.println(bob.myXspeed);
  } 
  if (key == 'a') {
    turnl=true;  
    //bob.setspeedx(Math.cos(-bob.getDirection()*(Math.PI/180))*5);
    //bob.setspeedy(-Math.sin(-bob.getDirection()*(Math.PI/180))*5);
    ////system.out.println(-bob.myPointDirection);
    //     //system.out.println(bob.myYspeed);
    //     //system.out.println(bob.myXspeed);
  }
}

public void keyReleased() {
  if (key == 'w') {
    move=false;
  }
  if (key == 'd') {
    turnr=false;
  } 
  if (key == 'a') {
    turnl=false;
  }
}
