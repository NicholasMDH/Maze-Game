//Screen 4 (Game) --------------------------------------------------------------------------------------------
if (screen == 4) {
  
  println (frameRate);
  println (screen);
  println (mouseX,mouseY);
  
  //Outlines
  strokeWeight (5);
  
  //"End"
  stroke (100);
  line (700,700,700,height);
  fill (100);
  textSize (80);
  text ("End",480,780);
  
  //Outline of canvas
  stroke (0);
  line (0,0,0,height); //Left Side
  line (width,0,width,height); //Right Side
  line (0,0,width,0); //Top Side
  line (0,height,width,height); //Bottom Side
  
  //Inner lines
  line (width/2,height,width/2,700); //Line to left of "End"
  line (0,700,300,700); //Roof of first passage
  line (width/2,700,700,700); //Roof of "End"
  line (700,700,700,500); //Right of Move 1
  line (100,500,700,500); //Top of Move 1
  line (100,500,100,200); //Right of left passage
  line (100,200,700,200); //Bottom of top passage
  line (100,400,400,400); //Left of middle of Move 2
  line (500,400,width,400); //Right of middle of Move 2
  
  //Stationary objects in top chamber
  fill(0,255,0);
  
  rectMode (CENTER);
  rect (100,100,100,100); //Far left cube
  rect (250,150,50,100); //First protrusion from bottom
  rect (250,0,100,50); //Far left hanging rectangle
  rect (400,100,100,50); //Floating middle rectangle
  rect (550,0,50,200); //Middle hanging tall rectangle
  
  rectMode(CORNER);
  rect (525,175,50,25); //Middle protrusion from bottom
  rect (650,100,50,100); //Far right bottom protrusion
  rect (650,0,150,25); //Far right hanging rectangle
  
  rectMode (CENTER);
  
  
  //Moving Pieces
  
  //First Chamber
  fill (255,0,0);
  //Bottom moving piece of first chamber
  rect (move1,650,50,50);
  move1 = move1 + move1x;
  move1 = constrain (move1,75,625);
  
  if ((move1 == 75) || (move1 == 625)) {
    move1x = move1x * -1;
  }
  
  //Top moving piece of first chamber
  rect (move2,550,50,50);
  move2 = move2 + move2x;
  move2 = constrain (move2,75,625);
  
  if ((move2 == 75) || (move2 == 625)) {
    move2x = move2x * -1;
  }
  
  //Third chamber
  fill (0,0,255);
  //Top moving piece of third chamber
  rect (move3,250,50,50);
  move3 = move3 + move3x;
  move3 = constrain (move3,175,725);
  
  if ((move3 == 175) || (move3 == 725)) {
    move3x = move3x * -1;
  }
  
  //Bottom moving piece of third chamber
  rect (move4,350,50,50);
  move4 = move4 + move4x;
  move4 = constrain (move4,175,725);
  
  if ((move4 == 175) || (move4 == 725)) {
    move4x = move4x * -1;
  }
  
  //Moving piece of fourth chamber
  rect (move5,450,50,50);
  move5 = move5 + move5x;
  move5 = constrain (move5,175,725);
  
  if ((move5 == 175) || (move5 == 725)) {
    move5x = move5x * -1;
  }
  
  //Keypressed inputs for pause screen
  if (keyPressed == true) {
    
    //Esc/Pause screen
    if (key == 'p') {
      screen = 5;
    }
    
    //Home Button
    if (key == 'h') {
      screen = 1;
    }
    
  } //Closes "KeyPressed"
  
  //Adds Colorcheck sensors to player object!
  color1 = get(x + 11,y);
  color2 = get(x - 11,y);
  color3 = get(x,y + 11);
  color4 = get(x,y - 11);
  color5 = get(x + 11,y + 5);
  color6 = get(x + 11,y - 5);
  color7 = get(x - 11,y + 5);
  color8 = get(x - 11,y - 5);
  
  //Player object!
  fill (0);
  rect (x,y,20,20);
  
  //KeyCoded inputs for movement
  if (keyCode == LEFT) {
    x = x - speed;
  }
  
  if (keyCode == RIGHT) {
    x = x + speed;
  }
  
  if (keyCode == UP) {
    y = y - speed;
  }
  
  if (keyCode == DOWN) {
    y = y + speed;
  }
  
  //ColorCheck to reset player
  if (((red(color1) == 0) && (blue(color1) == 0) && (green(color1) == 0)) ||
      ((red(color2) == 0) && (blue(color2) == 0) && (green(color2) == 0)) ||
      ((red(color3) == 0) && (blue(color3) == 0) && (green(color3) == 0)) ||
      ((red(color4) == 0) && (blue(color4) == 0) && (green(color4) == 0)) ||
      ((red(color5) == 0) && (blue(color5) == 0) && (green(color5) == 0)) ||
      ((red(color6) == 0) && (blue(color6) == 0) && (green(color6) == 0)) ||
      ((red(color7) == 0) && (blue(color7) == 0) && (green(color7) == 0)) ||
      ((red(color8) == 0) && (blue(color8) == 0) && (green(color8) == 0))) {
        
        x = 20;
        y = 780;
      } //Closes "ColorCheck"
  
  //ColorCheck to win
  if (((red(color1) == 100) && (blue(color1) == 100) && (green(color1) == 100)) ||
      ((red(color2) == 100) && (blue(color2) == 100) && (green(color2) == 100)) ||
      ((red(color3) == 100) && (blue(color3) == 100) && (green(color3) == 100)) ||
      ((red(color4) == 100) && (blue(color4) == 100) && (green(color4) == 100)) ||
      ((red(color5) == 100) && (blue(color5) == 100) && (green(color5) == 100)) ||
      ((red(color6) == 100) && (blue(color6) == 100) && (green(color6) == 100)) ||
      ((red(color7) == 100) && (blue(color7) == 100) && (green(color7) == 100)) ||
      ((red(color8) == 100) && (blue(color8) == 100) && (green(color8) == 100))) {
        
        x = 20;
        y = 780;
        screen = 6;
      } //Closes "ColorCheck"
      
}//Closes "Screen 4"
