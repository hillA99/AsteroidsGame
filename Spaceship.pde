class Spaceship extends Floater {
  public Spaceship() {
    corners = 4;
    xCorners = new int[]{-8, 16, -8, -2};
    yCorners = new int[]{-8, 0, 8, 0};
    myColor = 255;
    myCenterX = 400;
    myCenterY = 400;
    myXspeed = 0;
    myYspeed = 0;
    myPointDirection = 0;
  }

  public void hyperspace() {
    myXspeed = 0;
    myYspeed = 0;
    myCenterX = (int)(Math.random()*800);
    myCenterY = (int)(Math.random()*800);
    myPointDirection = (float)(Math.random()*500);
  }
  public void setY(int y) {
    myCenterY = myCenterY + y;
  }
  public void setX(int x) {
    myCenterX = myCenterX + x;
  }
  public double getY() {
    return myCenterY;
  }
  public double getX() {
    return myCenterX;
  }
}


