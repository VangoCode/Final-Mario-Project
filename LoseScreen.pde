void loseScreen() {
  background(255); // background fallback just in case
  image(lose, 0, 0, width, height); // load the image

  if (key=='r' || key=='R'|| valChar[3] == 'S') { // if you restart, reset all variables and block positions
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
    state = 1;
  }
}
