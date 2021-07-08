/********* SCREEN CONTENTS *********/

void initScreen() {
  // codes of initial screen
  background(0);
  textAlign(CENTER);
  text("Click to start", height/2, width/2);
}


void startGame() 
{
  gameScreen=1;
}


void gameScreen() {
  // codes of game screen
  background(#ADD8E1);
  drawBall();
  applyGravity();
  keepInScreen();
  drawRacket();
  watchRacketBounce();
  applyHorizontalSpeed();
  wallAdder();
  wallHandler();
  drawHealthBar();
  printScore();
}
void gameOverScreen() {
  // codes for game over screen
  background(0);
  textAlign(CENTER);
  fill(255);
  textSize(30);
  text("Game Over", height/2, width/2 - 20);
  textSize(15);
  text("Click to Restart", height/2, width/2 + 10);
  printScore();
}


void restart() 
{
  score = 0;
  health = maxHealth;
  ballX=width/4;
  ballY=height/5;
  lastAddTime = 0;
  walls.clear();
  gameScreen = 1;
}

void gameOver()
{
  gameScreen = 2;
}
