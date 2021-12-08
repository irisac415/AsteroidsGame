class Spaceship extends Floater  
{   
  public Spaceship(double a, double b){
    corners = 6; //the number of corners, a triangular floater has 3   
    //xCorners = new int[]{-8,16,-8,-2};   
    //yCorners = new int[]{-8,0,8,0};   
    xCorners = new int[]{-10,2,16,2,-10,-5};   
    yCorners = new int[]{-9,6,0,-6,9,0};  
    myColor = color(245,215,215);   
    myCenterX = a;
    myCenterY = b; //holds center coordinates   
    myXspeed = 0;
    myYspeed = 0; //holds the speed of travel in the x and y directions   
    myPointDirection = 0; //holds current direction the ship is pointing in degrees    
}
public void hyperspace(){
   myXspeed = 0;
   myYspeed = 0;
   myCenterX = (int)(Math.random()*420)+40;
   myCenterY = (int)(Math.random()*420)+40;
   myPointDirection = 0;
}
public double getmyCX(){
  return myCenterX;
}
public double getmyCY(){
  return myCenterY;
}
public double getPT(){
  return myPointDirection;
}
}
