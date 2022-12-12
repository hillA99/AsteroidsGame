Star[] spaceBoi = new Star[200];
Spaceship bob = new Spaceship();
ArrayList <Bullet> shots = new ArrayList<Bullet>();

ArrayList <Asteroid> rocks = new ArrayList <Asteroid>();

boolean wPress, aPress, sPress, dPress, spacePress, hPress;

public void setup()
{
  size(800, 800);
  for (int i = 0; i < spaceBoi.length; i++) {
    spaceBoi[i] = new Star();
  }
  for (int i = 0; i < 30; i++) {
    rocks.add (new Asteroid());
  }
  wPress = aPress = sPress = dPress = hPress = spacePress = false;
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
    for (int j = 0; j < shots.size(); j++) {
      shots.get(j).move();
      shots.get(j).show();
      float dd = dist((float)shots.get(j).getX(), (float)shots.get(j).getY(), (float)rocks.get(i).getX(), (float)rocks.get(i).getY());
      if (dd < 50) {
        shots.remove(j);
        rocks.remove(i);
        break;
      }
    }
  }
  
  if(wPress)
      bob.accelerate(0.3);
  if(aPress)
      bob.turn(-4.0);
  if(dPress)
      bob.turn(4.0);
  if(sPress)
      bob.accelerate(-0.3);
  if(hPress)
      bob.hyperspace();
  if(spacePress)
      shots.add(new Bullet(bob));
    
  bob.move();
  bob.show();

}

public void keyPressed()
{
  if (key == 'w')
  {
    wPress = true;
  }
  if (key == 'd')
  {
    dPress = true;
  }
  if (key == 'a')
  {
    aPress = true;
  }
  if (key == 's')
  {
    sPress = true;
  }

  if (key == 'h')
  {
    hPress = true;
  }
  if (key == ' ') {
    spacePress = true;
  }
}
public void keyReleased() {
  if (key == 'w')
  {
    wPress = false;
  }
  if (key == 'd')
  {
    dPress = false;
  }
  if (key == 'a')
  {
    aPress = false;
  }
  if (key == 's')
  {
    sPress = false;
  }

  if (key == 'h')
  {
    hPress = false;
  }
  if (key == ' ') {
    spacePress = false;
  }
}

