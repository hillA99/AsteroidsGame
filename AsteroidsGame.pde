Star[] spaceBoi = new Star[200];//your variable declarations here
Spaceship bob = new Spaceship();
public void setup() 
{
  size(800, 800);
  for (int i = 0; i < spaceBoi.length; i++)
  {
    spaceBoi[i] = new Star();
  }
}
public void draw() 
{
  background(0);
  for (int i = 0; i < spaceBoi.length; i++)
  {
    spaceBoi[i].show();
  }
  bob.move();
  bob.show();
}

public void keyPressed()
{
  if(key == 'w')
  {
    bob.accelerate(0.5);
  }
  if(key == 'd')
  {
    bob.turn(8.0);
  }
  if(key == 'a')
  {
    bob.turn(-8.0);
  }
  if(key == 's')
  {
    bob.accelerate(-0.5);
  }
  
  if(key == 'h')
  {
   bob.hyperspace(); //OK!
  }
}
