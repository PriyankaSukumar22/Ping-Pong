/********* VARIABLES *********/

// We control which screen is active by settings / updating
// gameScreen variable. We display the correct screen according
// to the value of this variable.
//
// 0: Initial Screen
// 1: Game Screen
// 2: Game-over Screen

int gameScreen = 0;
float ballX , ballY ;
float ballSize = 30 ;
int ballColor = color(0);

/********* SETUP BLOCK *********/

void setup() {
  size(500, 500);
  ballX = width/4;
  ballY = height/5;
}


/********* DRAW BLOCK *********/

void draw() {
  // Display the contents of the current screen
  if (gameScreen == 0) {
    initScreen();
  } else if (gameScreen == 1) {
    gameScreen();
  } else if (gameScreen == 2) {
    gameOverScreen();
  }
}





/********* INPUTS *********/

public void mousePressed() {
  // if we are on the initial screen when clicked, start the game
  if (gameScreen == 0) 
  {
    startGame();
  }
  if (gameScreen == 2 )
  {
    restart();
  }
}
