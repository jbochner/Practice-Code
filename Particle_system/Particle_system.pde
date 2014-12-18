//////////////////////////////////////////////
//             JOSH BOCHNER                 //
//             PARTICLE SYSTEM              //
//             MS. GERSTEIN                 //
//             9/10                         // 
//                                          //
//             BEE SWARM                    //
//////////////////////////////////////////////



// Create an Array List for the bees class called beeMeUp
ArrayList<bees> beeMeUp = new ArrayList<bees>();

void setup() {
  //Size is that of the display
  size(displayWidth, displayHeight);
  //Colors are given in HSB
  colorMode(HSB, 360, 100, 100, 100);
  //The text is size 20
  textSize(20);
}

void draw() {
  background(250, 60, 65);
  //Create text to aid the user in controlling the program
  text("Click the mouse to add bees. Hold any key to create a swarm that will follow the mouse. Bees will die if they go past the right side of the screen.", 20, 40);
  text(" Bees do not like having their swarms interrupted, so do not try to add more bees while the bees are swarming.", 13, 70);
  //Set of methods for the bees class
  for (int i = 0; i<beeMeUp.size (); i++) {
    //Retrieve an object
    bees b = beeMeUp.get(i);
    //Apply display and move methods to the object
    b.display();
    b.move();
    //If the offScreen method is true, remove the object
    if (b.offScreen()) {
      beeMeUp.remove(0);
    }
  }
}

//When the mouse is pressed, and the bees are not swarming, create a random amount (1-5) of bees
void mousePressed() {
  if (keyPressed!=true) {
    for (int i = 0; i<random (1, 6); i++) {
      beeMeUp.add(new bees());
    }
  }
}

