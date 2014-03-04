class Cloud
{
  float posx = random(0,300);
  float posy = random(0,450);
  PVector position = new PVector(posx, posy);
  PVector speed = new PVector(-0.5, 0);
  
  void update()
  {
    position.add(speed);
  }
  
   void checkSide()
  {
    if(position.x < -50)
    {
      position.x = 305;
      posx = random(0 ,300);
      posx = random(0 ,550);
    }
  }
  
  void draw()
  {
    fill(255);
    noStroke();
    ellipse(position.x, position.y, 60, 60);
    fill(255);
    noStroke();
    ellipse(position.x, position.y, 60, 60);
    fill(255);
    noStroke();
    ellipse(position.x, position.y, 60, 60);
  }
}
