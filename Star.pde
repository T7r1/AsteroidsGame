class Star{ //note that this class does NOT extend Floater
private int x,y;
public Star(){
  x=(int)(Math.random()*500);
  y=(int)(Math.random()*500);
  //your code here
}
public void show(){
  noStroke();
  fill(245,245,255);
  ellipse(x,y,3,3);
}
}
