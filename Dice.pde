void setup()
{
  size(500, 500);
  noLoop();
}
void draw()
{
  background(255);
  int total = 0;
  for (int x = 120; x < 400; x += 100)
  {
    for (int y = 100; y < 400; y += 100)
    {
      Die bob = new Die(x, y);
      bob.toss();
      bob.show();
      total = total + bob.numDie;
    }
  }
  text("total: "+ total, 400, 400);
}
void mousePressed()
{
  redraw();
}
class Die
{
  int myX, myY, numDie;
  Die(int x, int y)
  {
    myX = x;
    myY = y;
    toss();
  }
  void toss()
  {
    numDie = (int)(Math.random()*6)+1;
  }
  void show()
  {
    noStroke();
    fill(255, 209, 220);
    rect(myX, myY, 50, 50);
    fill(255, 133, 162);
    if (numDie == 1) {
      ellipse(myX+25, myY+25, 10, 10); //one dot
    } else if (numDie ==2) {
      ellipse (myX+35, myY+35, 10, 10); //2 dots, bottom
      ellipse(myX +15, myY+15, 10, 10); //2 dots, top
    } else if (numDie == 3) {
      ellipse(myX+12.5, myY+12.5, 10, 10); //3 dots, top
      ellipse(myX+25, myY+25, 10, 10); //3 dots, middle
      ellipse(myX+37.5, myY+37.5, 10, 10); //3 dots, bottom
    } else if (numDie ==4) {
      ellipse(myX+15, myY+15, 10, 10); //4 dots, top left
      ellipse(myX+15, myY+35, 10, 10); //4 dots, top right
      ellipse(myX+35, myY+15, 10, 10); //4 dots, bottom left
      ellipse(myX+35, myY+35, 10, 10); //4 dots, bottom right
    } else if (numDie ==5) {
      ellipse(myX+15, myY+15, 10, 10); //5 dots, top left
      ellipse(myX+15, myY+35, 10, 10); //5 dots, top right
      ellipse(myX+25, myY+25, 10, 10); //5 dots, center
      ellipse(myX+35, myY+15, 10, 10); //5 dots, bottom left
      ellipse(myX+35, myY+35, 10, 10); //5 dots, bottom right
    } else if (numDie == 6) {
      ellipse(myX+16, myY+10, 10, 10); //6 dots, top left
      ellipse(myX+34, myY+10, 10, 10); //6 dots, top right
      ellipse(myX+16, myY+25, 10, 10); //6 dots, mid left
      ellipse(myX+34, myY+25, 10, 10); //6 dots, mid right
      ellipse(myX+16, myY+40, 10, 10); //6 dots, bottom right
      ellipse(myX+34, myY+40, 10, 10); //6 dots, bottom left
    }
  }
}
