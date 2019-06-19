void menu() {
  image(background_menu, 0,0,width,height);// menu image
  textSize(60);// set text size and it's align
  textAlign(CENTER);
  text("Press Enter to Play", width/2, height/2+50); // some text
  textAlign(CORNER);
  image(wasd, width/2+100, height/2+80, wasd.width/3, wasd.height/3); // arrow key instruction image
  text("Move", width/2+100+(wasd.width/24), height/2+80+wasd.height/2); // instruction for arrow key
  image(shift, width/2-100-(wasd.width/3), height/2+80+(shift.height/6), shift.width/3, shift.height/3); // sprinting instruction image
  text("Sprint (Hold)", width/2-100-(wasd.width/2), height/2+80+wasd.height/2); // sprinting instruction text
  
  if(!audioPlayedFirstTime) { // play the start up sound ONLY ONCE
    startUp.trigger();
    audioPlayedFirstTime = true;
  }
  
  if(keys[ENTER] || valChar[3] == 'S') { // if you want to begin, play LETS GO sound effect
    state = 1;
    begin.trigger();
  }
}
