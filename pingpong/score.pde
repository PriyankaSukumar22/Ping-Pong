int score = 0;

void score() 
{
  score++;
}
void printScore()
{
  textAlign(CENTER);
  fill(255,0,0);
  textSize(30); 
  text(score, height/2, 50);
}
