void redrawGameField() {
  if (debug) {
    debugger();
  }
  
  image(bg, bgX, 0, 910, height);
  image(bg_inverse, bgX2, 0, 910, height);
  
  bgSpeed = pspeed;
  
  // scrolling background
  if (bgX < -910) {
    bgX = 910;
  } else if (bgX > 910) {
    bgX = -910;
  }

  if (bgX2 < -910) {
    bgX2 = 910;
  } else if (bgX2 > 910) {
    bgX2 = -910;
  }
  
  if(coins > 99) {
    lives+=1;
    coins = 0;
  }
}

void ui() {
  fill(255);
  textSize(50);
  image(mLives, 30, 20, 25, 50);
  text("x" + lives, 65, 65);

  image(coin, width-130, 20, 50, 50);
  text(coins, width-80, 65);

  fill(0, loseAlpha);
  rect(0, 0, width, height);
}
