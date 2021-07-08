
float gravity = 1;
float ballSpeedVert = 0 ;
float airfriction = 0.0001;
float friction = 0.1 ;

void applyGravity()
{
  ballSpeedVert += gravity;
  ballY += ballSpeedVert;
  ballSpeedVert -= (ballSpeedVert * airfriction);
}



// keep ball in screen
void keepInScreen()
{
  //ball hits floor
  if (ballY + (ballSize/2) > height)
  {
    makeBounceBottom(height);
  }
  //ball hits ceiling
  if (ballY - (ballSize/2) < 0)
  {
    makeBounceTop(0);
  }
  //ball huts left of Screen
  if (ballX - (ballSize/2) < 0)
  {
    makeBounceLeft(0);
  }
  //ball hits right of screen
  if (ballX + (ballSize/2) > width )
  {
    makeBounceRight(width);
  }
}
