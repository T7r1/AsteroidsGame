//your variable declarations here
Spaceship bob = new Spaceship();
Star [] bom=new Star [500];
ArrayList <Bullet> oob=new ArrayList <Bullet>();
ArrayList <Asteroid> boo=new ArrayList <Asteroid>();
boolean play=true;
boolean move, turnr, turnl =false;
int score=0;
int hp=100;
int hscore=0;
public void setup() 
{
  size(1000, 1000);
  for (int i=0; i<75; i++) {
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
if (score>hscore)
hscore=score;
  background(0);
  fill(255, 255, 0);

  rect(790, 10, hp*2, 30);
  fill(0);
  text(hp+"/100", (790*2+hp*2)/2-20, 30); 
  fill(255);
  if(play==true)
  text("Score: "+score, (820), 70);  
  text("High Score: "+hscore, (820), 85);  

  //Asteroid
  fill(255);
  for (int i=boo.size()-1; i>=0; i--) {
    boo.get(i).show();
    boo.get(i).move();
    //ship collision
    if (play==true){
    if (sqrt((float)(((boo.get(i).getcenx()-bob.getcenx()))*((boo.get(i).getcenx()-bob.getcenx()))+((boo.get(i).getceny()-bob.getceny()))*((boo.get(i).getceny()-bob.getceny()))))<12) {
      boo.remove(i);
      boo.add(new Asteroid());

      hp--;
      score++;
  //    System.out.println("HP:"+ hp);
    }
    //bullet collison
    for (int u=oob.size()-1; u>=0; u--) {
      if (sqrt((float)(((boo.get(i).getcenx()-oob.get(u).getcenx()))*((boo.get(i).getcenx()-oob.get(u).getcenx()))+((boo.get(i).getceny()-oob.get(u).getceny()))*((boo.get(i).getceny()-oob.get(u).getceny()))))<10) {
        oob.remove(u);
        boo.add(new Asteroid());
        score++;
      //  System.out.println("score: "+score);

        boo.remove(i);
      }

      // System.out.println(boo.size());
    }
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
  if (hp>0){
    play=true;
  //Spaceship
  bob.show();
  bob.move();

  //IFFFFFFFFFFFS


  if (move==true)
    bob.accelerate(.1);
  if (turnr==true)
    bob.turn(7);
  if (turnl==true)
    bob.turn(-7);
}else {
  play=false;
   fill(200,200,200,100);

 rect(0,0,1000,1000);
 fill(50,50,50);
 rect(400,450,200,100);
 fill(255);
 text("Game Over",500-30,475);
   text("Score: "+score, (500-20), 497);  

 fill(200,200,200);
 rect(461,507,78,26);
 fill(50,50,50);
  text("Retry",485,524);
  

}
  //your code here
}

void mousePressed() {
 
  if (play==true)
  oob.add(new Bullet(bob));
  else if((mouseX<=539&&mouseX>=461)&&(mouseY<533&&mouseY>=507)){
  hp=100;
  score=0;
  }
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

    //System.out.println(-bob.myPointDirection);
    //  System.out.println(bob.myYspeed);
    //          System.out.println(bob.myXspeed);
  } 
  if (key == 'a') {
    turnl=true;  
    //bob.setspeedx(Math.cos(-bob.getDirection()*(Math.PI/180))*5);
    //bob.setspeedy(-Math.sin(-bob.getDirection()*(Math.PI/180))*5);
    //System.out.println(-bob.myPointDirection);
    //     System.out.println(bob.myYspeed);
    //     System.out.println(bob.myXspeed);
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
