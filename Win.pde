void checkWin() { // check to see if you've won
  if (px+pxv+psizeW>blocks[2][0] && px+pxv<blocks[2][0]+blocks[2][2] && py+psizeH>blocks[2][1] && py<blocks[2][1]+blocks[2][3] && blockVisible[2]) {
    win = true; // if you touch the third object, it's the winning component, so your win is true
    state = 2; // show win screen
    if (!winPlaying) { // play the win sound and set winplaying to true to only do it once
      winSound.trigger();
      winPlaying = true;
    }
  }
}

void winScreen() { // when you win
  player.pause(); // stop the old music
  player.rewind();
  image(winner, 0, 0, width, height); // dabbing mario pic
  fill(255,255,0);
  text("Your final score was: " + score, 30, height/2-100); // write final score in yellow text

  if (key=='r' || key=='R' || valChar[3] == 'S') { // if you want to restart ,it resets all the variables
    for (int i = 0; i < blocks.length; i++) {
      for (int n = 0; n < 6; n++) {
        blocks[i][n] = rBlocks[i][n];
      }
    }
    loadVariableDeclarations();
    lives = 3;
    coins = 0;
    bgX = 0;
    bgX2 = 900;
    size = 1;
    state = 1;
    win = false;
  }
}
