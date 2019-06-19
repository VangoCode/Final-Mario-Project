void checkDead() {
  if (dead) { // if you're dead

    if (!invincible) { // if you're not invincible, take away a life, make you fly up a bit, death sound and make you invincible
      lives -= 1;
      gravity-=jumpPower;
      deathSound.trigger();
      invincible = true;
    } 

    if (loseAlpha < 255) { // fade the screen black
      loseAlpha+=5;
    } else {
      dead = false; // once it's fully black make the character no longer dead, reset it's coordinates
      px = rx;
      py = ry;
      invincible = false; // make it no longer invincible
      for (int i = 0; i < blocks.length; i++) { // make the blocks needed visible or invisible
        if (blocks[i][4] == 7) {
          blockVisible[i] = false;
        } else {
          blockVisible[i] = true;
        }
        if (blocks[i][4] == 4) { // reload the question blocks that were used
          platform[i] = loadImage("question_block.jpg");
        }
        for (int n = 0; n < 6; n++) { // move all blocks to original positions
          blocks[i][n] = rBlocks[i][n];
        }
      }
      while (loseAlpha != 0) { // make the screen back to seeing things
        loseAlpha -=5;
      }
    }
  }
}
