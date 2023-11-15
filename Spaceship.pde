class Spaceship extends Floater  
{   
    //your code here
    public Spaceship(){
       corners=3;  //the number of corners, a triangular floater has 3   
  xCorners=new int[corners];   
  yCorners=new int[corners];   
   xCorners[0]= -8;
    yCorners[0]= -8;
    xCorners[1]=16;
   yCorners[1]=0;
   xCorners[2]= -8;
    yCorners[2]= 8;
myColor=255;   
 myCenterX= myCenterY=250; //holds center coordinates   
myXspeed=myYspeed=0; //holds the speed of travel in the x and y directions   
myPointDirection=0;
    }
  public double getDirection(){
  return myPointDirection;
  }
  public void  setcx(){
  myCenterX=(int)(Math.random()*width);
  }
  public void  setcy(){
  myCenterX=(int)(Math.random()*height);
  }
  public void  setspeedx(double x){
  myXspeed=x;
  }
  public void  setspeedy(double x){
  myYspeed=x;
  }
}
