void setup()
{
  size(500, 500);
  background(255);
}
void draw()
{
  for (int x = 120; x < 400; x = x+100)
  {
    for (int y = 100; y < 400; y = y+100)
    {
      Dice bob = new Dice(x, y);
      bob.show();
    }
  }
}
void mousePressed()
{
  redraw();
}
class Dice
{
  int myX, myY;
  Dice(int x, int y)
  {
    myX = x;
    myY = y;
    roll();
  }
  void roll()
  {
  }
  void show()
  {
    noStroke();
    fill(255, 209, 220);
    rect(myX, myY, 50, 50);
    fill(255, 133, 162);
    //ellipse(myX+25,myY+25,10,10); //one dot
    //ellipse (myX+35,myY+35,10,10); //2 dots, bottom
    //ellipse(myX +15,myY+15,10,10); //2 dots, top
  }
}
