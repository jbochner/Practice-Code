PImage Adel;
PImage kaboom;

void setup(){
  Adel = loadImage("adel.jpg");
  kaboom = loadImage("kaboom.jpg");
  size(Adel.width,Adel.height);
  background(Adel);
}

void draw(){
  if(mousePressed){
   image(kaboom, random(width), random(height), kaboom.width, kaboom.height); 
  }
}
