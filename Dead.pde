void checkDead() {
  if (dead) {

    if (!invincible) {
      lives -= 1;
      gravity-=jumpPower;
      invincible = true;
    } 

    if (loseAlpha < 255) {
      loseAlpha+=5;
    } else {
      dead = false;
      px = rx;
      py = ry;
      invincible = false;
      for (int i = 0; i < blocks.length; i++) {
        blockVisible[i] = true;
        if (blocks[i][4] == 4) {
          platform[i] = loadImage("question_block.jpg");
        }
        for (int n = 0; n < 6; n++) {
          blocks[i][n] = rBlocks[i][n];
        }
      }
      while (loseAlpha != 0) {
        loseAlpha -=5;
        delay(50);
      }
    }
  }
}
