class Pipes
{
  PVector position = new PVector(width/2, 0);
  PVector pSpeed = new PVector(-0.7, 0);
  float pHeight = random(50, 350);
  float pWidth = 50;
  float gap = 80 ;
  
  void update()
  {
    position.add(pSpeed);
  }
  
  void checkSide()
  {
    if(position.x < -50)
    {
      position.x = 305;
      pHeight = random(50 ,350);
    }
  }
  
  void detection()
  {
    if(bird.position.x >= position.x-10 && bird.position.x <= position.x+pWidth && bird.position.y < pHeight+28)
    {
      bird.position.x = position.x;
      bird.position.y = position.y;
      bird.gravity.x = 0;
      bird.gravity.y = 0;
      pSpeed.x = 0;
      textSize(35);
      fill(0);
      text("Game Over", width/2-90, 100);
      textSize(20);
      fill(0);
      text("Press P Key To Play Again", width/2-125 , 200);
      
      if(key == 'p' || key == 'P')
      {
        setup();
      }
    }
    
    if(bird.position.x >= position.x-10 && bird.position.x <= position.x+pWidth && bird.position.y > pHeight+gap-6)
    {
      bird.position.x = position.x;
      bird.position.y = position.y;
      //bird.gravity.x = 0;
      //bird.gravity.y = 0;
      pSpeed.x = 0;
      textSize(35);
      fill(0);
      text("Game Over", width/2-90, 100);
      textSize(20);
      fill(0);
      text("Press P Key To Play Again", width/2-125 , 200);
      
      if(key == 'p' || key == 'P')
      {
        setup();
      }
    }
    
    if(bird.position.y > height)
    {
      
      bird.position.y = height;
      //bird.gravity.x = 0;
      //bird.gravity.y = 0;
      pSpeed.x = 0;
      textSize(35);
      fill(0);
      text("Game Over", width/2-90, 100);
      textSize(20);
      fill(0);
      text("Press P Key To Play Again", width/2-125 , 200);
      
      if(key == 'p' || key == 'P')
      {
        setup();
      }
    }
  }
  
  void draw()
  {
    fill(0,255,0);
    stroke(0);
    strokeWeight(1);
    rect(position.x, position.y, pWidth, pHeight);
    fill(0,255,0);
    stroke(0);
    strokeWeight(1);
    rect(position.x-10, position.y+pHeight, pWidth+20, 20);
    fill(0,255,0);
    stroke(0);
    strokeWeight(1);
    rect(position.x, pHeight+gap, pWidth, height);
    fill(0,255,0);
    stroke(0);
    strokeWeight(1);
    rect(position.x-10, pHeight+gap, pWidth+20, 20);
  }
}
