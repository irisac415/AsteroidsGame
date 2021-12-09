//your variable declarations here
public void setup() 
{
  size(500,500);
  background(0,0,40);
  noFill();
  strokeWeight(5);
  stroke(255);
  rect(0,0,500,500);
  for(int i = 0; i < arr.length; i ++){
    arr[i] = new Star();
  }
  for(int j = 0; j < 51; j ++){
    andy.add(new Asteroid());
  }
  Sally.add(new Spaceship(260,260));
  Sally.add(new Spaceship(240,240));
  Sally.add(new Spaceship(240,280));
  Sally.add(new Spaceship(220,220));
  Sally.add(new Spaceship(220,300));
}

Star[] arr = new Star[175];
ArrayList <Spaceship> Sally = new ArrayList <Spaceship>();

//Spaceship Sally = new Spaceship();
ArrayList <Asteroid> andy = new ArrayList <Asteroid>();
public void draw() 
{
  background(0,0,40);
  for(int i = 0; i < Sally.size(); i ++){
    Sally.get(i).show();
    Sally.get(i).move();
  }
  for(int i = 0; i < arr.length; i ++)
    arr[i].show(); 
  
  for(int j = 0; j < andy.size(); j ++){
    andy.get(j).show();
    andy.get(j).move();
    float d = dist((float)andy.get(j).getmyAX(),(float)andy.get(j).getmyAY(),(float)Sally.get(0).getmyCX(),(float)Sally.get(0).getmyCY());
      if(d < 12)
        andy.remove(j);
  }
  if(andy.size() == 0){
    fill(0,0,0,255);
    rect(-10,-10,510,510);
  }
}

public void keyPressed(){
  if(key == ' '){
    Sally.get(0).hyperspace();
    Sally.set(1,new Spaceship(Sally.get(0).getmyCX() - 20,Sally.get(0).getmyCY() - 20));
    Sally.set(2,new Spaceship(Sally.get(0).getmyCX() - 20,Sally.get(0).getmyCY() + 20));
    Sally.set(3,new Spaceship(Sally.get(0).getmyCX() - 40,Sally.get(0).getmyCY() - 40));
    Sally.set(4,new Spaceship(Sally.get(0).getmyCX() - 40,Sally.get(0).getmyCY() + 40));
  }
  if(keyCode ==LEFT)
  for(int i = 0; i < Sally.size(); i ++)
    Sally.get(i).turn(-10);
  if(keyCode ==RIGHT)
  for(int i = 0; i < Sally.size(); i ++)
    Sally.get(i).turn(10);
  if(keyCode == UP)
  for(int i = 0; i < Sally.size(); i ++)
    Sally.get(i).accelerate(1.5);
  if(keyCode == DOWN)
  for(int i = 0; i < Sally.size(); i ++)
    Sally.get(i).accelerate(-1.5);
}
