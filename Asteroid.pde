class Asteroid extends Floater{
  private double astRotationSpeed;
  public Asteroid(){
    astRotationSpeed = (Math.random() * 11) - 5;
    corners = 6;
    xCorners = new int[]{-25, 14, 26, 12, -22, -10};
    yCorners = new int[]{-14, -16, 0, 20, 16, 0};
    myColor = color(0,0,0);
    myStrokeColor = color(255,255,255);
    myCenterX = (int)(Math.random() * 750);
    myCenterY =(int)(Math.random() * 750);
    myXspeed = (int)(Math.random() * 7) - 3;
    myYspeed = (int)(Math.random() * 7) - 3;
    myPointDirection = 0;
  }
  
  public double getY(){
    return myCenterY;
  }
  
  public double getX(){
    return myCenterX;
  }
  
  public void move(){
    turn(astRotationSpeed);
    super.move();
  }
} 
