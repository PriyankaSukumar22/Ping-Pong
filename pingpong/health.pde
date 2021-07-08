int maxHealth = 100;
float health = 100;
float healthDecrease = 1;
int healthBarWidth = 60;

void drawHealthBar() {
  // Make it borderless:
  noStroke();
  fill(189, 195, 199);
  rectMode(CORNER);
  rect(ballX-(healthBarWidth/2), ballY - 30, healthBarWidth, 5);
  if (health > 60) {
    fill(46, 204, 113);
  } else if (health > 30) {
    fill(230, 126, 34);
  } else {
    fill(231, 76, 60);
  }
  rectMode(CORNER);
  rect(ballX-(healthBarWidth/2), ballY - 30, healthBarWidth*(health/maxHealth), 5);
}
void decreaseHealth()
{
  health -= healthDecrease;
  if (health <= 0){
    gameOver();
  }
}
