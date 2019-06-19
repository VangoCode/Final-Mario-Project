void moveGameObjects() {

  px = constrain(px, 0, width-400); // constrain marioX to only being able to go halfway across screen

  if (!win) { // if you haven't won, you can move the background, as well as the objects both dependant on the background speed
    for (int i = 0; i<blocks.length; i++) {
      if (pxv!=0) {
        if (px >= width-400 && keys[RIGHT]) {
          blocks[i][0] -= bgSpeed;
        }// doesn't move objects right because in Mario, you can't go back
        if (px>=width-400 &&  valChar[2] == 'R') {
          blocks[i][0] -= bgSpeed;
        }
      } else {
      }
    }

    if (pxv!=0) {
      if (px >= width-400 && keys[RIGHT]) {
        bgX -= bgSpeed;
        bgX2 -= bgSpeed;
      } // background doesn't move right because in Mario, you can't go back.
      if (px>=width-400 &&  valChar[2] == 'R') {
        bgX -= bgSpeed;
        bgX2 -= bgSpeed;
      }
    }
  }
}
