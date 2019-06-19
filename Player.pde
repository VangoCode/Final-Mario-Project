void playerInput() { //<>// //<>//
  pxv=0; // keep velocity for x and y at zero.
  pyv=0;

  if (pspeed == 5) { // if you're walking, slow down animation
    timer = 83;
  } else if (pspeed == 10) { // if you're running, do animation at a smooth 30fps.
    timer = 33;
  }

  if (dead==false) { // if you're not dead,

    if ( keys[UP] && falling==false) { // and you press up, and your speed is 5, you jump with a power of 12
      if (pspeed == 5) {
        jump.trigger();
        jumpPower = 12;
      } else { // otherwise play a different sound and jump with a power of 18
        jump_sprinting.trigger();
        jumpPower = 18;
      }
      gravity-=jumpPower; // then make the gravity equal to jump power but slowly
    }
    if (val != null) { // if the value is not null, essentially do the same thing but with a controller
      if (valChar[0] == 'U' && falling == false) {
        if (pspeed == 5) {
          jump.trigger();
          jumpPower = 12;
        } else {
          jump_sprinting.trigger();
          jumpPower = 18;
        }
        gravity-=jumpPower;
      }
    }
    if (keys[LEFT] || valChar[1] == 'L') {// you can use || operator because we dont use && here
      pxv=-pspeed; // move to the left
      marioDir = "left"; // make mario look left
      if (!falling&& millis() > lTime+ timer) {// timer for the animation whetehr we slow it down or sped it up
        currentFrame = nextLeftPic [currentFrame];
        lTime = millis();
      }
    } else if (keys[RIGHT] || valChar[2] == 'R') { // do the same for right
      pxv=pspeed; // move right
      marioDir = "right"; // look right
      if (!falling&& millis() > lTime+ timer) { // timer for animation again whether we slow it down or speed it up
        currentFrame = nextRightPic [currentFrame];
        lTime = millis();
      }
    } else { // if you're not pressing a key, you stand basedo nt the direction you face
      if (marioDir == "left") currentFrame = 0;          // when standing,the animation view is either 1 or 5,
      else if (marioDir == "right") currentFrame = 4 ;   // depending on the direction in which
      // mario is facing
    }

    if (py > height) { // if you're under the map, you die
      dead = true;
    }

    if (keys[SHIFT]) {
        pspeed = 10;
      } else {
        pspeed = 5;
      }

    if (val!=null) { // if val isn't null and you press shift or sprint on controller, speed up the speed
      if (keys[SHIFT] || valChar[3] == 'S') {
        pspeed = 10;
      } else {
        pspeed = 5;
      }
    }
  }

  pyv+=gravity; // add gravity to velocity
  gravity+=1; // constantly increase gravity

  falling = true; // you're falling if you're not pressing a key :)
}
void playerUpdate() { // update the player position
  px+=pxv; // move x pos based on velocity
  py+=pyv; // move y pos based on velocity

  if (size == 1) { // if your size is one, make the mario smaller and his hitbox smaller as well
    psizeW = mario.width/1.5;
    psizeH = mario.height/1.5;
    image(images [currentFrame], px, py, images[currentFrame].width/1.5, images[currentFrame].height/1.5);
  } else { // otherwise make mario his normal size
    psizeH = mario.height;
    psizeW = mario.width;
    image(images [currentFrame], px, py, images[currentFrame].width, images[currentFrame].height);
  }


  if (lives < 0) {// if you're outta lives, you die
    state = 3;
  }
}
