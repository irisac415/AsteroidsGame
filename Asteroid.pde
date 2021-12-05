class Asteroid extends Floater{
  private double rotSpeed;
  public Asteroid(){
    corners = 6;
    xCorners = new int[]{-11,7,13,6,-11,-17};   
    yCorners = new int[]{-8,-7,0,10,8,0};  
    myColor = 255;
    myCenterX = (int)(Math.random()*480)+10;
    myCenterY = (int)(Math.random()*480) + 10;
    myXspeed = (Math.random()*2);
    myYspeed = (Math.random()*2);
    rotSpeed = (int)(Math.random()*20)-10;
    myPointDirection = (int)(Math.random()*360);
  }
    public void move ()   //move the floater in the current direction of travel
    { 
      turn(rotSpeed);
      super.move();
    }
    public void show ()  //Draws the floater at the current position  
    {
      fill(0,0,40);
      stroke(myColor);
      
    //translate the (x,y) center of the ship to the correct position
      translate((float)myCenterX,(float)myCenterY);
      
    //convert degrees to radians for rotate()     
       double dRadians = myPointDirection*(Math.PI/180);
       
    //rotate so that the polygon will be drawn in the correct direction
      rotate((float)dRadians);
      
    //draw the polygon
      beginShape();
      for(int nI = 0; nI < corners; nI++)
        vertex(xCorners[nI],yCorners[nI]);
      endShape(CLOSE);
      
    //"unrotate" and "untranslate" in reverse order
      rotate((float)(-1*dRadians));
      translate(-1*(float)myCenterX,-1*(float)myCenterY);

   
    }
  }
