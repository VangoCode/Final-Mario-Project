void loadImages() { // load the images
  mario = loadImage("pic1.bmp"); // mario image
  mLives = loadImage("pic4.bmp"); // mario lives image
  coin = loadImage("coin.png"); // coins image
  bg = loadImage("background.png"); // background
  bg_inverse = loadImage("background_inverse.png"); // second background 
  background_menu = loadImage("background.jpg"); // menu background
  wasd = loadImage("wasd.png"); // wasd pic
  shift = loadImage("shift.png"); // shift pic
  lose = loadImage("gameover.png"); // lose screen bg
  winner = loadImage("win.png"); // win screen bg ft. DABBING MARIO

  for (int i =0; i < platform.length; i++) {
    if (blocks[i][4] == 1) {
      platform[i] = loadImage("ground.jpg"); // if its a ground item make it's image ground
    } else if (blocks[i][4] == 2) {
      platform[i] = loadImage("pipe.png"); // if it's a pipe make it's image pipe
    } else if (blocks[i][4] == 4) {
      platform[i] = loadImage("question_block.jpg"); // if its question block make image question block
    } else if (blocks[i][4] == 5) {
      platform[i] = loadImage("breakable_block.jpg"); // if breakable block make image breakable block
    } else if (blocks[i][4] == 6) {
      platform[i] = loadImage("coin.png"); // if  coin make image coin
    } else if (blocks[i][4] == 0) {
      platform[i] = loadImage("goomba.png"); // if goomba make image goomba
    } else if (blocks[i][4] == 7) {
      platform[i] = loadImage("mushroom.png"); // if mushroom make image mushroom
    }
  }

  psizeH = mario.height; // make mario hitbox image height
  psizeW = mario.width; // make mario width image height

  for (int i = 0; i < images.length; i++) { // load mario sprite animation
    String imageName = "pic" + nf (i, 1) + ".bmp";
    images [i] = loadImage (imageName); // load each image
  }
}

void loadModes() { // load all custom modes
  noStroke(); // no stroke when drawing stuff
  frameRate(30); // set frame rate to a smooth 30 fps
  textureMode(NORMAL); // set texture mode to normal for images :)
}

void loadVariableDeclarations() { // loads all needed variables
  loseAlpha = 0; // sets black fade out alpha to 0
  px=w/2; // makes mario start halfway between screen
  py=h-psizeH-psizeH/2; // makes mario start on top of a block
  rx=px; // sets resetx to current x
  ry=py; // sets resety to current y
  for (int i = 0; i < blockVisible.length; i++) { // sets all the blocks to visible or invisible corresponding to their array
    if (blocks[i][4] == 7) {
      blockVisible[i] = false;
    } else {
      blockVisible[i] = true;
    }
  }

  bgX2 = 910; // set second background to end of screen

  for (int i = 0; i < blocks.length; i++) {
    for (int n = 0; n < 6; n++) {
      rBlocks[i][n] = blocks[i][n]; // second array to reset block coordinates is loaded in
    }
  }
}

void loadAudio() { // load the audio
  minim = new Minim(this); // set up minim

  coinSound = minim.loadSample("coin.mp3", 512); // load coin sound
  kill_goomba = minim.loadSample("kill_goomba.mp3", 512); // load goomba death sound
  jump = minim.loadSample("jump.mp3", 512); // load jump sound
  jump_sprinting = minim.loadSample("jump_sprinting.mp3", 512); // load jump when sprinting sound
  deathSound = minim.loadSample("death.mp3", 512); // load mario die sound
  break_block = minim.loadSample("break_block.mp3", 512); // load break the breakable block sound
  winSound = minim.loadSample("win.mp3", 512); // load winning sound
  upSize = minim.loadSample("sizeUp.mp3", 512); // load sizing up sound
  downSize = minim.loadSample("sizeDown.mp3", 512); // load sizing down sound
  morePoints = minim.loadSample("alreadySizeTwo.mp3", 512); // load sound if you are already the biggest size
  mushroom = minim.loadSample("mushroom.mp3", 512); // load sound if you are eating mushroom
  startUp = minim.loadSample("startup.mp3", 512); // boot up sound ("HELLO")
  begin = minim.loadSample("begin.mp3", 512); // begin sound ("LETS GO!")

  player = minim.loadFile("theme.mp3", 512); // load mario theme song
}

void loadFonts() { // load the font
  myFont = loadFont("FranklinGothic-DemiCond-48.vlw"); // load font
  textFont(myFont); // set font
}
