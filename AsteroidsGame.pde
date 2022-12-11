Star[] spaceBoi = new Star[200];//your variable declarations here
public void setup() 
{
  size(500, 500);
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
}
