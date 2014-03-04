class Score
{
  PVector position = new PVector(width/2, height/2-100);
  int score = 0;
  boolean start = false;
  
  void detect()
  {
    for(int i = 0; i < 2; i++)
    {
      if(bird.position.x > pipe[i].position.x+pipe[i].pWidth+1)
      {
        start = false;
        scoreAdd();
      }
      start = true;
    }
  }
  
  void scoreAdd()
  {
    if(start == true)
    {
      score = score + 1;
    }
  }
  
  void draw()
  {
    textSize(25);
    fill(0);
    text(score, position.x , position.y);
  }
}
