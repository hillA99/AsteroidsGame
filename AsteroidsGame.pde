Star [] nightSky = new Star[500];
Spaceship Falcon = new Spaceship();

public void setup() 
{
  size(600,600);
  for(int i = 0; i <nightSky.length; i++)
  {
    nightSky[i] = new Star();
  }
}
public void draw() 
{
  background(0);
  for(int i = 0; i <nightSky.length; i++)
   {
    nightSky[i].show();
  }
  Falcon.show();
  Falcon.move();
  }
  public void keyPressed () {
 if(key == 'h') {
  Falcon.myXspeed = 0;
  Falcon.myYspeed = 0;
  Falcon.myCenterX = (int)(Math.random()*500);
  Falcon.myCenterY = (int)(Math.random()*500);
 }
 if(key == 'w') {
   Falcon.accelerate(0.25);
 }
 if(key == 's') {
   Falcon.accelerate(-0.25);
 }
 if(key == 'd') {
   Falcon.turn(15);
 }
 if(key == 'a') {
   Falcon.turn(-15);
 }
}



