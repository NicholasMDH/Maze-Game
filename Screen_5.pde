//Screen 5 (Pause/Instructions Screen) -----------------------------------------------------------------------
if (screen == 5) {
  
  println (screen);
  println (mouseX,mouseY);
  
  //Background
  background (255);
  
  //Title text
  fill (0);
  textSize (100);
  text ("Instructions",120,100);
  
  //Instructions
  fill (0);
  textSize (30);
  text ("Movement:",100,200);
  text ("Up - Up Arrow",100,250);
  text ("Down - Down Arrow",100,300);
  text ("Left - Left Arrow",100,350);
  text ("Right - Right Arrow",100,400);
  text ("Stop moving - Spacebar",100,450);
  
  //Miscellaneous
  text ("Miscellaneous:",500,200);
  text ("Instructions - p",500,250);
  text ("Home - h",500,300);
  
  //Buttons to switch between screens
  
  //Continue Button
  rectMode (CENTER);
  fill (0);
  rect (200,600,200,100);
  
  fill (255);
  textSize (30);
  text ("Play",170,610);
  
  if ((mousePressed == true) && (mouseX > 100) && (mouseX < 300) && (mouseY > 550) && (mouseY < 650)) {
    screen = 4;
  }
  
  //Main Menu Button
  fill (0);
  rect (600,600,200,100);
  
  fill (255);
  textSize (30);
  text ("Home",560,610);
  
    if ((mousePressed == true) && (mouseX > 500) && (mouseX < 700) && (mouseY > 550) && (mouseY < 650)) {
    screen = 1;
  }
  
//  if (keyPressed == true) {
//    
//    if (key == 'p') {
//      screen = 4;
//    }
//    
//    if (key == 'm') {
//      screen = 1;
//    }
  
}//Closes "Screen 5"
