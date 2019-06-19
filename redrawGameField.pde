void redrawGameField() {
  if (debug) {
    debugger(); // draw the debugger if debug mode is on
  }

  image(bg, bgX, 0, 910, height); // draw background images
  image(bg_inverse, bgX2, 0, 910, height);

  bgSpeed = pspeed; // set the background speed to player speed constantly

  for (int i =0; i<blocks.length; i++) { 
    if (blocks[i][4] == 3) { // draw all of the images, and rects based on what type the object is
      rect(blocks[i][0], blocks[i][1], blocks[i][2], blocks[i][3]);
    } else if (blocks[i][4] == 5 && blockVisible[i] == true) {
      image(platform[i], blocks[i][0], blocks[i][1], blocks[i][2], blocks[i][3]);
    } else if (blocks[i][4] == 6 && blockVisible[i] == true) {
      image(platform[i], blocks[i][0], blocks[i][1], blocks[i][2], blocks[i][3]);
    } else if (blocks[i][4] == 0 && blockVisible[i] == true) {
      image(platform[i], blocks[i][0], blocks[i][1], blocks[i][2], blocks[i][3]);
    } else if (blocks[i][4] == 7 && blockVisible[i] == true) {
      image(platform[i], blocks[i][0], blocks[i][1], blocks[i][2], blocks[i][3]);
    } else if (blocks[i][4] !=5 && blocks[i][4] != 6 && blocks[i][4] != 0 && blocks[i][4] != 7) {
      image(platform[i], blocks[i][0], blocks[i][1], blocks[i][2], blocks[i][3]);
    }
  }
  // scrolling background
  if (bgX < -900) { // move the background
    bgX = 900;
  } else if (bgX > 900) {
    bgX = -900;
  }

  if (bgX2 < -900) { // if background is offscreen mov eit 
    bgX2 = 900;
  } else if (bgX2 > 900) {
    bgX2 = -900;
  }

  if (coins > 99) { // if you get 100 coins levelup and set coins to 0
    lives+=1;
    coins = 0;
  }
  if (!player.isPlaying()) { // constantly play music
      player.rewind();
      player.play();
    }
}

void ui() { // draw the UI
  fill(255);
  textSize(50); 
  image(mLives, 30, 20, 25, 50); // display the lives with a x[NUMBER]
  text("x" + lives, 65, 65);

  image(coin, width-130, 20, 50, 50); // display the coins as is
  text(coins, width-80, 65);

  textAlign(CENTER); // draw the score in the CENTER!
  text("Score " + score, width/2, 65);
  textAlign(CORNER);

  fill(0, loseAlpha); // fill everything with a black rectangle that will fade blac if you lose.
  rect(0, 0, width, height);
}
