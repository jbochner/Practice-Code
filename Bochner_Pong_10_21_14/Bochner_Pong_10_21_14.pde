/*Pong by Josh Bochner
 Ms. Gerstein
 Period 9/10
 Right paddle is moved using the mouse
 Left paddle is moved using the key 'w' to move up, and 's' to move down
 */
//initializing variables for ball position, size, and speed
float xball;
float initialdxball = 4;
float dxball = initialdxball;
float yball;
float initialdyball = 4.8;
float dyball = initialdyball;
float szball = 20;
//initializing variables for rectangle size, speed, and position
float rectheight = 150;
float rect1x;
float rect2x;
float rect2y;
float speedrect2y = 10;
//initializing variables for score
int score1 = 0;
int score2 = 0;
//initializing variables for background color
float Hue = 0;
float dHue = .1;
//initializing variable to increase ball speed after bouncing off paddle
float speedinc = .5;
//initializing variables to pause game after a player scores
float run = 1;
float pausedAt;
float pausetime = 2000;
//initializing variables for ending the game
int winscore = 5;
float stoppedAt;
float endtime = 2500;


void setup() {
  //canvas size
  size(displayWidth, displayHeight);
  //ball initial position
  xball = width/2;
  yball = height/2;
  //paddle initial positions
  rect1x = width-100;
  rect2x = 70;
  rect2y = height/2 - rectheight/2;
  //set up for text
  textSize(50);
  textAlign(CENTER);
  //set up for colors
  colorMode(HSB, 100);
  //no cursor shown
  noCursor();
}

void draw() {
  //drawing the background, and changing it gradually
  background(Hue, 25, 65);
  Hue = Hue + dHue;
  if (Hue>=100) {
    Hue = 0;
  }
  //drawing ball
  fill(97, 100, 100);
  ellipse(xball, yball, szball, szball);
  //giving the ball a speed from frame to frame
  if (run == 1) {
    xball+=dxball;
    yball+=dyball;
  }
  //drawing the paddles 
  fill(97, 100, 100);
  rect(rect1x, mouseY-rectheight/2, 30, rectheight);
  rect(rect2x, rect2y, 30, rectheight);
  //moving the left paddle with the keyboard
  if (keyPressed == true) {
    if (key == 'w' && rect2y>=0) {
      rect2y+= -speedrect2y ;
    }
    if (key == 's' && (rect2y + rectheight<=height)) {
      rect2y+= speedrect2y;
    }
  }
  /*if the ball hits a paddle
   increasing its speed in the x direction
   changing the speed in the y direction by a random value
   */
  if ((yball < mouseY+rectheight/2 && yball > mouseY-rectheight/2 && xball > (rect1x-(dxball/2)) && xball < (rect1x+(dxball/2)) )) {
    dxball = -(dxball+speedinc);
    dyball = dyball + random(-2, 2);
  }
  if ((yball < rect2y+rectheight && yball > rect2y && xball > ((rect2x+30)+(dxball/2)) && xball < ((rect2x+30)-(dxball/2)))) {
    dxball = -(dxball-speedinc);
    dyball = dyball + random(-2, 2);
  }
  /*if the ball hits the right wall
   resetting the ball
   restoring its speed in the x direction to its original value, in the opposite direction
   restroing its speed in the y direction to its original value
   increasing the score of the keyboard
   */
  if (xball > width) {
    xball=width/2;
    yball=height/2;
    dxball = -(initialdxball);
    dyball = initialdyball;
    score2+= 1;
    run = 2;
    pausedAt = millis();
    stoppedAt = millis();
  }
  /*if the ball hits the left wall
   resetting the ball
   restoring its speed in the x direction to its original value, in the opposite direction
   restroing its speed in the y direction to its original value
   increasing the score of the mouse
   */
  if (xball < 0) {
    xball=width/2;
    yball=height/2;
    dxball = initialdxball;
    dyball = initialdyball;
    score1+= 1;
    run = 3;
    pausedAt = millis();
    stoppedAt = millis();
  }
  /*after the ball hits the right wall
   displaying text "Keyboard Scores!" for duration pausetime before resuming the game
   */
  if (run == 2) {
     fill(25, 90, 90);
    text("Keyboard Scores!", width/2, 150);
    if (millis()-pausedAt>=pausetime) {
      run = 1;
    }
  }
  /*after the ball hits the left wall
   displaying text "Mouse Scores!" for duration pausetime before resuming the game
   */
  if (run == 3) {
     fill(25, 90, 90);
    text("Mouse Scores!", width/2, 150);
    if (millis()-pausedAt>=pausetime) {
      run = 1;
    }
  }
  //reverses the direction of the ball in the y direction if it hits the top or bottom wall
  if (yball + szball/2 > height || yball - szball/2 < 0) {
    dyball = -dyball;
  }
  //display the scores of the players
   fill(25, 90, 90);
  text("Keyboard - "+score2+"        Mouse - "+score1+"", width/2, 70);
  //display the score needed to win
   fill(25, 90, 90);
  text("Score " +winscore+ " points to win!", width/2, height-60);
  //displaying the winner, keyboard, and ending the game when enough points are scored
  if (score2>=winscore) {
    background(Hue, 30, 100);
    Hue = Hue + 10*dHue;
    textSize(150);
    text("KEYBOARD WINS!!!", width/2, height/2);
    run = 0;
    if (millis()-stoppedAt>=endtime) {
      textSize(30);
      text("Press 'Esc' to exit", width/2, (height/2)+100);
    }
  }
  //displaying the winner, mouse, and ending the game when enough points are scored
  if (score1>=winscore) {
    background(Hue, 30, 100);
    Hue = Hue + 10*dHue;
    textSize(150);
    text("MOUSE WINS!!!", width/2, height/2);
    run = 0;
    if (millis()-stoppedAt>=endtime) {
      textSize(30);
      text("Press 'Esc' to exit", width/2, (height/2)+100);
    }
  }
}

