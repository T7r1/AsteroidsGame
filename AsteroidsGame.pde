//your variable declarations here
Spaceship bob = new Spaceship();
Star [] bom=new Star [500];
public void setup() 
{

  size(500,500);
  for (int i=0;i<bom.length;i++)
    bom[i]=new Star();
 //   bob.show();
  //your code here
}
public void draw() 
{
    loop();

  background(0);
  for (int i=0;i<500;i++)
  bom[i].show();
     bob.show();
     bob.move();

  //your code here
}
public void keyPressed(){
  if(key == ' '){
     bob.setspeedx(0);
     bob.setspeedy(0);
     bob.setcx();
     bob.setcy();
  }
  if(key == 'w'){
    bob.accelerate(1);
  }
  if(key == 'd'){
     bob.turn(5);
     //bob.setspeedx(Math.cos(-bob.getDirection()*(Math.PI/180))*5);
     //bob.setspeedy(-Math.sin(-bob.getDirection()*(Math.PI/180))*5);

System.out.println(-bob.myPointDirection);
  System.out.println(bob.myYspeed);
          System.out.println(bob.myXspeed);
} 
  if(key == 'a'){
     bob.turn(-5);
     //bob.setspeedx(Math.cos(-bob.getDirection()*(Math.PI/180))*5);
     //bob.setspeedy(-Math.sin(-bob.getDirection()*(Math.PI/180))*5);
     //System.out.println(-bob.myPointDirection);
     //     System.out.println(bob.myYspeed);
     //     System.out.println(bob.myXspeed);


  }
}
