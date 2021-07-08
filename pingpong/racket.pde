//color racketColor = color(0);
color racketColor = color(0);
float racketWidth = 100 ;
float racketHeight = 10;
int racketBounceRate = 20 ;

void drawRacket()
{
  fill (racketColor);
  rectMode(CENTER);
  rect ( mouseX, mouseY, racketWidth, racketHeight);
}

void watchRacketBounce()
{
  float overhead = mouseY - pmouseY;
  if ((ballX+(ballSize/2) > mouseX-(racketWidth/2)) && (ballX-(ballSize/2) < mouseX+(racketWidth/2))) 
  {
    if (dist(ballX, ballY, ballX, mouseY)<=(ballSize/2)+abs(overhead)) 
    {
      makeBounceBottom(mouseY);
      ballSpeedHorizon = (ballX - mouseX) / 5;
      // racket moving up
      if (overhead<0) 
      {
        ballY+=overhead;
        ballSpeedVert+=overhead;
      }
    }
  }
}
