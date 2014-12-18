//Create the bees class
class bees {
  //Declare PVectors; x is position, v is velocity, a is acceleration
  PVector x, v, a;
  //Declare the image BEEE
  PImage BEEE;
  //Declare variables to aid in time controlled mechanisms
  float timeReleased;
  float timeSwarm;
  //Declare variable to aid in control of bees' movements
  float periodController;

//Constructor
  bees() {
    //The bees are placed on the left side of the screen
    x = new PVector (random(-20, -10), random(50, height-50));
    //The bees have no acceleration
    a = new PVector (0, 0);
    //Load the image for the bees
    BEEE = loadImage("BEEE.png");
    //Assign timeReleased as the frameCount when each bee was released
    timeReleased = frameCount;
    //Assign periodController a random value for each bee
    periodController = random(0.03, 0.08);
  }

  void display() {
    //Load the image of the bee and scale it to an appropriate size
    image(BEEE, x.x, x.y, BEEE.width*.2, BEEE.height*.2);
  }

  void move() {
    //If any key is pressed
    if (keyPressed) {
      //Assign timeSwarm the value of the frameCount when the key is pressed
      timeSwarm = frameCount;
      //Give the bees an acceleration towards the mouse
      a.set(-(x.x-mouseX)/7000, -(x.y-mouseY)/7000);
    } 
    //If keys are not pressed
    else {
      /*Give the bees a velocity each frame dependent on their
      periodController and the elapsed time since released */
      v = new PVector (.7, random(1.5, 3)*cos(periodController*(frameCount-timeReleased)));
    }
    //Add the acceleration to the velocity
    v.add(a);
    //Add the velocity to the position
    x.add(v);
  }

  boolean offScreen() {
    //If the bee is to the right of the screen, return a value of true
    if (x.x>width) {
      return true;
    } 
    //If the bee is not to the right of the screen, return a value of false
    else {
      return false;
    }
  }
}

