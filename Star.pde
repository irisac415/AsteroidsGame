class Star //note that this class does NOT extend Floater
{
  private int myX,myY;
  private int mySize;
  private int myColor;
  private int myOpacity;
  
  public Star(){
    myColor = color((int)(Math.random()*10)+245,(int)(Math.random()*10)+245,220);
    myOpacity= (int)(Math.random()*120)+100;
    myX = (int)(Math.random()*500);
    myY = (int)(Math.random()*500);
    mySize = (int)(Math.random()*5)+1;
  }
  
  public void show(){
    fill(myColor,myOpacity);
    noStroke();
    ellipse(myX,myY,mySize,mySize);
    
  }
  
}
