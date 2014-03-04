class bird
{
  PVector acceleration = new PVector();
  PVector gravity = new PVector(0, 400.5);
  PVector velocity = new PVector(0, 0);
  PVector position = new PVector(width/2-100, height/2);
  PVector force = new PVector(0, -100);
  float mass = 1.0f;
  float timeDelta = 1.0f / 60.0f;

  
  void update()
  {
    
    //acceleration.add(gravity);
    //acceleration.add(PVector.div(force, mass));
    velocity.add(PVector.mult(gravity, timeDelta));
    position.add(PVector.mult(velocity, timeDelta));
    //force.x = force.y = force.z = 0.0f;
  }
  
  void draw()
  {
    pushMatrix();
    translate(position.x,position.y);
    fill(255, 0, 0);
    stroke(0);
    strokeWeight(1);
    ellipse(0, 0, 20, 20);
    fill(255);
    stroke(0);
    strokeWeight(1);
    ellipse(5, -2, 10, 8);
    fill(0);
    stroke(0);
    strokeWeight(1);
    ellipse(6, -2, 3, 3);
    fill(255);
    stroke(0);
    strokeWeight(1);
    if (velocity.y > 0)
    {
    rect(-10, 0, 10, 5);
    }
    else
    {
      rect(-10, 2, 10, 5);
    }
    stroke(255, 198, 7);
    strokeWeight(3);
    line(5, 5, 10, 3);
    stroke(255, 198, 7);
    strokeWeight(3);
    line(5, 5, 10, 6);
    popMatrix();
  }
  
  void fly()
  {
    if(velocity.y > 0)
    {
      velocity.y = 0;
    }
    velocity.add(PVector.mult(force, mass));
  }
}
