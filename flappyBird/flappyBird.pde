bird bird;
Pipes[] pipe = new Pipes[2];
Cloud[] clouds = new Cloud[5];
Score score;

void setup()
{
  size(300,450);
  bird = new bird();
  for(int i = 0; i < 2; i++)
  {
    pipe[i] = new Pipes();
  }
  pipe[0].position.x = width/2;
  pipe[1].position.x = width/2 + 180;
  for(int i = 0; i < 5; i++)
  {
    clouds[i] = new Cloud();
  }
  score = new Score();
}

void draw()
{
  background(102,178,255);
  for(int i = 0; i < 5; i++)
  {
    clouds[i].update();
    clouds[i].draw();
    clouds[i].checkSide();
  }
  bird.draw();
  bird.update();
  for(int i = 0; i < 2; i++)
  {
    pipe[i].draw();
    pipe[i].update();
    pipe[i].checkSide();
    pipe[i].detection();
  }
  score.draw();
  score.detect();
  
}

void keyPressed()
{
  if(key == ' ')
  {
    bird.fly();
  }
}
