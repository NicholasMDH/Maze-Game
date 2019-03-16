//Screen 6 (Win Screen) --------------------------------------------------------------------------------------
if (screen == 6) {
  
   println (screen);
    println (mouseX,mouseY);
  
  //Title Text
  fill (0);
  textSize (100);
  text ("You Win!",200,250);
  
  //Buttons to switch between screens
  
  //Unpause Button
  fill (0);
  rect (200,600,200,100);
  
  fill (255);
  textSize (30);
  text ("Continue",133,610);
  
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
  
} //Closes "Screen 6"

} //Closes "Void draw()"
