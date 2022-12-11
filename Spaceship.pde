Spaceship.pde
class Spaceship extends Floater {  
  public Spaceship() {  
    corners = 4;
    xCorners = new int[]{-8, 16, -8, -2};
    yCorners = new int[]{-8, 0, 8, 0};
    myColor = 255;
    myCenterX = 250;
    myCenterY = 250;
    myXspeed = 2;
    myYspeed = 2;
    myPointDirection = 0;
  }
}

