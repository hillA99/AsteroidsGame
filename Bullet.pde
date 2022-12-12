class Bullet extends Floater {
  public Bullet(Spaceship theShip) {
    myCenterX = theShip.getX();
    myCenterY = theShip.getY();
    //myXspeed = theShip.getXspeed();
    //myYspeed = theShip.getYspeed();
    myPointDirection = theShip.getPointDirection();
    accelerate(1);
  }
  public void move() {
    myCenterX += myXspeed;
    myCenterY += myYspeed;
  }
  public void show() {
    noStroke();
    fill(255,0,0);
    ellipse((float)myCenterX, (float)myCenterY, 7, 7);
  }
    public double getX() {
    return myCenterX;
  }
  public double getY() {
    return myCenterY;
  }
}
