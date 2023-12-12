class Asteroid extends Floater  
{
  private int speed;
  public Asteroid(){
  corners=(int)(Math.random()*10)+6;  //the number of corners, a triangular floater has 3   
  xCorners=new int[corners];   
  yCorners=new int[corners];  
  for (int i=0;i<corners;i++){
   xCorners[i]=(int)(Math.cos(i*2*Math.PI/corners)*10);
   yCorners[i]=(int)(Math.sin(i*2*Math.PI/corners)*10);

  }
  //xCorners[0]= -8;
  //yCorners[0]= -8;
  //xCorners[1]=16;
  //yCorners[1]=0;
  //xCorners[2]= -8;
  //yCorners[2]= 8;
  myColor=255;   
  myCenterX= Math.random()*width;
  myCenterY=Math.random()*height; //holds center coordinates   
  myXspeed=Math.random()*8-4;
  myYspeed=Math.random()*8-4; //holds the speed of travel in the x and y directions   
  myPointDirection=Math.random()*360;
  speed=(int)(Math.random()*2)-1;
  }
  public void move(){
    super.move();
    myPointDirection+=speed;
  }
}
