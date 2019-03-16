//Screen 2 (Difficulty Screen) ------------------------------------------------------------------------------------------------------
if (screen == 2) {
  
 //Println's
  println (screen);
  println (mouseX,mouseY);
  
  //Title text
  fill (0);
  textSize (100);
  text ("Choose Mode",70,250);
  
  //Description text
  fill (0);
  textSize (30);
  text ("Press 1, 2, or 3 to select the level of difficulty",70,300);
  
  //Buttons to choose difficulty
  rectMode (CENTER);
  
  //"Easy" (2) ------------------------------->
  fill (0);
  rect (150,600,200,100);
  
  fill (255);
  textSize (30);
  text ("Easy: 1",105,610);
  
  //"Normal" (6) -------------------------------->
  fill (0);
  rect (400,600,200,100);
  
  //Button text
  fill (255);
  textSize (30);
  text ("Normal: 2",335,610);
  
  //"Hard" (10) ------------------------------------->
  fill (0);
  rect (650,600,200,100);
  
  //Button text
  fill (255);
  textSize (30);
  text ("Hard: 3",600,610);
  
  //Mousepressed
  
  //Keypressed inputs for pause screen
  if (keyPressed == true) {
    
    //Easy (1)
    if (key == '1') {
      screen = 5;
      level = 2;
      speed = 1;
    }
    
    //Normal (2)
    if (key == '2') {
      screen = 5;
      level = 6;
      speed = 2;
    }
    
    //Hard (3) 
    if (key == '3') {
      screen = 5;
      level = 10;
      speed = 3;
    }
      
  } //Closes "KeyPressed"
  
} //Closes "Screen 2"
