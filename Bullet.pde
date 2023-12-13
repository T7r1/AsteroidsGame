class Bullet extends Floater{
  public Bullet(Spaceship ship){
    //corners=30;
 //for (int i=0;i<corners;i++){
 //  xCorners[i]=(int)(Math.cos(i*2*Math.PI/corners)*10);
 //  yCorners[i]=(int)(Math.sin(i*2*Math.PI/corners)*10);      
 // }
myColor=255;   
 myCenterX= ship.getcenx();
 myCenterY=ship.getceny(); //holds center coordinates   
myXspeed=ship.getspx();
myYspeed=ship.getspy(); //holds the speed of travel in the x and y directions   
myPointDirection=ship.getDirection();
  //System.out.print(myPointDirection);
  accelerate(6);
  
  
}
 public void show(){
   fill(255,0,0);
   ellipse((float)myCenterX,(float)myCenterY,10,10);
}
}
