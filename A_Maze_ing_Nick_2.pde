//Song
import ddf.minim.*;
Minim minim;
AudioPlayer song;

//Variables
int screen = 1;
int x = 20;
int y = 780;

float level = 4;
int speed = 2;

float move1 = random (75,625);
float move1x = 1;

float move2 = random (75,625);
float move2x = 1;

float move3 = random (175,725);
float move3x = 1;

float move4 = random (175,725);
float move4x = 1;

float move5 = random (175,725);
float move5x = 1;

color color1;
color color2;
color color3;
color color4;
color color5;
color color6;
color color7;
color color8;

void setup() {
  size (800,800);
  smooth();
  frameRate (60 * level);
  
  //Song
  minim = new Minim(this);
  song = minim.loadFile ("8Bit.mp3");
  song.play ();
  song.loop();
}

void draw() {
  background (255);
  
  //screen 1 (Main Menu) ------------------------------------------------------------------------------------------------------------
  if (screen == 1) {
    println (screen);
    println (mouseX,mouseY);
  
  //Title text
  fill (0);
  textSize (100);
  text ("Home",270,250);
  
  //Button
  fill (0);
  rectMode (CENTER);
  rect (400,600,200,100);
  
  //Button text
  fill (255);
  textSize (30);
  text ("Click to start",305,610);
  
  //Button click / Transition to screen 2
  if ((mousePressed == true) && (mouseX > 300) && (mouseX < 500) && (mouseY > 550) && (mouseY < 650)) {
    screen = 2;
  }
  
} //Closes "screen 1"
