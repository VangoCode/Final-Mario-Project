void playerInput() {
  pxv=0;
  pyv=0;


  if (dead==false) {
    if (keys[UP] && falling==false) {
      gravity-=jumpPower;
    }
    if (keys[LEFT]) {
      pxv=-pspeed;
      marioDir = "left";
      if (!falling) {
        currentFrame = nextLeftPic [currentFrame];
      }
    } else if (keys[RIGHT]) {
      pxv=pspeed;
      marioDir = "right";
      if (!falling) {
        currentFrame = nextRightPic [currentFrame];
      }
    } else {
      if (marioDir == "left") currentFrame = 0;          // when standing,the animation view is either 1 or 5,
      else if (marioDir == "right") currentFrame = 4 ;   // depending on the direction in which
      // mario is facing
    }

    if (py > height) {
      dead = true;
    }

    if (keys[SHIFT]) {
      pspeed = 10;
    } else {
      pspeed = 5;
    }
  }

  if (keys[82]) {
    dead=false;
    px=rx;
    py=ry;
  }

  pyv+=gravity;
  gravity+=1;

  falling = true;
}
void playerUpdate() {
  px+=pxv;
  py+=pyv;

  fill(255, 0, 0);
  if (dead==true) {
    fill(255, 150, 150);
  }

  image(images [currentFrame], px, py, images[currentFrame].width, images[currentFrame].height);
  psizeH = mario.height;
  //  rect(px, py, psize, psize);
}
