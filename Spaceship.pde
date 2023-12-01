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
System.out.print(width);
 myCenterX= 500;
 myCenterY=500; //holds center coordinates   
myXspeed=myYspeed=0; //holds the speed of travel in the x and y directions   
myPointDirection=0;
    }
   public void hyperspace(){
     myCenterX=(int)(Math.random()*width);
     System.out.print(width);

  myCenterY=(int)(Math.random()*height);
  myXspeed=0;
  myYspeed=0;
  myPointDirection=Math.random()*360;

   }
  public double getDirection(){
  return myPointDirection;
  }
//  public double  getX(){
//return myCenterX;  }
  //public void  setcy(){
  //myCenterX=(Math.random()*height);
  //}
  public void  setspeedx(double x){
  myXspeed=x;
  }
  public void  setspeedy(double x){
  myYspeed=x;
  }
}
