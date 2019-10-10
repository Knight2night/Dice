
void setup()
{
  
  size(300,300);
  noLoop();
}
void draw()
{
  background(445);
  int sum =0;
  for(int y=5; y<=200; y+=50)
  {
    for(int x=5; x<= 200; x+=50)
    {
      Die dame = new Die(x,y);
      dame.show();
      dame.roll();
      stroke(255);
      sum = sum + dame.dieNum;
    }
  }
  text("addition: ",50,220);
  text(sum, 150,220);
  
  
}
void mousePressed()
{
  redraw();
}
class Die
{
  int myX, myY;
  int dieNum;
  //variable declarations here
  Die(int x, int y) 
  {
    roll();
    myX=x;
    myY=y;
  }
  
  void roll()
  {
    dieNum=(int)(Math.random()*6)+1;
    
  }
  void show()
  {
    
 fill(250);
    rect(myX,myY,40,40,5);
    noStroke();
    if (dieNum==1)
    {
      fill(0);
      ellipse(myX+20,myY+20,10,10);
    }
    if(dieNum==2)
    {
      fill(0);
      ellipse(myX+10,myY+30,10,10);
      ellipse(myX+30,myY+10,10,10);
    }
    if(dieNum==3)
    {
      fill(0);
      ellipse(myX+30,myY+20,10,10);
      ellipse(myX+20.5,myY+7.5,10,10);
      ellipse(myX+32.5,myY+32.5,10,10);
    }
    if(dieNum==4)
    {
      fill(0);
      ellipse(myX+7.5,myY+7.5,10,10);
      ellipse(myX+32.5,myY+32.5,10,10);
      ellipse(myX+32.5,myY+7.5,10,10);
      ellipse(myX+7.5,myY+32.5,10,10);
    }
    if(dieNum==5)
    {
      fill(0);
      ellipse(myX+7.5,myY+7.5,10,10);
      ellipse(myX+32.5,myY+32.5,10,10);
      ellipse(myX+32.5,myY+7.5,10,10);
      ellipse(myX+7.5,myY+32.5,10,10);
      ellipse(myX+20,myY+20,10,10);
    }
    if(dieNum==6)
    {
      fill(0);
      ellipse(myX+7.5,myY+7.5,10,10);
      ellipse(myX+32.5,myY+32.5,10,10);
      ellipse(myX+32.5,myY+7.5,10,10);
      ellipse(myX+7.5,myY+32.5,10,10);
      ellipse(myX+7.5,myY+20,10,10);
      ellipse(myX+32.5,myY+20,10,10);
    }
  }
}