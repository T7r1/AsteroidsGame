//your variable declarations here
Spaceship bob = new Spaceship();
Star [] bom=new Star [500];
ArrayList <Asteroid> boo=new ArrayList <Asteroid>();

boolean move, turnr, turnl =false;

public void setup() 
{
  size(1000,1000);
  for (int i=0;i<100;i++){
  boo.add(new Asteroid());
}
  //for(int i=0;i<boo.size();i++)
  //  boo[i]=new Asteroid();
  for (int i=0;i<bom.length;i++)
    bom[i]=new Star();
 //   bob.show();
  //your code here
}
public void draw() 
{
    loop();

  background(0);
    for(int i=0;i<boo.size();i++){
boo.get(i).show();
boo.get(i).move();
if (sqrt((float)(((boo.get(i).getX()-bob.getX()))*((boo.get(i).getX()-bob.getX()))+((boo.get(i).getY()-bob.getY()))*((boo.get(i).getY()-bob.getY()))))<10){
  boo.remove(i);
//  System.out.println(boo.size());

}
    }
  for (int i=0;i<bom.length;i++)
  bom[i].show();
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
public void keyPressed(){
  if(key == ' '){
      bob.hyperspace();

     //bob.setspeedx(0);
     //bob.setspeedy(0);
     //bob.setcx();
     //bob.setcy();
  }
  if(key == 'w'){
move=true;  
  }
  if(key == 'd'){
turnr=true;  
     //bob.setspeedx(Math.cos(-bob.getDirection()*(Math.PI/180))*5);
     //bob.setspeedy(-Math.sin(-bob.getDirection()*(Math.PI/180))*5);

//System.out.println(-bob.myPointDirection);
//  System.out.println(bob.myYspeed);
//          System.out.println(bob.myXspeed);
} 
  if(key == 'a'){
turnl=true;  
     //bob.setspeedx(Math.cos(-bob.getDirection()*(Math.PI/180))*5);
     //bob.setspeedy(-Math.sin(-bob.getDirection()*(Math.PI/180))*5);
     //System.out.println(-bob.myPointDirection);
     //     System.out.println(bob.myYspeed);
     //     System.out.println(bob.myXspeed);


  }
}
public void keyReleased(){
  if(key == 'w'){
move=false;  
}
  if(key == 'd'){
turnr=false;  
} 
  if(key == 'a'){
turnl=false;
}
}
