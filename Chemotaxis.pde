walker[] aBunch;
void setup()
{
  size(500,500);
  frameRate(40);
  aBunch = new walker[1000];
  for(int i = 0; i < aBunch.length; i++)
  {
    aBunch[i] = new walker();
  }
  }
void draw()
{
  background(0);
  for(int i = 0; i < aBunch.length; i++)
  {      
    aBunch[i].show();
    aBunch[i].walk();
  }
  fill(255);
  rect(210,0,100,50);
  fill(0,255,0);
  text("Chick Magnet",225,20);
}
 
void mousePressed()
{
  aBunch = new walker[1000];
  for(int i = 0; i < aBunch.length; i++)
  {
    aBunch[i] = new walker();
  }
  
}

class walker
{
  int myX,myY;
  walker()
  {
    myX = 250;
    myY = 500;
  }
  void walk ()
  {
    myX = myX - (int)(Math.random()*12.5)+6;
    myY = myY - (int)(Math.random()*14)-6;
  }
  void show()
  {
    fill((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
    ellipse(myX,myY,(int)(Math.random()*25),(int)(Math.random()*25));
  }
}