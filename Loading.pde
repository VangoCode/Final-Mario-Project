void loadImages() {
  mario = loadImage("pic1.bmp");
  mLives = loadImage("pic4.bmp");
  coin = loadImage("coin.png");
  bg = loadImage("background.png");
  bg_inverse = loadImage("background_inverse.png");

  for (int i =0; i < platform.length; i++) {
    if (blocks[i][4] == 1) {
      platform[i] = loadImage("ground.jpg");
    } else if (blocks[i][4] == 2) {
      platform[i] = loadImage("pipe.png");
    } else if (blocks[i][4] == 4) {
      platform[i] = loadImage("question_block.jpg");
    } else if (blocks[i][4] == 5) {
      platform[i] = loadImage("breakable_block.jpg");
    } else if (blocks[i][4] == 6) {
      platform[i] = loadImage("coin.png");
    } else if (blocks[i][4] == 0) {
      platform[i] = loadImage("goomba.png");
    }
  }

  psizeH = mario.height;
  psizeW = mario.width;
  
  for (int i = 0; i < images.length; i++) {
    String imageName = "pic" + nf (i, 1) + ".bmp";
    images [i] = loadImage (imageName); // load each image
  }
}

void loadModes() {
  noStroke();
  frameRate(30);
  textureMode(NORMAL);
}

void loadVariableDeclarations() {
  loseAlpha = 0;
  px=w/2;
  py=h-psizeH-psizeH/2;
  rx=px;
  ry=py;
  for (int i = 0; i < blockVisible.length; i++) {
    blockVisible[i] = true;
  }
  for (int i = 0; i < enemy.length; i++) {
    enemy[i][4] = 1;
  }

  bgX2 = 910;

  for (int i = 0; i < blocks.length; i++) {
    for (int n = 0; n < 6; n++) {
      rBlocks[i][n] = blocks[i][n];
    }
  }
}
