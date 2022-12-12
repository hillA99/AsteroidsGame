Star[] ster = new Star[200];
Spaceship falcon = new Spaceship();
ArrayList <Bullet> shots = new ArrayList<Bullet>();

ArrayList <Asteroid> rocks = new ArrayList <Asteroid>();

public void setup()
{
  size(800, 800);
  for (int i = 0; i < ster.length; i++) {
    ster[i] = new Star();
  }
  for (int i = 0; i < 20; i++) {
    rocks.add (new Asteroid());
  }
}
public void draw()
{
  background(0);
  for (int i = 0; i < ster.length; i++)
  {
    ster[i].show();
  }
  for (int i = 0; i < rocks.size(); i++) {
    rocks.get(i).move();
    rocks.get(i).show();
    float myDist = dist((float)rocks.get(i).getX(), (float)rocks.get(i).getY(), (float)falcon.getX(), (float)falcon.getY());
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
  falcon.move();
  falcon.show();
}

public void keyPressed()
{
  if (key == 'w')
  {
    falcon.accelerate(0.3);
  }
  if (key == 'd')
  {
    falcon.turn(8.0);
  }
  if (key == 'a')
  {
    falcon.turn(-8.0);
  }
  if (key == 's')
  {
    falcon.accelerate(-0.3);
  }

  if (key == 'h')
  {
    falcon.hyperspace();
  }
  if (key == ' ') {
    shots.add(new Bullet(falcon));
  }
}
