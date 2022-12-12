//AsteroidsGame.pde
Star[] spaceBoi = new Star[200];
Spaceship bob = new Spaceship();
ArrayList <Asteroid> rocks = new ArrayList <Asteroid>();

public void setup()
{
  size(800, 800);
  for (int i = 0; i < spaceBoi.length; i++) {
    spaceBoi[i] = new Star();
  }
  for (int i = 0; i < 20; i++) {
    rocks.add (new Asteroid());
  }
}
public void draw()
{
  background(0);
  for (int i = 0; i < spaceBoi.length; i++)
  {
    spaceBoi[i].show();
  }
  for (int i = 0; i < rocks.size(); i++) {
    rocks.get(i).move();
    rocks.get(i).show();
    float myDist = dist((float)rocks.get(i).getX(), (float)rocks.get(i).getY(), (float)bob.getX(), (float)bob.getY());
    if (myDist < 30) {
      rocks.remove(i);
    }
  }
  bob.move();
  bob.show();
}

public void keyPressed()
{
  if (key == 'w')
  {
    bob.accelerate(0.3);
  }
  if (key == 'd')
  {
    bob.turn(8.0);
  }
  if (key == 'a')
  {
    bob.turn(-8.0);
  }
  if (key == 's')
  {
    bob.accelerate(-0.3);
  }

  if (key == 'h')
  {
    bob.hyperspace(); //OK!
  }
}

