void moveGameObjects() {

  px = constrain(px, 200, width-200);

  for (int i = 0; i<blocks.length; i++) {
    if (pxv!=0) {
      if (px >= width-200 && keys[RIGHT]) {
        blocks[i][0] -= bgSpeed;
      } else if (px <= 200 &&keys[LEFT]) {
        blocks[i][0] += bgSpeed;
      }
    } else {
    }
  }

  if (pxv!=0) {
    if (px >= width-200 && keys[RIGHT]) {
      bgX -= bgSpeed;
      bgX2 -= bgSpeed;
    } else if (px <= 200 &&keys[LEFT]) {
      bgX += bgSpeed;
      bgX2 += bgSpeed;
    }
  }
}
