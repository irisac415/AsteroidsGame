//your variable declarations here
public void setup() 
{
  size(500,500);
  background(0,0,40);
  for(int i = 0; i < arr.length; i ++){
    arr[i] = new Star();
  }
}


Star[] arr = new Star[175];
Spaceship Sally = new Spaceship();

public void draw() 
{
  background(0,0,40);
  Sally.move();
  Sally.show();
  
  for(int i = 0; i < arr.length; i ++)
    arr[i].show(); 
}


public void keyPressed(){
  if(key == ' ')
    Sally.hyperspace();
  if(keyCode =='F')
    Sally.turn(-10);
  if(keyCode =='J')
    Sally.turn(10);
  if(keyCode == UP)
    Sally.accelerate(1.5);
  if(keyCode == DOWN)
    Sally.accelerate(-1.5);
}
