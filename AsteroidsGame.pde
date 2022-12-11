//AsteroidsGame
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



//Floater.pde
class Floater //Do NOT modify the Floater class! Make changes in the Spaceship class 
{   
  protected int corners;  //the number of corners, a triangular floater has 3   
  protected int[] xCorners;   
  protected int[] yCorners;   
  protected int myColor;   
  protected double myCenterX, myCenterY; //holds center coordinates   
  protected double myXspeed, myYspeed; //holds the speed of travel in the x and y directions   
  protected double myPointDirection; //holds current direction the ship is pointing in degrees    

  //Accelerates the floater in the direction it is pointing (myPointDirection)   
  public void accelerate (double dAmount)   
  {          
    //convert the current direction the floater is pointing to radians    
    double dRadians =myPointDirection*(Math.PI/180);     
    //change coordinates of direction of travel    
    myXspeed += ((dAmount) * Math.cos(dRadians));    
    myYspeed += ((dAmount) * Math.sin(dRadians));       
  }   
  public void turn (double degreesOfRotation)   
  {     
    //rotates the floater by a given number of degrees    
    myPointDirection+=degreesOfRotation;   
  }   
  public void move ()   //move the floater in the current direction of travel
  {      
    //change the x and y coordinates by myXspeed and myYspeed       
    myCenterX += myXspeed;    
    myCenterY += myYspeed;     

    //wrap around screen    
    if(myCenterX >width)
    {     
      myCenterX = 0;    
    }    
    else if (myCenterX<0)
    {     
      myCenterX = width;    
    }    
    if(myCenterY >height)
    {    
      myCenterY = 0;    
    } 
    
    else if (myCenterY < 0)
    {     
      myCenterY = height;    
    }   
  }   
  public void show ()  //Draws the floater at the current position  
  {             
    fill(myColor);   
    stroke(myColor);    
    
    //translate the (x,y) center of the ship to the correct position
    translate((float)myCenterX, (float)myCenterY);

    //convert degrees to radians for rotate()     
    float dRadians = (float)(myPointDirection*(Math.PI/180));
    
    //rotate so that the polygon will be drawn in the correct direction
    rotate(dRadians);
    
    //draw the polygon
    beginShape();
    for (int nI = 0; nI < corners; nI++)
    {
      vertex(xCorners[nI], yCorners[nI]);
    }
    endShape(CLOSE);

    //"unrotate" and "untranslate" in reverse order
    rotate(-1*dRadians);
    translate(-1*(float)myCenterX, -1*(float)myCenterY);
  }   
} 

//Spaceship.pde
class Spaceship extends Floater  
{   
    public Spaceship(){
      corners = 3;
      xCorners = new int[]{-8,16,-8};
      yCorners = new int[]{-8,0,8};
      myCenterX = 300;
      myCenterY = 300;
      myXspeed = 0;
      myYspeed = 0;
      myPointDirection = 0;
      myColor = (255);
    }
}

//Star.pde
class Star //note that this class does NOT extend Floater
{
  private int myX, myY;
  public Star()
  {
    myX = (int)(Math.random()*600);
    myY = (int)(Math.random()*600);
  }
  public void show()
  {
    noStroke();
    fill(255);
    ellipse(myX,myY,3,3);
  }
}

